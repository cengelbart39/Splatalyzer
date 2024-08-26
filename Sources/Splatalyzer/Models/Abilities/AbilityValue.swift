//
//  AbilityValues.swift
//
//
//  Created by Christopher Engelbart on 1/3/24.
//

import Foundation

public enum AbilityValue: CaseIterable, Codable, Equatable, Sendable {
    case consumeRtMain
    
    case consumeRtSubLv0
    case consumeRtSubLv1
    case consumeRtSubLv2
    case consumeRtSubLv3
    case consumeRtSubLv4
    
    case damageRtBombH
    case damageRtBombL
    case damageRtLineMarker
    case damageRtShield
    case damageRtSprinkler
    
    case dyingAroundFrm
    case dyingChaseFrm
    
    case increaseRtSpecial
    
    case inkRecoverFrmStd
    case inkRecoverFrmStealth
    
    case markingTimeRt
    case markingTimeRtTrap
    
    case moveDownRtPoisonMist
    
    case moveVelRtShot
    case moveVelHuman
    case moveVelHumanFast
    case moveVelHumanSlow
    case moveVelStealth
    case moveVelStealthFast
    case moveVelStealthSlow
    
    case opInkArmorHP
    case opInkDamageLmt
    case opInkDamagePerFrame
    case opInkJumpVel
    case opInkMoveVel
    case opInkMoveVelShot
    case opInkMoveVelShotK
    
    case overwriteConsumeRtMain
    case overwriteMoveVelRtShot
    
    case somersaultMoveVelKd
    case specialGaugeRtRestart
    case superJumpChargeFrm
    case superJumpMoveFrm
    case wallJumpChargeFrm
    case reduceJumpSwerveRate
    
    // Values below here are 0
    // They are overwritten by
    // a main/sub/special weapon
    
    case markingFrameSubSpec
    case subSpecUpParam
    case subVelocity
    case subFirstPhaseDuration
    case subSecondPhaseDuration
    case subMarkingTimeInSeconds
    case subMarkingRadius
    case subExplosionRadius
    case subHp
    
    case specialDurationFrame
    case specialDamageDistance
    case specialPaintRadius
    case specialFieldHp
    case specialDeviceHp
    case specialHookInkConsumption
    case specialInkConsumptionPerSecond
    case specialReticleRadius
    case specialThrowDistance
    case specialMoveSpeed
    case specialAutoChargeRate
    case specialMaxRadius
    case specialRadiusMax
    case specialRadiusMin
    case specialPowerUpDuration
    
    public var rawValue: HighMidLow {
        switch self {
        case .consumeRtMain:
            return HighMidLow(0.55, 0.775, 1)
        case .consumeRtSubLv0:
            return HighMidLow(0.8, 0.9, 1)
        case .consumeRtSubLv1:
            return HighMidLow(0.7, 0.85, 1)
        case .consumeRtSubLv2:
            return HighMidLow(0.65, 0.825, 1)
        case .consumeRtSubLv3:
            return HighMidLow(0.6, 0.8, 1)
        case .consumeRtSubLv4:
            return HighMidLow(0.71111, 0.85555, 1)
        case .damageRtBombH:
            return HighMidLow(0.5, 0.75, 1)
        case .damageRtBombL:
            return HighMidLow(0.6, 0.75, 1)
        case .damageRtLineMarker:
            return HighMidLow(0.5, 0.75, 1)
        case .damageRtShield:
            return HighMidLow(0.5, 0.75, 1)
        case .damageRtSprinkler:
            return HighMidLow(0.5, 0.75, 1)
        case .dyingAroundFrm:
            return HighMidLow(30, 60, 90)
        case .dyingChaseFrm:
            return HighMidLow(90, 180, 270)
        case .increaseRtSpecial:
            return HighMidLow(1.3, 1.15, 1)
        case .inkRecoverFrmStd:
            return HighMidLow(220, 410, 600)
        case .inkRecoverFrmStealth:
            return HighMidLow(117, 148.5, 180)
        case .markingTimeRt:
            return HighMidLow(0.1, 0.43, 1)
        case .markingTimeRtTrap:
            return HighMidLow(0.1, 0.55, 1)
        case .moveDownRtPoisonMist:
            return HighMidLow(0.5, 0.75, 1)
        case .moveVelRtShot:
            return HighMidLow(1.25, 1.125, 1)
        case .moveVelHuman:
            return HighMidLow(0.144, 0.12, 0.096)
        case .moveVelHumanFast:
            return HighMidLow(0.144, 0.124, 0.104)
        case .moveVelHumanSlow:
            return HighMidLow(0.144, 0.116, 0.088)
        case .moveVelStealth:
            return HighMidLow(0.24, 0.216, 0.192)
        case .moveVelStealthFast:
            return HighMidLow(0.24, 0.2208, 0.2016)
        case .moveVelStealthSlow:
            return HighMidLow(0.24, 0.216, 0.1728)
        case .opInkArmorHP:
            return HighMidLow(39, 26, 0)
        case .opInkDamageLmt:
            return HighMidLow(0.2, 0.3, 0.4)
        case .opInkDamagePerFrame:
            return HighMidLow(0.0015, 0.0022, 0.003)
        case .opInkJumpVel:
            return HighMidLow(0.11, 0.098, 0.08)
        case .opInkMoveVel:
            return HighMidLow(0.0768, 0.0557, 0.024)
        case .opInkMoveVelShot:
            return HighMidLow(0.042, 0.033, 0.012)
        case .opInkMoveVelShotK:
            return HighMidLow(1, 0.75, 0.5)
        case .overwriteConsumeRtMain:
            return HighMidLow(-1, -1, -1)
        case .overwriteMoveVelRtShot:
            return HighMidLow(-1, -1, -1)
        case .somersaultMoveVelKd:
            return HighMidLow(1, 0.925, 0.85)
        case .specialGaugeRtRestart:
            return HighMidLow(1, 0.8, 0.5)
        case .superJumpChargeFrm:
            return HighMidLow(20, 35, 80)
        case .superJumpMoveFrm:
            return HighMidLow(96.6, 132.3, 138)
        case .wallJumpChargeFrm:
            return HighMidLow(5, 18, 45)
        case .reduceJumpSwerveRate:
            return HighMidLow(1, 0.75, 0)
        default:
            return HighMidLow()
        }
    }
    
