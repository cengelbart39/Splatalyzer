//
//  SpecialUltraShot.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SpecialUltraShot: Codable {
    let blastParam: BlastParameter
    let collisionParam: CollisionParameter
    let damageParam: DamageParameter
    let moveParam: MoveParameter
    let ultraShotMoveParma: UltraShotMoveParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    let weaponParam: WeaponParameter
    
    enum CodingKeys: String, CodingKey {
        case blastParam = "BlastParam"
        case collisionParam = "CollisionParam"
        case damageParam = "DamageParam"
        case moveParam = "MoveParam"
        case ultraShotMoveParma = "UltraShotMoveParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        case weaponParam = "spl__WeaponSpUltraShotParam"
    }
    
    struct BlastParameter: Codable {
        let type: String
        let distanceDamage: [DistanceDamage]
        let knockBackParam: AttackKnockbackParameter
        let paintRadius: Double
        let subSpecialSpecUpList: [SubSpecialSpecUpList]
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintRadius = "PaintRadius"
            case subSpecialSpecUpList = "SubSpecialSpecUpList"
        }
    }
    
    struct CollisionParameter: Codable {
        let type: String
        let changeFrameForField: Int
        let changeFrameForPlayer: Int
        let endRadiusForField: Double
        let endRadiusForPlayer: Double
        let initRadiusForField: Double
        let initRadiusForPlayer: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case changeFrameForField = "ChangeFrameForField"
            case changeFrameForPlayer = "ChangeFrameForPlayer"
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }
    
    struct DamageParameter: Codable {
        let type: String
        let directHitDamage: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case directHitDamage = "DirectHitDamage"
        }
    }
    
    struct MoveParameter: Codable {
        let type: String
        let brakeAirResist: Double
        let brakeGravity: Double
        let brakeToFreeStateFrame: Double
        let brakeToFreeVelocityXZ: Double
        let brakeToFreeVelocityY: Double
        let freeAirResist: Double
        let freeGravity: Double
        let goStraightStateEndMaxSpeed: Double
        let goStraightToBrakeStateFrame: Int
        let spawnSpeed: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case brakeAirResist = "BrakeAirResist"
            case brakeGravity = "BrakeGravity"
            case brakeToFreeStateFrame = "BrakeToFreeStateFrame"
            case brakeToFreeVelocityXZ = "BrakeToFreeVelocityXZ"
            case brakeToFreeVelocityY = "BrakeToFreeVelocityY"
            case freeAirResist = "FreeAirResist"
            case freeGravity = "FreeGravity"
            case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
            case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
            case spawnSpeed = "SpawnSpeed"
        }
    }
    
    struct UltraShotMoveParameter: Codable {
        let type: String
        let orbitalRadiusEnd: Double
        let orbitalRadiusTransitionFrame: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case orbitalRadiusEnd = "OrbitalRadiusEnd"
            case orbitalRadiusTransitionFrame = "OrbitalRadiusTransitionFrame"
        }
    }
    
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        let xRate: Double
        let yPlusRate: Double
        let zRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yPlusRate = "YPlusRate"
            case zRate = "ZRate"
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let ejectCartridgeAngularVel: XYZData
        let ejectCartridgeFadeOutFrame: Int
        let ejectCartridgeFrame: Int
        let ejectCartridgeInitSpeed: Double
        let ejectCartridgeLifeTimeFrame: Double
        let hideCartridgeBeforeEjectFrame: Int
        let holdAimFrame: Int
        let knockBackParam: KnockBackParam
        let moveSpeed: Double
        let moveSpeedInCharge: Double
        let repeatFrame: Int
        let shotDelayFrame: Int
        let specialDurationFrame: HighMidLow
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case ejectCartridgeAngularVel = "EjectCartridgeAngularVel"
            case ejectCartridgeFadeOutFrame = "EjectCartridgeFadeOutFrame"
            case ejectCartridgeFrame = "EjectCartridgeFrame"
            case ejectCartridgeInitSpeed = "EjectCartridgeInitSpeed"
            case ejectCartridgeLifeTimeFrame = "EjectCartridgeLifeTimeFrame"
            case hideCartridgeBeforeEjectFrame = "HideCartridgeBeforeEjectFrame"
            case holdAimFrame = "HoldAimFrame"
            case knockBackParam = "KnockBackParam"
            case moveSpeed = "MoveSpeed"
            case moveSpeedInCharge = "MoveSpeedInCharge"
            case repeatFrame = "RepeatFrame"
            case shotDelayFrame = "ShotDelayFrame"
            case specialDurationFrame = "SpecialDurationFrame"
        }
        
        struct KnockBackParam: Codable {
            let airBreakRt: Double
            let impactValue: Double
            let stickDownRt: Double
            
            enum CodingKeys: String, CodingKey {
                case airBreakRt = "AirBreakRt"
                case impactValue = "ImpactValue"
                case stickDownRt = "StickDownRt"
            }
        }
    }
}
