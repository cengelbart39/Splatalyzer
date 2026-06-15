//
//  SplatalyzerUpdater.swift
//  SplatalyzerUpdater
//
//  Created by Christopher Engelbart on 6/13/26.
//

import ArgumentParser
import Foundation

@main
struct SplatalyzerUpdater: AsyncParsableCommand {
    func run() async throws {
        let gitClient = GitClient()
        
        print("Step 1: Clone splat3 (Game Data)")
        let gameData = try await gitClient.downloadGameData()
        print("Cloned splat3 at \(gameData.baseDir.path())")
    
        print("\nStep 2: Copy Game Data to Splatalyzer")
        let fileManager = FileManager.default
        
        let splatalyzerResources = GameData(
            baseDir: URL(filePath: fileManager.currentDirectoryPath),
            weaponInfoMainPath: Splatalyzer.weaponInfoMainPath,
            playerParamsPath: Splatalyzer.playerParamsPath,
            weaponDataPath: Splatalyzer.weaponDataPath
        )
        
        try fileManager.replaceItem(
            at: splatalyzerResources.weaponInfoMain,
            withItemAt: gameData.weaponInfoMain,
            backupItemName: nil,
            resultingItemURL: nil)
        print("Copied WeaponInfoMain.json.")
        
        try fileManager.replaceItem(
            at: splatalyzerResources.playerParams,
            withItemAt: gameData.playerParams,
            backupItemName: nil,
            resultingItemURL: nil)
        print("Copied SplPlayer.game__GameParameterTable.json.")
        
        try fileManager.replaceItem(
            at: splatalyzerResources.weaponData,
            withItemAt: gameData.weaponData,
            backupItemName: nil,
            resultingItemURL: nil)
        print("Copied all weapon data.")
        
        print("All files copied to Splatalyzer at \(splatalyzerResources.baseDir.path())")
    }
}
