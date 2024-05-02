//
//  MiscStats.swift
//  
//
//  Created by Christopher Engelbart on 1/17/24.
//

import Foundation

/// Represents miscellaneous statistics that don't fall in other categories
public struct MiscStats: Codable, Equatable {
    /// Player's ink recovery rate in squid/octopus form
    public let squidInkRecovery: AbilityStat
    
    /// Player's ink recovery rate in humanoid form
    public let humanoidInkRecovery: AbilityStat
    
    /// The amount of time it takes the player to respawn with Quick Respawn
    public let quickRespawnTime: AbilityStat
    
    /// The amount of time it takes the player to respawn from being splatted with Respawn and having Quick Respawn
    public let quickRespawnTimeRP: AbilityStat
    
    /// The number of frames in which the player is vulnerable while Super Jumping
    public let superJumpGroundFrames: AbilityStat
    
    /// The total amount of time it takes for a Super Jump to occur
    public let superJumpTimeTotal: AbilityStat
    
    public init(squidInkRecovery: AbilityStat, humanoidInkRecovery: AbilityStat, quickRespawnTime: AbilityStat, quickRespawnTimeRP: AbilityStat, superJumpGroundFrames: AbilityStat, superJumpTimeTotal: AbilityStat) {
        self.squidInkRecovery = squidInkRecovery
        self.humanoidInkRecovery = humanoidInkRecovery
        self.quickRespawnTime = quickRespawnTime
        self.quickRespawnTimeRP = quickRespawnTimeRP
        self.superJumpGroundFrames = superJumpGroundFrames
        self.superJumpTimeTotal = superJumpTimeTotal
    }
    
    public init(ap: AbilityPoints, gearBuild: GearBuild, mainData: MainWeaponData, usingTacticooler: Bool) {
        
        self.squidInkRecovery = StatHelper.inkRecoverySeconds(
            effectKey: .inkRecoverFrmStealth,
            ap: ap,
            mainInfo: mainData
        )
        
        self.humanoidInkRecovery = StatHelper.inkRecoverySeconds(
            effectKey: .inkRecoverFrmStd,
            ap: ap,
            mainInfo: mainData
        )
        
        self.quickRespawnTime = StatHelper.respawnTime(
            ap: ap,
            gearBuild: gearBuild,
            mainInfo: mainData,
            splatedByRP: false,
            hasTacticooler: usingTacticooler
        )
        
        self.quickRespawnTimeRP = StatHelper.respawnTime(
            ap: ap,
            gearBuild: gearBuild,
            mainInfo: mainData,
            splatedByRP: true,
            hasTacticooler: usingTacticooler
        )
        
        self.superJumpGroundFrames = StatHelper.superJumpGroundFrames(
            ap: ap,
            mainInfo: mainData
        )
        
        self.superJumpTimeTotal = StatHelper.superJumpTimeTotal(
            ap: ap,
            mainInfo: mainData
        )
    }
}
