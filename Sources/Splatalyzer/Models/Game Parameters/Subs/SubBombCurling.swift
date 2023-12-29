//
//  SubBombCurling.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SubBombCurling: SubParametable {
    let blastParamMaxCharge: BlastParameter
    let blastParamMinCharge: BlastParameter
    let moveParam: MoveParameter
    let subWeaponSetting: SubWeaponSetting
    let weaponParam: WeaponParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case blastParamMaxCharge = "BlastParamMaxCharge"
        case blastParamMinCharge = "BlastParamMinCharge"
        case moveParam = "MoveParam"
        case subWeaponSetting = "SubWeaponSetting"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    struct BlastParameter: Codable {
        let type: String
        let crossPaintCheckLength: Double
        let crossPaintRadius: Double
        let damageAttackerPriority: Bool
        let distanceDamage: [DistanceDamage]
        let knockBackParam: AttackKnockbackParameter
        let paintRadius: Double
        let splashAroundParam: SplashAroundParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case damageAttackerPriority = "DamageAttackerPriority"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintRadius = "PaintRadius"
            case splashAroundParam = "SplashAroundParam"
        }
    }
    
    struct MoveParameter: Codable {
        let type: String
        let baseSpeedComeOverRate: Double
        let baseSpeedComeUnderRate: Double
        let baseSpeedMinCharge: Double
        let burstFrame: Int
        let burstTimingSpeedStartRestFrame: Int
        let burstTimingSpeedStopBias: Double
        let contactDashPanel: ContactDashPanel
        let contactJumpPanel: ContactJumpPanel
        let damageDirectHit: Int
        let damageDirectSpanSecond: Double
        let flyGravity: Double
        let flyPositionAirResist: Double
        let groundGravity: Double
        let groundPositionAirResist: Double
        let guideHitCollisionType: String
        let knockBackParam: AttackKnockbackParameter
        let modelRotateHitWall45Degree: Double
        let modelRotateReduceDegree: Double
        let paintBurstRadiusBias: Double
        let paintCheckHeight: Double
        let paintRadiusBias: Double
        let paintRadiusMaxCharge: Double
        let paintRadiusMinCharge: Double
        let spawnSpeedY: Double
        let spawnSpeedYMaxCharge: Double
        let spawnSpeedYWorldMin: Double
        let spawnSpeedZMaxCharge: Double
        let spawnSpeedZSpecUp: HighMidLow
        let warningAnimRestFrame: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case baseSpeedComeOverRate = "BaseSpeedComeOverRate"
            case baseSpeedComeUnderRate = "BaseSpeedComeUnderRate"
            case baseSpeedMinCharge = "BaseSpeedMinCharge"
            case burstFrame = "BurstFrame"
            case burstTimingSpeedStartRestFrame = "BurstTimingSpeedStartRestFrame"
            case burstTimingSpeedStopBias = "BurstTimingSpeedStopBias"
            case contactDashPanel = "ContactDashPanel"
            case contactJumpPanel = "ContactJumpPanel"
            case damageDirectHit = "DamageDirectHit"
            case damageDirectSpanSecond = "DamageDirectSpanSecond"
            case flyGravity = "FlyGravity"
            case flyPositionAirResist = "FlyPositionAirResist"
            case groundGravity = "GroundGravity"
            case groundPositionAirResist = "GroundPositionAirResist"
            case guideHitCollisionType = "GuideHitCollisionType"
            case knockBackParam = "KnockBackParam"
            case modelRotateHitWall45Degree = "ModelRotateHitWall45Degree"
            case modelRotateReduceDegree = "ModelRotateReduceDegree"
            case paintBurstRadiusBias = "PaintBurstRadiusBias"
            case paintCheckHeight = "PaintCheckHeight"
            case paintRadiusBias = "PaintRadiusBias"
            case paintRadiusMaxCharge = "PaintRadiusMaxCharge"
            case paintRadiusMinCharge = "PaintRadiusMinCharge"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYMaxCharge = "SpawnSpeedYMaxCharge"
            case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
            case spawnSpeedZMaxCharge = "SpawnSpeedZMaxCharge"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
            case warningAnimRestFrame = "WarningAnimRestFrame"
        }
        
        struct ContactDashPanel: Codable {
            let addSpeedPerImpact: Double
            let addSpeedSequenceFrameRate: Double
            let impactDirectionSaveSpeedRate: Double
            
            enum CodingKeys: String, CodingKey {
                case addSpeedPerImpact = "AddSpeedPerImpact"
                case addSpeedSequenceFrameRate = "AddSpeedSequenceFrameRate"
                case impactDirectionSaveSpeedRate = "ImpactDirectionSaveSpeedRate"
            }
        }
        
        struct ContactJumpPanel: Codable {
            let addSpeedOneBoundRate: Double
            let addSpeedPerImpact: Double
            let maxBoundNum: Int
            
            enum CodingKeys: String, CodingKey {
                case addSpeedOneBoundRate = "AddSpeedOneBoundRate"
                case addSpeedPerImpact = "AddSpeedPerImpact"
                case maxBoundNum = "MaxBoundNum"
            }
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let chargeFrameBlastRate: Double
        let inkConsume: Double
        let inkRecoverStop: Int
        let inkRecoverStopMaxCharge: Int
        let maxChargeFrame: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case chargeFrameBlastRate = "ChargeFrameBlastRate"
            case inkConsume = "InkConsume"
            case inkRecoverStop = "InkRecoverStop"
            case inkRecoverStopMaxCharge = "InkRecoverStopMaxCharge"
            case maxChargeFrame = "MaxChargeFrame"
        }
    }
    
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        let xRate: Double
        let yMax: Double
        let yMinusRate: Double
        let yPlusRate: Double
        let zRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yMax = "YMax"
            case yMinusRate = "YMinusRate"
            case yPlusRate = "YPlusRate"
            case zRate = "ZRate"
        }
    }
}
