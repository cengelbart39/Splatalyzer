//
//  SpecialBlower.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SpecialBlower: Codable {
    let exhaleBlastParamMaxCharge: ExhaleBlastParameterCharge
    let exhaleBlastParamMinCharge: ExhaleBlastParameterCharge
    let exhaleCollisionParam: ExhaleCollisionParameter
    let exhaleParam: ExhaleParameter
    let exhaleSplashPaintSpawnParam: ExhaleSplashPaintSpawnParameter
    let inhaleParam: InhaleParameter
    let weaponParam: WeaponParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParam
    
    enum CodingKeys: String, CodingKey {
        case exhaleBlastParamMaxCharge = "ExhaleBlastParamMaxCharge"
        case exhaleBlastParamMinCharge = "ExhaleBlastParamMinCharge"
        case exhaleCollisionParam = "ExhaleCollisionParam"
        case exhaleParam = "ExhaleParam"
        case exhaleSplashPaintSpawnParam = "ExhaleSplashPaintSpawnParam"
        case inhaleParam = "InhaleParam"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    struct ExhaleBlastParameterCharge: Codable {
        let type: String
        let damageOffsetY: Double
        let distanceDamge: [DistanceDamage]
        let knockBackParam: [AttackKnockbackParameter]
        let paintOffsetY: Double
        let paintRadius: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case damageOffsetY = "DamageOffsetY"
            case distanceDamge = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintOffsetY = "PaintOffsetY"
            case paintRadius = "PaintRadius"
        }
    }
    
    struct ExhaleCollisionParameter: Codable {
        let type: String
        let radiusForPlayerMinCharge: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case radiusForPlayerMinCharge = "RadiusForPlayerMinCharge"
        }
    }
    
    struct ExhaleParameter: Codable {
        let type: String
        let directAccel: Double
        let directDamage: Int
        let flyGravity: Double
        let flyPositionAirResist: Double
        let guideHitCollisionType: String
        let guideRadius: Double
        let paintRadiusMaxCharge: Double
        let paintRadiusMinCharge: Double
        let spawnBlastWaitFrame: Int
        let spawnSpeedY: Double
        let spawnSpeedYMaxCharge: Double
        let spawnSpeedZMaxCharge: Double
        let spawnSpeedZSpecUp: HighMidLow
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case directAccel = "DirectAccel"
            case directDamage = "DirectDamage"
            case flyGravity = "FlyGravity"
            case flyPositionAirResist = "FlyPositionAirResist"
            case guideHitCollisionType = "GuideHitCollisionType"
            case guideRadius = "GuideRadius"
            case paintRadiusMaxCharge = "PaintRadiusMaxCharge"
            case paintRadiusMinCharge = "PaintRadiusMinCharge"
            case spawnBlastWaitFrame = "SpawnBlastWaitFrame"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYMaxCharge = "SpawnSpeedYMaxCharge"
            case spawnSpeedZMaxCharge = "SpawnSpeedZMaxCharge"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
    }
    
    struct ExhaleSplashPaintSpawnParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct InhaleParameter: Codable {
        let type: String
        let collisionAccelRateNearest: Double
        let collisionAccelRatePerDist: Double
        let collisionAirResist: Double
        let collisionAirResistMaxNum: Int
        let collisionAirResistNum0: Double
        let damagePerFrameByObject: Int
        let effectRingSpanFrame: Int
        let effectRingSpeed: RateData
        let effectScalePerCollision: RateData
        let effectSpanForGeyser: Int
        let effectSpeed: Double
        let lengthAddPerFrame: Double
        let lengthMax: Double
        let muzzleCollisionOffset: Double
        let muzzleCollisionRadius: Double
        let poisonMistForPlayer: PoisonMistForPlayer
        let radiusMax: HighMidLow
        let radiusMin: HighMidLow
        let receiveDamageForGeyser: Int
        let receiveDamageForPlayer: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case collisionAccelRateNearest = "CollisionAccelRateNearest"
            case collisionAccelRatePerDist = "CollisionAccelRatePerDist"
            case collisionAirResist = "CollisionAirResist"
            case collisionAirResistMaxNum = "CollisionAirResistMaxNum"
            case collisionAirResistNum0 = "CollisionAirResistNum0"
            case damagePerFrameByObject = "DamagePerFrameByObject"
            case effectRingSpanFrame = "EffectRingSpanFrame"
            case effectRingSpeed = "EffectRingSpeed"
            case effectScalePerCollision = "EffectScalePerCollision"
            case effectSpanForGeyser = "EffectSpanForGeyser"
            case effectSpeed = "EffectSpeed"
            case lengthAddPerFrame = "LengthAddPerFrame"
            case lengthMax = "LengthMax"
            case muzzleCollisionOffset = "MuzzleCollisionOffset"
            case muzzleCollisionRadius = "MuzzleCollisionRadius"
            case poisonMistForPlayer = "PoisonMistForPlayer"
            case radiusMax = "RadiusMax"
            case radiusMin = "RadiusMin"
            case receiveDamageForGeyser = "ReceiveDamageForGeyser"
            case receiveDamageForPlayer = "ReceiveDamageForPlayer"
        }
    }
    
    struct PoisonMistForPlayer: Codable {
        let effectFrame: Int
        let level: [PoisonMistForPlayerLevel]
        let sideStepInkConsumeRate: Double
        let specialWeapon: Bool
        
        enum CodingKeys: String, CodingKey {
            case effectFrame = "EffectFrame"
            case level = "Level"
            case sideStepInkConsumeRate = "SideStepInkConsumeRate"
            case specialWeapon = "SpecialWeapon"
        }
    }
    
    struct PoisonMistForPlayerLevel: Codable {
        let frame: Int?
        let nextLevelCount: Int?
        
        enum CodingKeys: String, CodingKey {
            case frame = "Frame"
            case nextLevelCount = "NextLevelCount"
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let exhaleWaitFrame: Int
        let inhaleToExhaleWaitFrame: Int
        let jumpHeightFullCharge: Double
        let jumpHeightMinCharge: Double
        let jumpVelExhale: Double
        let moveJumpDownBias: Double
        let moveJumpDownStartChargeRate: Double
        let moveSpeedFullCharge: Double
        let moveSpeedMinCharge: Double
        let shotDirXZRotDegH: Double
        let shotPitVel: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case exhaleWaitFrame = "ExhaleWaitFrame"
            case inhaleToExhaleWaitFrame = "InhaleToExhaleWaitFrame"
            case jumpHeightFullCharge = "JumpHeightFullCharge"
            case jumpHeightMinCharge = "JumpHeightMinCharge"
            case jumpVelExhale = "JumpVelExhale"
            case moveJumpDownBias = "MoveJumpDownBias"
            case moveJumpDownStartChargeRate = "MoveJumpDownStartChargeRate"
            case moveSpeedFullCharge = "MoveSpeedFullCharge"
            case moveSpeedMinCharge = "MoveSpeedMinCharge"
            case shotDirXZRotDegH = "ShotDirXZ_RotDegH"
            case shotPitVel = "ShotPitVel"
        }
    }
    
    struct SpawnBulletAdditionMovePlayerParam: Codable {
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
