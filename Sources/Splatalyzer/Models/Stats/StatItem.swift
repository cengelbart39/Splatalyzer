//
//  StatItem.swift
//  Splatalyzer
//
//  Created by Christopher Engelbart on 7/14/26.
//

import Foundation

/// A list of every statistic within a gear build
public enum StatItem: String, CaseIterable, Codable, Equatable, Sendable {
    
    // MARK: - Main Stats
    case mainShotSpreadAir
    case mainShotAutofireSpreadAir
    
    // MARK: - Sub Stats
    case subInkConsumptionPercentage
    case subVelocity
    case subFirstPhaseDuration
    case subSecondPhaseDuration
    case subMarkingTimeInSeconds
    case subMarkingRadius
    case subExplosionRadius
    case subHp
    case subQuickSuperJumpBoost
    
    // MARK: - Special Stats
    case specialPoint
    case specialLost
    case specialLostByRP
    case specialDuration
    case specialDamageDistance
    case specialPaintRadius
    case specialFieldHp
    case specialDeviceHp
    case specialHookInkConsumption
    case specialHookInkConsumptionPerSecond
    case specialReticleRadius
    case specialThrowDistance
    case specialMoveSpeed
    case specialAutoChargeRate
    case specialMaxRadius
    case specialRadiusMax
    case specialRadiusMin
    case specialPowerUpDuration
    
    // MARK: - Sub Defense Stats
    case toxicMistMovementReduction
    case pointSensorMarkedSeconds
    case inkMineMarkedSeconds
    case angleShooterMarkedSeconds
    
    // MARK: - Movement Stats
    case swimSpeed
    case swimSpeedWithRainmaker
    case runSpeed
    case shootingRunSpeed
    case shootingRunSpeedCharging
    case shootingRunSpeedFullCharge
    case shootingRunSpeedSecondary
    case squidSurgeChargeFrames
    case runSpeedInEnemyInk
    case framesBeforeDamageInEnemyInk
    case damageInEnemyInkPerSecond
    case enemyInkDamageLimit
    
    // MARK: - Misc Stats
    case squidInkRecovery
    case humanoidInkRecovery
    case quickRespawnTime
    case quickRespawnTimeRP
    case superJumpGroundFrames
    case superJumpTimeTotal
    
    // MARK: - Computed Properties
    /// The associated unit of the statistic
    public var unit: StatUnit {
        switch self {
        case .specialPoint:
            return .points
            
        case .specialLost, .specialLostByRP, .subInkConsumptionPercentage, .toxicMistMovementReduction, .specialHookInkConsumption:
            return .percentage
            
        case .squidInkRecovery, .humanoidInkRecovery, .quickRespawnTime, .quickRespawnTimeRP, .superJumpTimeTotal, .angleShooterMarkedSeconds, .inkMineMarkedSeconds, .pointSensorMarkedSeconds, .subFirstPhaseDuration, .subSecondPhaseDuration, .subMarkingTimeInSeconds, .specialDuration, .specialHookInkConsumptionPerSecond, .specialPowerUpDuration:
            return .seconds
            
        case .runSpeed, .shootingRunSpeed, .shootingRunSpeedCharging, .shootingRunSpeedSecondary, .shootingRunSpeedFullCharge, .swimSpeed, .swimSpeedWithRainmaker, .runSpeedInEnemyInk, .subVelocity:
            return .unitsPerFrame
            
        case .damageInEnemyInkPerSecond, .enemyInkDamageLimit, .subHp, .specialFieldHp, .specialDeviceHp:
            return .hp
            
        case .framesBeforeDamageInEnemyInk, .superJumpGroundFrames, .squidSurgeChargeFrames:
            return .frames
            
        case .mainShotSpreadAir, .mainShotAutofireSpreadAir:
            return .degrees
            
        case .subQuickSuperJumpBoost:
            return .ap
            
        case .subMarkingRadius, .subExplosionRadius, .specialPaintRadius, .specialReticleRadius, .specialThrowDistance, .specialMoveSpeed, .specialMaxRadius, .specialRadiusMax, .specialRadiusMin:
            return .radius
            
        case .specialDamageDistance:
            return .damage
            
        case .specialAutoChargeRate:
            return .none
        }
    }
    
    /// The ability/abilities that effect the statistic
    public var modifiedBy: [Ability] {
        switch self {
        case .specialPoint:
            return [.specialChargeUp]
            
        case .specialLost, .specialLostByRP:
            return [.specialSaver, .respawnPunisher]
            
        case .subInkConsumptionPercentage:
            return [.inkSaverSub]
            
        case .squidInkRecovery, .humanoidInkRecovery:
            return [.inkRecoveryUp]
            
        case .runSpeed, .shootingRunSpeed, .shootingRunSpeedCharging, .shootingRunSpeedSecondary, .shootingRunSpeedFullCharge:
            return [.runSpeedUp]
            
        case .swimSpeed, .swimSpeedWithRainmaker:
            return [.swimSpeedUp, .ninjaSquid]
            
        case .runSpeedInEnemyInk, .damageInEnemyInkPerSecond, .enemyInkDamageLimit, .framesBeforeDamageInEnemyInk:
            return [.inkResistanceUp]
            
        case .quickRespawnTime, .quickRespawnTimeRP:
            return [.quickRespawn, .respawnPunisher]
            
        case .superJumpGroundFrames:
            return [.quickSuperJump]
            
        case .superJumpTimeTotal:
            return [.quickSuperJump, .stealthJump]
            
        case .mainShotSpreadAir, .mainShotAutofireSpreadAir, .squidSurgeChargeFrames:
            return [.intensifyAction]
            
        case .angleShooterMarkedSeconds, .pointSensorMarkedSeconds, .inkMineMarkedSeconds, .toxicMistMovementReduction:
            return [.subResistanceUp]
            
        case .subQuickSuperJumpBoost, .subVelocity, .subFirstPhaseDuration, .subSecondPhaseDuration, .subMarkingTimeInSeconds, .subMarkingRadius, .subExplosionRadius, .subHp:
            return [.subPowerUp]
            
        case .specialDuration, .specialDamageDistance, .specialPaintRadius, .specialFieldHp, .specialDeviceHp, .specialHookInkConsumption, .specialHookInkConsumptionPerSecond, .specialReticleRadius, .specialThrowDistance, .specialMoveSpeed, .specialAutoChargeRate, .specialMaxRadius, .specialRadiusMax, .specialRadiusMin, .specialPowerUpDuration:
            return [.specialPowerUp]
        }
    }
}
