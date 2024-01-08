//
//  SpecialGachihoko.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SpecialGachihoko: Codable {
    let blastParamFullCharge: BlastParameterFullCharge
    let collisionParam: CollisionParameter
    let damageParam: SpecialGachihoko.DamageParameter
    let moveParam: MoveParameter
    let splashNearestParam: SplashNearestParameter
    let splashPaintSpawnParam: SplashPaintSpawnParameter
    let splashWallHitParam: SplashWallHitParameter
    let weaponParam: WeaponParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case blastParamFullCharge = "BlastParamFullCharge"
        case collisionParam = "CollisionParam"
        case damageParam = "DamageParam"
        case moveParam = "MoveParam"
        case splashNearestParam = "SplashNearestParam"
        case splashPaintSpawnParam = "SplashPaintSpawnParam"
        case splashWallHitParam = "SplashWallHitParam"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    struct BlastParameterFullCharge: Codable {
        let type: String
        let crossPaintCheckLength: Double
        let crossPaintRadius: Double
        let damageOffsetY: Double
        let distanceDamage: [DistanceDamage]
        let knockBackParam: KnockbackParameter
        let paintOffsetY: Double
        let paintRadius: Double
        let splashAroundParam: SplashAroundParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case damageOffsetY = "DamageOffsetY"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintOffsetY = "PaintOffsetY"
            case paintRadius = "PaintRadius"
            case splashAroundParam = "SplashAroundParam"
        }
    }
    
    struct CollisionParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct DamageParameter: Codable {
        let type: String
        let directAccelFullCharge: Double
        let directAccelMaxCharge: Double
        let directAccelMinCharge: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case directAccelFullCharge = "DirectAccelFullCharge"
            case directAccelMaxCharge = "DirectAccelMaxCharge"
            case directAccelMinCharge = "DirectAccelMinCharge"
        }
    }
    
    struct MoveParameter: Codable {
        let type: String
        let guideHitCollisionType: String
        let guideRadius: Double
        let spawnSpeedY: Double
        let spawnSpeedYFullCharge: Double
        let spawnSpeedYMaxCharge: Double
        let spawnSpeedZFullCharge: Double
        let spawnSpeedZMaxCharge: Double
        let spawnSpeedZSpecUp: HighMidLow
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case guideHitCollisionType = "GuideHitCollisionType"
            case guideRadius = "GuideRadius"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYFullCharge = "SpawnSpeedYFullCharge"
            case spawnSpeedYMaxCharge = "SpawnSpeedYMaxCharge"
            case spawnSpeedZFullCharge = "SpawnSpeedZFullCharge"
            case spawnSpeedZMaxCharge = "SpawnSpeedZMaxCharge"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
    }
    
    struct SplashNearestParameter: Codable {
        let type: String
        let paintRadiusFullCharge: Double
        let paintRadiusMaxCharge: Double
        let paintRadiusMinCharge: Double
        let spawnOffset: XYData
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case paintRadiusFullCharge = "PaintRadiusFullCharge"
            case paintRadiusMaxCharge = "PaintRadiusMaxCharge"
            case paintRadiusMinCharge = "PaintRadiusMinCharge"
            case spawnOffset = "SpawnOffset"
        }
    }
    
    struct SplashPaintSpawnParameter: Codable {
        let type: String
        let paintRadiusFullCharge: Double
        let paintRadiusMaxCharge: Double
        let paintRadiusMinCharge: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case paintRadiusFullCharge = "PaintRadiusFullCharge"
            case paintRadiusMaxCharge = "PaintRadiusMaxCharge"
            case paintRadiusMinCharge = "PaintRadiusMinCharge"
        }
    }
    
    struct SplashWallHitParameter: Codable {
        let type: String
        let wallDropCollisionPaintParam: WallDropCollisionPaintParameter
        let wallDropMoveParam: WallDropMoveParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
            case wallDropMoveParam = "WallDropMoveParam"
        }
        
        struct WallDropCollisionPaintParameter: Codable {
            let fallPeriodFirstSecondTargetAlp: Double
            let paintRadiusFall: Double
            let paintRadiusGround: Double
            let paintRadiusShock: Double
            
            enum CodingKeys: String, CodingKey {
                case fallPeriodFirstSecondTargetAlp = "FallPeriodFirstSecondTargetAlp"
                case paintRadiusFall = "PaintRadiusFall"
                case paintRadiusGround = "PaintRadiusGround"
                case paintRadiusShock = "PaintRadiusShock"
            }
        }
        
        struct WallDropMoveParameter: Codable {
            let fallPeriodFirstFrameMax: Int
            let fallPeriodFirstFrameMin: Int
            let fallPeriodFirstTargetSpeed: Double
            let fallPeriodLastFrameMax: Int
            let fallPeriodLastFrameMin: Int
            let fallPeriodSecondFrame: Int
            let fallPeriodSecondTargetSpeed: Double
            
            enum CodingKeys: String, CodingKey {
                case fallPeriodFirstFrameMax = "FallPeriodFirstFrameMax"
                case fallPeriodFirstFrameMin = "FallPeriodFirstFrameMin"
                case fallPeriodFirstTargetSpeed = "FallPeriodFirstTargetSpeed"
                case fallPeriodLastFrameMax = "FallPeriodLastFrameMax"
                case fallPeriodLastFrameMin = "FallPeriodLastFrameMin"
                case fallPeriodSecondFrame = "FallPeriodSecondFrame"
                case fallPeriodSecondTargetSpeed = "FallPeriodSecondTargetSpeed"
            }
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let knockBackParamFullCharge: KnockBackParamCharge
        let knockBackParamMaxCharge: KnockBackParamCharge
        let knockBackParamMinCharge: KnockBackParamCharge
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case knockBackParamFullCharge = "KnockBackParamFullCharge"
            case knockBackParamMaxCharge = "KnockBackParamMaxCharge"
            case knockBackParamMinCharge = "KnockBackParamMinCharge"
        }
        
        struct KnockBackParamCharge: Codable {
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
}


