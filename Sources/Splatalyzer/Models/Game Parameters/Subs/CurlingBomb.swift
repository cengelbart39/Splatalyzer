//
//  CurlingBomb.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Curling Bomb sub
/// weapon
///
/// See the JSON file `WeaponBombCurling.game__GameParameterTable.json` in Resources.
public struct CurlingBomb: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SubParametable {
        public let blastParamMaxCharge: BlastParameter
        public let blastParamMinCharge: BlastParameter
        public let moveParam: MoveParameter
        public let subWeaponSetting: SubWeaponSetting
        public let weaponParam: WeaponParameter
        public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
        
        public enum CodingKeys: String, CodingKey {
            case blastParamMaxCharge = "BlastParamMaxCharge"
            case blastParamMinCharge = "BlastParamMinCharge"
            case moveParam = "MoveParam"
            case subWeaponSetting = "SubWeaponSetting"
            case weaponParam = "WeaponParam"
            case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        }
        
        public struct BlastParameter: Parametable {
            public let type: String
            public let crossPaintCheckLength: Double
            public let crossPaintRadius: Double
            public let damageAttackerPriority: Bool
            public let distanceDamage: [DistanceDamage]
            public let knockBackParam: KnockbackParameter
            public let paintRadius: Double
            public let splashAroundParam: SplashAroundParameter
            
            public enum CodingKeys: String, CodingKey {
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
        
        public struct MoveParameter: Parametable {
            public let type: String
            public let baseSpeedComeOverRate: Double
            public let baseSpeedComeUnderRate: Double
            public let baseSpeedMinCharge: Double
            public let burstFrame: Int
            public let burstTimingSpeedStartRestFrame: Int
            public let burstTimingSpeedStopBias: Double
            public let contactDashPanel: ContactDashPanel
            public let contactJumpPanel: ContactJumpPanel
            public let damageDirectHit: Int
            public let damageDirectSpanSecond: Double
            public let flyGravity: Double
            public let flyPositionAirResist: Double
            public let groundGravity: Double
            public let groundPositionAirResist: Double
            public let guideHitCollisionType: String
            public let knockBackParam: KnockbackParameter
            public let modelRotateHitWall45Degree: Double
            public let modelRotateReduceDegree: Double
            public let paintBurstRadiusBias: Double
            public let paintCheckHeight: Double
            public let paintRadiusBias: Double
            public let paintRadiusMaxCharge: Double
            public let paintRadiusMinCharge: Double
            public let spawnSpeedY: Double
            public let spawnSpeedYMaxCharge: Double
            public let spawnSpeedYWorldMin: Double
            public let spawnSpeedZMaxCharge: Double
            public let spawnSpeedZSpecUp: HighMidLow
            public let warningAnimRestFrame: Int
            
            public enum CodingKeys: String, CodingKey {
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
            
            public struct ContactDashPanel: Parametable {
                public let addSpeedPerImpact: Double
                public let addSpeedSequenceFrameRate: Double
                public let impactDirectionSaveSpeedRate: Double
                
                public enum CodingKeys: String, CodingKey {
                    case addSpeedPerImpact = "AddSpeedPerImpact"
                    case addSpeedSequenceFrameRate = "AddSpeedSequenceFrameRate"
                    case impactDirectionSaveSpeedRate = "ImpactDirectionSaveSpeedRate"
                }
            }
            
            public struct ContactJumpPanel: Parametable {
                public let addSpeedOneBoundRate: Double
                public let addSpeedPerImpact: Double
                public let maxBoundNum: Int
                
                public enum CodingKeys: String, CodingKey {
                    case addSpeedOneBoundRate = "AddSpeedOneBoundRate"
                    case addSpeedPerImpact = "AddSpeedPerImpact"
                    case maxBoundNum = "MaxBoundNum"
                }
            }
        }
        
        public struct WeaponParameter: Parametable {
            public let type: String
            public let chargeFrameBlastRate: Double
            public let inkConsume: Double
            public let inkRecoverStop: Int
            public let inkRecoverStopMaxCharge: Int
            public let maxChargeFrame: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case chargeFrameBlastRate = "ChargeFrameBlastRate"
                case inkConsume = "InkConsume"
                case inkRecoverStop = "InkRecoverStop"
                case inkRecoverStopMaxCharge = "InkRecoverStopMaxCharge"
                case maxChargeFrame = "MaxChargeFrame"
            }
        }
        
        public struct SpawnBulletAdditionMovePlayerParameter: Parametable {
            public let type: String
            public let xRate: Double
            public let yMax: Double
            public let yMinusRate: Double
            public let yPlusRate: Double
            public let zRate: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case xRate = "XRate"
                case yMax = "YMax"
                case yMinusRate = "YMinusRate"
                case yPlusRate = "YPlusRate"
                case zRate = "ZRate"
            }
        }
        
        public func getOverwrites(_ playerInfo: Player? = nil) -> SubOverwrites {
            return SubOverwrites(
                spawnSpeedZSpecUp: self.moveParam.spawnSpeedZSpecUp,
                periodFirst: nil,
                periodSecond: nil,
                markingFrameSubSpec: nil,
                sensorRadius: nil,
                explosionRadius: nil,
                maxHp: nil,
                subSpecUpParam: nil)
        }
    }
}
