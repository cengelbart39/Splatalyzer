//
//  File.swift
//  SplatalyzerUpdater
//
//  Created by Christopher Engelbart on 6/14/26.
//

import Foundation

struct GameData: Sendable {
    let baseDir: URL
    let weaponInfoMain: URL
    let playerParams: URL
    let weaponData: URL
    
    init(baseDir: URL, weaponInfoMainPath: String, playerParamsPath: String, weaponDataPath: String) {
        self.baseDir = baseDir
        self.weaponInfoMain = baseDir.appending(path: weaponInfoMainPath)
        self.playerParams = baseDir.appending(path: playerParamsPath)
        self.weaponData = baseDir.appending(path: weaponDataPath)
    }
}