    /// Fetch the associated Sub Consume Level ``AbilityValue`` for
    /// a specified level.
    ///
    /// ``AbilityValue`` contains five sub consume levels:
    /// - `.consumeRtSubLv0`
    /// - `.consumeRtSubLv1`
    /// - `.consumeRtSubLv2`
    /// - `.consumeRtSubLv3`
    /// - `.consumeRtSubLv4`
    ///
    /// Based on `lvl` it fetches the appropriate case.
    ///
    /// - Parameter lvl: The consumption level
    /// - Returns: The appropriate consumption level. Expects 0 to 4, but
    /// any other values overflow to `.consumeRtSubLv4`.
    static func getSubConsumeLevel(for lvl: Int) -> AbilityValue {
        if lvl == 0 {
            return .consumeRtSubLv0
            
        } else if lvl == 1 {
            return .consumeRtSubLv1
            
        } else if lvl == 2 {
            return .consumeRtSubLv2
            
        } else if lvl == 3 {
            return .consumeRtSubLv3
            
        } else {
            return .consumeRtSubLv4
        }
    }
    
    /// Fetch the associated Human Move Velocity ``AbilityValue`` for
    /// a specified ``WeaponSpeedType``.
    ///
    /// ``AbilityValue`` contains three human move velocities:
    /// - `.moveVelHumanSlow` (Slow)
    /// - `.moveVelHuman` (Normal)
    /// - `.moveVelHumanFast` (Fast)
    ///
    /// Based on `lvl` it fetches the appropriate case.
    ///
    /// - Parameter speedType: The weapon speed type
    /// - Returns: The appropriate human move velocity.
    static func getMoveVelHumanLvl(for speedType: WeaponSpeedType) -> AbilityValue {
        switch speedType {
        case .slow:
            return .moveVelHumanSlow
        case .mid:
            return .moveVelHuman
        case .fast:
            return .moveVelHumanFast
        }
    }
    
    /// Fetch the associated Squid/Octopus Form Move Velocity
    /// ``AbilityValue`` for a specified ``WeaponSpeedType``.
    ///
    /// ``AbilityValue`` contains three squid/octopus  form move
    /// velocities:
    /// - `.moveVelStealthSlow` (Slow)
    /// - `.moveVelStealth` (Normal)
    /// - `.moveVelStealthFast` (Fast)
    ///
    /// Based on `lvl` it fetches the appropriate case.
    ///
    /// - Parameter speedType: The weapon speed type
    /// - Returns: The appropriate squid/octopus form move velocity.
    static func getMoveVelStealthLvl(for speedType: WeaponSpeedType) -> AbilityValue {
        switch speedType {
        case .slow:
            return .moveVelStealthSlow
        case .mid:
            return .moveVelStealth
        case .fast:
            return .moveVelStealthFast
        }
    }
}
