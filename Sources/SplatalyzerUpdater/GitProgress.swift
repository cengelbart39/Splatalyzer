//
//  GitProgress.swift
//  SplatalyzerUpdater
//
//  Created by Christopher Engelbart on 6/13/26.
//

import Foundation

actor GitProgress {
    var currentStage: GitStage? = nil
    
    func update(lines: [String]) {
        for line in lines {
            if let stage = GitStage.detect(from: line) {
                if stage != currentStage {
                    if let previous = currentStage {
                        print("\r\(previous.rawValue)")
                    }
                    currentStage = stage
                }
            }

            print("\r\(line)", terminator: "")
            fflush(stdout)
        }
    }
}

enum GitStage: String, CaseIterable {
    case enumeratingObjects = "remote: Enumerating objects"
    case countingObjects = "remote: Counting objects"
    case compressingObjects = "remote: Compressing objects"
    case receivingObjects = "Receiving objects"
    case resolvingDeltas = "Resolving deltas"
    case fromRepo = "From https://github.com"
    case fetchHead = " * branch"
    case fetchMain = " * [new branch]"
    
    static func detect(from line: String) -> GitStage? {
        return allCases.first { line.hasPrefix($0.rawValue) }
    }
}
