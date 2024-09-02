//
//  Autobomb.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Autobomb sub
/// weapon
///
/// See the JSON file `WeaponBombRobot.game__GameParameterTable.json` in Resources.
public struct Autobomb: SubWeaponable {
    
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SubParametable {
        public let blastParam: BlastParameter
        public let moveParam: MoveParameter
        public let subWeaponSetting: SubWeaponSetting
        public let weaponParam: WeaponParameter
        public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
        
        public enum CodingKeys: String, CodingKey {
            case blastParam = "BlastParam"
            case moveParam = "MoveParam"
            case subWeaponSetting = "SubWeaponSetting"
            case weaponParam = "WeaponParam"
            case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        }
        
        public struct BlastParameter: Parametable {
            public let type: String
            public let crossPaintCheckLength: Double
            public let crossPaintRadius: Double
            public let distanceDamage: [DistanceDamage]
            public let knockBackParam: KnockbackParameter
            public let splashAroundParam: SplashAroundParameter
            
            enum CodingKeys: String, CodingKey {
                case type = "$type"
                case crossPaintCheckLength = "CrossPaintCheckLength"
                case crossPaintRadius = "CrossPaintRadius"
                case distanceDamage = "DistanceDamage"
                case knockBackParam = "KnockBackParam"
                case splashAroundParam = "SplashAroundParam"
            }
        }
        
        public struct MoveParameter: Parametable {
            public let type: String
            public let beforeRotateFrame: Int
            public let chaseAirAddSpeedXZPerFrame: Double
            public let chaseAirMaxSpeedXZ: Double
            public let chaseAirMaxSpeedY: Double
            public let chaseBurstWaitFrame: Int
            public let chaseFrame: Int
            public let chaseGroundAddSpeedPerFrame: Double
            public let chaseGroundMaxSpeed: Double
            public let chasePitchDegree: Double
            public let chaseRollDegree: Double
            public let chaseYawDegree: Double
            public let contactDashPanel: ContactDashPanel
            public let contactJumpPanel: ContactJumpPanel
            public let deathTargetApprouchDistance: Double
            public let findApproachBurstWaitFrame: Int
            public let findRotateFrame: Int
            public let flyGravity: Double
            public let flyHitWallPitchToPlane: Double
            public let flyHitWallReboundResetFrame: Int
            public let flyPositionAirResist: Double
            public let flyRotateAirResist: Double
            public let guideRadius: Double
            public let noReceiveTargetBurstWaitFrame: Int
            public let spawnRotatePitch: Double
            public let spawnRotateRoll: Double
            public let spawnSpeedY: Double
            public let spawnSpeedYWorldMin: Double
            public let spawnSpeedZSpecUp: HighMidLow
            public let unfindBurstWaitFrame: Int
            public let warningAnimRestFrame: Int
            public let warningSERestFrame: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case beforeRotateFrame = "BeforeRotateFrame"
                case chaseAirAddSpeedXZPerFrame = "ChaseAirAddSpeedXZPerFrame"
                case chaseAirMaxSpeedXZ = "ChaseAirMaxSpeedXZ"
                case chaseAirMaxSpeedY = "ChaseAirMaxSpeedY"
                case chaseBurstWaitFrame = "ChaseBurstWaitFrame"
                case chaseFrame = "ChaseFrame"
                case chaseGroundAddSpeedPerFrame = "ChaseGroundAddSpeedPerFrame"
                case chaseGroundMaxSpeed = "ChaseGroundMaxSpeed"
                case chasePitchDegree = "ChasePitchDegree"
                case chaseRollDegree = "ChaseRollDegree"
                case chaseYawDegree = "ChaseYawDegree"
                case contactDashPanel = "ContactDashPanel"
                case contactJumpPanel = "ContactJumpPanel"
                case deathTargetApprouchDistance = "DeathTargetApprouchDistance"
                case findApproachBurstWaitFrame = "FindApproachBurstWaitFrame"
                case findRotateFrame = "FindRotateFrame"
                case flyGravity = "FlyGravity"
                case flyHitWallPitchToPlane = "FlyHitWallPitchToPlane"
                case flyHitWallReboundResetFrame = "FlyHitWallReboundResetFrame"
                case flyPositionAirResist = "FlyPositionAirResist"
                case flyRotateAirResist = "FlyRotateAirResist"
                case guideRadius = "GuideRadius"
                case noReceiveTargetBurstWaitFrame = "NoReceiveTargetBurstWaitFrame"
                case spawnRotatePitch = "SpawnRotatePitch"
                case spawnRotateRoll = "SpawnRotateRoll"
                case spawnSpeedY = "SpawnSpeedY"
                case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
                case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
                case unfindBurstWaitFrame = "UnfindBurstWaitFrame"
                case warningAnimRestFrame = "WarningAnimRestFrame"
                case warningSERestFrame = "WarningSERestFrame"
            }
            
            public struct ContactDashPanel: Parametable {
                public let addSpeedPerImpact: Double
                
                public enum CodingKeys: String, CodingKey {
                    case addSpeedPerImpact = "AddSpeedPerImpact"
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
            public let inkConsume: Double
            public let inkRecoverStop: Int
            
            enum CodingKeys: String, CodingKey {
                case type = "$type"
                case inkConsume = "InkConsume"
                case inkRecoverStop = "InkRecoverStop"
            }
        }
        
        public struct SpawnBulletAdditionMovePlayerParameter: Parametable {
            public let type: String
            public let xRate: Double
            public let yMax: Double
            public let yPlusRate: Double
            public let zRate: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case xRate = "XRate"
                case yMax = "YMax"
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
