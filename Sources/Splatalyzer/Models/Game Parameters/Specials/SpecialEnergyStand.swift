//
//  SpecialEnergyStand.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SpecialEnergyStand: SpecialParametable {
    let fridgeParam: FridgeParameter
    let moveParam: MoveParameter
    let weaponParam: WeaponParameter
    let bulletInformImpactControlForGeyserParam: BulletInformImpactControlForGeyserParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case fridgeParam = "FridgeParam"
        case moveParam = "MoveParam"
        case weaponParam = "WeaponParam"
        case bulletInformImpactControlForGeyserParam = "spl__BulletInformImpactControlForGeyserParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    struct FridgeParameter: Codable {
        let type: String
        let powerUpFrame: HighMidLow
        let putFrame: Int
        let putFrameOnYagura: Int
        let serveAreaHeightDown: Double
        let serveAreaHeightUp: Double
        let serveAreaRadius: Double
        let vanishDistance: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case powerUpFrame = "PowerUpFrame"
            case putFrame = "PutFrame"
            case putFrameOnYagura = "PutFrameOnYagura"
            case serveAreaHeightDown = "ServeAreaHeightDown"
            case serveAreaHeightUp = "ServeAreaHeightUp"
            case serveAreaRadius = "ServeAreaRadius"
            case vanishDistance = "VanishDistance"
        }
    }
    
    struct MoveParameter: Codable {
        let type: String
        let canPlaceBoundDegree: Double
        let canPlaceBoundVel: Double
        let canPlaceCheckLength1: Double
        let canPlaceCheckLength2: Double
        let canPlaceHeight: Double
        let flyGravity: Double
        let flyHitDeg50WallReboundMaxRt: Double
        let flyHitVerticalWallReboundMaxRt: Double
        let flyHitWallPitchToPlane: Double
        let flyHitWallReboundResetFrame: Int
        let flyPositionAirResist: Double
        let guideHitCollisionType: String
        let guideRadius: Double
        let spawnSpeedY: Double
        let spawnSpeedYWorldMin: Double
        let spawnSpeedZSpecUp: HighMidLow
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case canPlaceBoundDegree = "CanPlaceBoundDegree"
            case canPlaceBoundVel = "CanPlaceBoundVel"
            case canPlaceCheckLength1 = "CanPlaceCheckLength1"
            case canPlaceCheckLength2 = "CanPlaceCheckLength2"
            case canPlaceHeight = "CanPlaceHeight"
            case flyGravity = "FlyGravity"
            case flyHitDeg50WallReboundMaxRt = "FlyHitDeg50WallReboundMaxRt"
            case flyHitVerticalWallReboundMaxRt = "FlyHitVerticalWallReboundMaxRt"
            case flyHitWallPitchToPlane = "FlyHitWallPitchToPlane"
            case flyHitWallReboundResetFrame = "FlyHitWallReboundResetFrame"
            case flyPositionAirResist = "FlyPositionAirResist"
            case guideHitCollisionType = "GuideHitCollisionType"
            case guideRadius = "GuideRadius"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let specialReduceFrame: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case specialReduceFrame = "SpecialReduceFrame"
        }
    }
    
    struct BulletInformImpactControlForGeyserParameter: Codable {
        let type: String
        let addSpeedPerImpact: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case addSpeedPerImpact = "AddSpeedPerImpact"
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
    
    func getOverwrites() -> SpecialOverwrites {
        return SpecialOverwrites(
            chargeRateAutoPerFrame: nil,
            crossPaintCheckLength: nil,
            crossPaintRadius: nil,
            distanceDamageDistanceRate: nil,
            inkConsumeHook: nil,
            inkConsumePerSec: nil,
            maxFieldHp: nil,
            maxFrame: nil,
            maxHp: nil,
            maxRadius: nil,
            moveSpeed: nil,
            paintRadius: nil,
            powerUpFrame: self.fridgeParam.powerUpFrame,
            radiusMax: nil,
            radiusMin: nil,
            spawnSpeedZSpecUp: nil,
            specialDurationFrame: nil,
            splashAroundVelocityMax: nil,
            splashAroundVelocityMin: nil,
            targetInCircleRadius: nil)
    }
}
