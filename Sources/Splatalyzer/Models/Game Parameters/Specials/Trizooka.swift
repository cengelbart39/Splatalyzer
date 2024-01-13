//
//  Trizooka.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

public struct Trizooka: SpecialParametable {
    public let blastParam: BlastParameter
    public let collisionParam: CollisionParameter
    public let damageParam: DamageParameter
    public let moveParam: MoveParameter
    public let ultraShotMoveParma: UltraShotMoveParameter
    public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    public let weaponParam: WeaponParameter
    
    public enum CodingKeys: String, CodingKey {
        case blastParam = "BlastParam"
        case collisionParam = "CollisionParam"
        case damageParam = "DamageParam"
        case moveParam = "MoveParam"
        case ultraShotMoveParma = "UltraShotMoveParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        case weaponParam = "spl__WeaponSpUltraShotParam"
    }
    
    public struct BlastParameter: Codable {
        public let type: String
        public let distanceDamage: [DistanceDamage]
        public let knockBackParam: KnockbackParameter
        public let paintRadius: Double
        public let subSpecialSpecUpList: [SubSpecialSpecUpList]
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintRadius = "PaintRadius"
            case subSpecialSpecUpList = "SubSpecialSpecUpList"
        }
    }
    
    public struct CollisionParameter: Codable {
        public let type: String
        public let changeFrameForField: Int
        public let changeFrameForPlayer: Int
        public let endRadiusForField: Double
        public let endRadiusForPlayer: Double
        public let initRadiusForField: Double
        public let initRadiusForPlayer: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case changeFrameForField = "ChangeFrameForField"
            case changeFrameForPlayer = "ChangeFrameForPlayer"
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }
    
    public struct DamageParameter: Codable {
        public let type: String
        public let directHitDamage: Int
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case directHitDamage = "DirectHitDamage"
        }
    }
    
    public struct MoveParameter: Codable {
        public let type: String
        public let brakeAirResist: Double
        public let brakeGravity: Double
        public let brakeToFreeStateFrame: Double
        public let brakeToFreeVelocityXZ: Double
        public let brakeToFreeVelocityY: Double
        public let freeAirResist: Double
        public let freeGravity: Double
        public let goStraightStateEndMaxSpeed: Double
        public let goStraightToBrakeStateFrame: Int
        public let spawnSpeed: Double
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct UltraShotMoveParameter: Codable {
        public let type: String
        public let orbitalRadiusEnd: Double
        public let orbitalRadiusTransitionFrame: Int
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case orbitalRadiusEnd = "OrbitalRadiusEnd"
            case orbitalRadiusTransitionFrame = "OrbitalRadiusTransitionFrame"
        }
    }
    
    public struct SpawnBulletAdditionMovePlayerParameter: Codable {
        public let type: String
        public let xRate: Double
        public let yPlusRate: Double
        public let zRate: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yPlusRate = "YPlusRate"
            case zRate = "ZRate"
        }
    }
    
    public struct WeaponParameter: Codable {
        public let type: String
        public let ejectCartridgeAngularVel: XYZData
        public let ejectCartridgeFadeOutFrame: Int
        public let ejectCartridgeFrame: Int
        public let ejectCartridgeInitSpeed: Double
        public let ejectCartridgeLifeTimeFrame: Double
        public let hideCartridgeBeforeEjectFrame: Int
        public let holdAimFrame: Int
        public let knockBackParam: KnockBackParam
        public let moveSpeed: Double
        public let moveSpeedInCharge: Double
        public let repeatFrame: Int
        public let shotDelayFrame: Int
        public let specialDurationFrame: HighMidLow
        
        public enum CodingKeys: String, CodingKey {
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
        
        public struct KnockBackParam: Codable {
            public let airBreakRt: Double
            public let impactValue: Double
            public let stickDownRt: Double
            
            public enum CodingKeys: String, CodingKey {
                case airBreakRt = "AirBreakRt"
                case impactValue = "ImpactValue"
                case stickDownRt = "StickDownRt"
            }
        }
    }
    
    public func getOverwrites() -> SpecialOverwrites {
        return SpecialOverwrites(
            chargeRateAutoPerFrame: nil,
            crossPaintCheckLength: nil,
            crossPaintRadius: nil,
            distanceDamageDistanceRate: self.blastParam.subSpecialSpecUpList[safe: 1]?.value,
            inkConsumeHook: nil,
            inkConsumePerSec: nil,
            maxFieldHp: nil,
            maxFrame: nil,
            maxHp: nil,
            maxRadius: nil,
            moveSpeed: nil,
            paintRadius: self.blastParam.subSpecialSpecUpList[safe: 0]?.value,
            powerUpFrame: nil,
            radiusMax: nil,
            radiusMin: nil,
            spawnSpeedZSpecUp: nil,
            specialDurationFrame: self.weaponParam.specialDurationFrame,
            splashAroundVelocityMax: nil,
            splashAroundVelocityMin: nil,
            targetInCircleRadius: nil)
    }
}
