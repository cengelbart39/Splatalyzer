//
//  File.swift
//  SplatalyzerUpdater
//
//  Created by Christopher Engelbart on 6/13/26.
//

import Foundation

struct Splat3: Sendable {
    static let repoUrl = "https://github.com/Leanny/splat3.git"
    
    static let latestVersionUrl = "https://raw.githubusercontent.com/Leanny/splat3/refs/heads/main/data/mush/latest"

    static func weaponInfoMainPath(for version: String) -> String {
        return "data/mush/\(version)/WeaponInfoMain.json"
    }
    
    static func playerParamsPath(for version: String) -> String {
        return "data/parameter/\(version)/misc/SplPlayer.game__GameParameterTable.json"
    }
    
    static func weaponJsonFolderPath(for version: String) -> String {
        return "data/parameter/\(version)/weapon"
    }
}

struct Splatalyzer: Sendable {
    static let repoUrl = "https://github.com/cengelbart39/Splatalyzer.git"
    static let weaponInfoMainPath = "Sources/Splatalyzer/Resources/json/WeaponInfoMain.json"
    static let playerParamsPath = "Sources/Splatalyzer/Resources/json/SplPlayer.game__GameParameterTable.json"
    static let weaponDataPath = "Sources/Splatalyzer/Resources/weapon-json"
}
