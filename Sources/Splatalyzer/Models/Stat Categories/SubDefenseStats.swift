//
//  SubDefenseStats.swift
//
//
//  Created by Christopher Engelbart on 1/17/24.
//

import Foundation

/// Represents statistics about player defense to certain sub weapons
public struct SubDefenseStats: Codable, Equatable {
    /// Effect of Toxic Mist Movement Reduction
    public let toxicMistMovementReduction: AbilityStat
    
    /// Effect on Point Sensor Tracking Time
    public let pointSensorMarkedSeconds: AbilityStat
    
    /// Effect on Ink Mine tracking time
    public let inkMineMarkedSeconds: AbilityStat
    
    /// Effect on Angle Shooter tracking time
    public let angleShooterMarkedSeconds: AbilityStat
    
    public init(toxicMistMovementReduction: AbilityStat, pointSensorMarkedSeconds: AbilityStat, inkMineMarkedSeconds: AbilityStat, angleShooterMarkedSeconds: AbilityStat) {
        self.toxicMistMovementReduction = toxicMistMovementReduction
        self.pointSensorMarkedSeconds = pointSensorMarkedSeconds
        self.inkMineMarkedSeconds = inkMineMarkedSeconds
        self.angleShooterMarkedSeconds = angleShooterMarkedSeconds
    }
    
    public init(ap: AbilityPoints, values: AbilityValues, mainData: MainWeaponData, allSubData: [SubWeapon : SubWeaponData]) {
        
        self.toxicMistMovementReduction = StatHelper.toxicMistMovementReduction(ap: ap, values: values, mainInfo: mainData)
        
        self.pointSensorMarkedSeconds = StatHelper.subMarkedSeconds(ap: ap, values: values, mainInfo: mainData, subInfo: allSubData[.pointSensor]!)
        
        self.inkMineMarkedSeconds = StatHelper.inkMineMarkedSeconds(ap: ap, values: values, mainInfo: mainData, inkMine: allSubData[.inkMine]!)

        
        self.angleShooterMarkedSeconds = StatHelper.subMarkedSeconds(ap: ap, values: values, mainInfo: mainData, subInfo: allSubData[.angleShooter]!)

    }
}
