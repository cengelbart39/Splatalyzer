//
//  GitClient.swift
//  SplatalyzerUpdater
//
//  Created by Christopher Engelbart on 6/13/26.
//

import Foundation

class GitClient {
    private let fileManager = FileManager.default
    
    private func getLatestVersion() async throws -> String {
        let url = URL(string: Splat3.latestVersionUrl)!
        let (data, _) = try await URLSession.shared.data(from: url)
        let strVer = String(data: data, encoding: .utf8)!
        return strVer
    }
    
    private func createWorkingDirectory(named name: String) throws -> URL {
        let workingDirectory = self.fileManager.temporaryDirectory.appending(path: name)
        
        if self.fileManager.fileExists(atPath: workingDirectory.path()) {
            try self.fileManager.removeItem(at: workingDirectory)
        }
        
        try self.fileManager.createDirectory(at: workingDirectory, withIntermediateDirectories: true)
        
        return workingDirectory
    }

    func downloadGameData() async throws -> GameData {
        let version = try await getLatestVersion()
        print("Latest game version is \(version).")
        
        let weaponInfoMain = Splat3.weaponInfoMainPath(for: version)
        let playerParams = Splat3.playerParamsPath(for: version)
        let weaponJsonFolder = Splat3.weaponJsonFolderPath(for: version)
        
        let gameDataUrl = try sparseCheckout(
            [weaponInfoMain, playerParams, weaponJsonFolder],
            from: Splat3.repoUrl, to: "splat3"
        )
        
        let gameData = GameData(
            baseDir: gameDataUrl,
            weaponInfoMainPath: weaponInfoMain,
            playerParamsPath: playerParams,
            weaponDataPath: weaponJsonFolder
        )

        let cleanCount = try self.cleanWeaponData(in: gameData.weaponData)
        print("Removed \(cleanCount) extraneous weapon files.")
        
        return gameData
    }
    
    private func cleanWeaponData(in directory: URL) throws -> Int {
        let watchWords = ["Mission", "Msn", "Hero", "Coop", "Rival", "BigCoop", "coop"]
            
        let weaponFiles = try self.fileManager.contentsOfDirectory(at: directory, includingPropertiesForKeys: nil)

        var deleteCount = 0
        
        for file in weaponFiles {
            let fileName = file.lastPathComponent
            
            if watchWords.contains(where: fileName.contains) {
                try self.fileManager.removeItem(at: file)
                deleteCount += 1
            }
        }
        
        return deleteCount
    }
    
    private func sparseCheckout(_ paths: [String], from repo: String, to dirName: String) throws -> URL {
        let repoDir = self.fileManager.temporaryDirectory.appending(path: dirName)
        
        if self.fileManager.fileExists(atPath: repoDir.path()) {
            try self.fileManager.removeItem(at: repoDir)
        }
        
        print("Shallow clone repoistory...")
        try runCommand(["git", "clone", "--no-checkout", "--depth", "1", "--progress"],
                       streamPull: true)
        print("\nShallow clone complete.")
                
        try runCommand(["git", "sparse-checkout", "init", "--no-cone"],
                       workingDirectory: repoDir)
        print("Enable sparse checkout.")
        
        try runCommand(["git", "sparse-checkout", "set"] + paths,
                       workingDirectory: repoDir)
        print("Set checkout paths.")
        
        try runCommand(["git", "checkout", "--progress"],
                       workingDirectory: repoDir,
                       streamStdout: true)
        
        print("Sparse checkout complete.")
        
        return repoDir
    }
    
    @discardableResult
    private func runCommand(
        _ command: [String],
        workingDirectory: URL = FileManager.default.temporaryDirectory,
        streamStdout: Bool = false,
        streamPull: Bool = false
    ) throws -> String {
        let process = Process()
        let stdoutPipe = Pipe(), stderrPipe = Pipe()
                
        process.executableURL = URL(filePath: "/usr/bin/env")
        process.arguments = command
        process.currentDirectoryURL = workingDirectory
        
        process.standardOutput = stdoutPipe
        process.standardError = stderrPipe
        
        if streamStdout {
            stdoutPipe.fileHandleForReading.readabilityHandler = { handle in
                let data = handle.availableData
                guard !data.isEmpty else { return }
                if let output = String(data: data, encoding: .utf8) {
                    print(output, terminator: "")
                }
            }
        }
        
        if streamPull {
            let progress = GitProgress()
            
            stderrPipe.fileHandleForReading.readabilityHandler = { handle in
                let data = handle.availableData
                guard !data.isEmpty else { return }
                if let output = String(data: data, encoding: .utf8) {
                    let lines = output.components(separatedBy: CharacterSet(charactersIn: "\r\n"))
                        .filter { !$0.isEmpty }
                    
                    Task {
                        await progress.update(lines: lines)
                    }
                }
            }
        }
        
        try process.run()
        process.waitUntilExit()
        
        stdoutPipe.fileHandleForReading.readabilityHandler = nil
        stderrPipe.fileHandleForReading.readabilityHandler = nil
        
        if process.terminationStatus != 0 {
            let errorData = stderrPipe.fileHandleForReading.readDataToEndOfFile()
            let errorStr = String(data: errorData, encoding: .utf8) ?? "Unknown Error"
            
            throw GitError.failed(
                command: command.joined(separator: " "),
                exitCode: process.terminationStatus,
                stdErr: errorStr.trimmingCharacters(in: .whitespacesAndNewlines)
            )
        }
        
        let outputData = stdoutPipe.fileHandleForReading.readDataToEndOfFile()
        return String(data: outputData, encoding: .utf8) ?? ""
    }
}
