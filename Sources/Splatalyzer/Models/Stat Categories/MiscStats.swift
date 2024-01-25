//
//  MiscStats.swift
//  
//
//  Created by Christopher Engelbart on 1/17/24.
//

import Foundation

public struct MiscStats {
    public let squidInkRecovery: AbilityStat
    public let humanoidInkRecovery: AbilityStat
    public let quickRespawnTime: AbilityStat
    public let quickRespawnTimeRP: AbilityStat
    public let superJumpGroundFrames: AbilityStat
    public let superJumpTimeTotal: AbilityStat
}

extension BuildStats {
    public func miscStats() -> MiscStats {
        return MiscStats(
            squidInkRecovery: self.squidInkRecoverySeconds,
            humanoidInkRecovery: self.humanoidInkRecoverySeconds,
            quickRespawnTime: self.quickRespawnTime,
            quickRespawnTimeRP: self.quickRespawnTimeSplattedByRP,
            superJumpGroundFrames: self.superJumpGroundFrames,
            superJumpTimeTotal: self.superJumpTimeTotal)
    }
}
