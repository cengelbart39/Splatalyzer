//
//  SubBombRobot.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SubBombRobot: SubParametable {
    let blastParam: BlastParameter
    let moveParam: MoveParameter
    let subWeaponSetting: SubWeaponSetting
    let weaponParam: WeaponParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case blastParam = "BlastParam"
        case moveParam = "MoveParam"
        case subWeaponSetting = "SubWeaponSetting"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    struct BlastParameter: Codable {
        let type: String
        let crossPaintCheckLength: Double
        let crossPaintRadius: Double
        let distanceDamage: [DistanceDamage]
        let knockBackParam: KnockbackParameter
        let splashAroundParam: SplashAroundParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case splashAroundParam = "SplashAroundParam"
        }
    }
    
    struct MoveParameter: Codable {
        let type: String
        let beforeRotateFrame: Int
        let chaseAirAddSpeedXZPerFrame: Double
        let chaseAirMaxSpeedXZ: Double
        let chaseAirMaxSpeedY: Double
        let chaseBurstWaitFrame: Int
        let chaseFrame: Int
        let chaseGroundAddSpeedPerFrame: Double
        let chaseGroundMaxSpeed: Double
        let chasePitchDegree: Double
        let chaseRollDegree: Double
        let chaseYawDegree: Double
        let contactDashPanel: ContactDashPanel
        let contactJumpPanel: ContactJumpPanel
        let deathTargetApprouchDistance: Double
        let findApproachBurstWaitFrame: Int
        let findRotateFrame: Int
        let flyGravity: Double
        let flyHitWallPitchToPlane: Double
        let flyHitWallReboundResetFrame: Int
        let flyPositionAirResist: Double
        let flyRotateAirResist: Double
        let guideRadius: Double
        let noReceiveTargetBurstWaitFrame: Int
        let spawnRotatePitch: Double
        let spawnRotateRoll: Double
        let spawnSpeedY: Double
        let spawnSpeedYWorldMin: Double
        let spawnSpeedZSpecUp: HighMidLow
        let unfindBurstWaitFrame: Int
        let warningAnimRestFrame: Int
        let warningSERestFrame: Int
        
        enum CodingKeys: String, CodingKey {
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
        
        struct ContactDashPanel: Codable {
            let addSpeedPerImpact: Double
            
            enum CodingKeys: String, CodingKey {
                case addSpeedPerImpact = "AddSpeedPerImpact"
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
        let inkConsume: Double
        let inkRecoverStop: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case inkConsume = "InkConsume"
            case inkRecoverStop = "InkRecoverStop"
        }
    }
    
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        let xRate: Double
        let yMax: Double
        let yPlusRate: Double
        let zRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yMax = "YMax"
            case yPlusRate = "YPlusRate"
            case zRate = "ZRate"
        }
    }
}
