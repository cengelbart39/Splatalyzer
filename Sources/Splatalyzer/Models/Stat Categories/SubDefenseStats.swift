//
//  SubDefenseStats.swift
//
//
//  Created by Christopher Engelbart on 1/17/24.
//

import Foundation

public struct SubDefenseStats {
    public let toxicMistMovementReduction: AbilityStat
    public let pointSensorMarkedSeconds: AbilityStat
    public let inkMineMarkedSeconds: AbilityStat
    public let angleShooterMarkedSeconds: AbilityStat
}

extension BuildStats {
    public func subDefenseStats() -> SubDefenseStats {
        return SubDefenseStats(
            toxicMistMovementReduction: self.toxicMistMovementReduction,
            pointSensorMarkedSeconds: self.pointSensorMarkedSeconds,
            inkMineMarkedSeconds: self.inkMineMarkedSeconds,
            angleShooterMarkedSeconds: self.angleShooterMarkedSeconds)
    }
}
