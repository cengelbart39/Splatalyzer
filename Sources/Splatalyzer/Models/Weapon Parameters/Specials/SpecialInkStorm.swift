//
//  SpecialInkStorm.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SpecialInkStorm: Codable {
    let cloudParam: CloudParameter
    let moveParam: MoveParameter
    let rainParam: RainParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case cloudParam = "CloudParam"
        case moveParam = "MoveParam"
        case rainParam = "RainParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    struct CloudParameter: Codable {
        let type: String
        let noPaintRainNum: Double
        let rainNum: Int
        let rainyFrame: SubHighMiddleLow
        let withNoPaintRainNum: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case noPaintRainNum = "NoPaintRainNum"
            case rainNum = "RainNum"
            case rainyFrame = "RainyFrame"
            case withNoPaintRainNum = "WithNoPaintRainNum"
        }
    }
    
    struct MoveParameter: Codable {
        let type: String
        let guideHitCollisionType: String
        let spawnSpeedY: Double
        let spawnSpeedYWorldMin: Double
        let spawnSpeedZSpecUp: SubHighMiddleLow
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case guideHitCollisionType = "GuideHitCollisionType"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
    }
    
    struct RainParameter: Codable {
        let type: String
        let collisionParam: CollisionParameter
        let moveParam: RainParameter.MoveParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case collisionParam = "CollisionParam"
            case moveParam = "MoveParam"
        }
        
        struct CollisionParameter: Codable {
            let endRadiusForField: Double
            let endRadiusForPlayer: Double
            let initRadiusForField: Double
            let initRadiusForPlayer: Double
            
            enum CodingKeys: String, CodingKey {
                case endRadiusForField = "EndRadiusForField"
                case endRadiusForPlayer = "EndRadiusForPlayer"
                case initRadiusForField = "InitRadiusForField"
                case initRadiusForPlayer = "InitRadiusForPlayer"
            }
        }
        
        struct MoveParameter: Codable {
            let brakeAirResist: Double
            let brakeGravity: Double
            let brakeToFreeStateFrame: Double
            let brakeToFreeVelocityXZ: Double
            let brakeToFreeVelocityY: Double
            let freeAirResist: Double
            let freeGravity: Double
            let goStraightStateEndMaxSpeed: Double
            let goStraightToBrakeStateFrame: Double
            let spawnSpeed: Double
            
            enum CodingKeys: String, CodingKey {
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
    }
    
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        let xRate: Double
        let yMax: Double
        let yPlusRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yMax = "YMax"
            case yPlusRate = "YPlusRate"
        }
    }
}
