//
//  Charger.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct Charger: Codable {
    let collisionParam: CollisionParameter
    let damageParam: DamageParameter
    let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter
    let mainWeaponSetting: MainWeaponSettings
    let moveParam: MoveParameter
    let paintParam: PaintParameter
    let splashPaintParam: SplashPaintParameter
    let splashSpawnParam: SplashSpawnParameter
    let splashWallHitParam: SplashWallHitParameter
    let wallDropCollisionPaintParam: WallDropCollisionPaintParameter
    let wallDropMoveParam: WallDropMoveParameter
    let weaponKeepChargeParam: KeepChargeParameter?
    let weaponDivideChargerParam: DivideChargerParameter?
    let weaponParam: WeaponParameter
    let weaponScopeParam: ScopeParameter?
    let weaponChargerGuideShapeParam: GuideShapeParameter?
    
    enum CodingKeys: String, CodingKey {
        case collisionParam = "CollisionParam"
        case damageParam = "DamageParam"
        case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
        case mainWeaponSetting = "MainWeaponSetting"
        case moveParam = "MoveParam"
        case paintParam = "PaintParam"
        case splashPaintParam = "SplashPaintParam"
        case splashSpawnParam = "SplashSpawnParam"
        case splashWallHitParam = "SplashWallHitParam"
        case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
        case wallDropMoveParam = "WallDropMoveParam"
        case weaponKeepChargeParam = "WeaponKeepChargeParam"
        case weaponDivideChargerParam = "WeaponDivideChargerParam"
        case weaponParam = "WeaponParam"
        case weaponScopeParam = "WeaponScopeParam"
        case weaponChargerGuideShapeParam = "spl__WeaponChargerGuideShapeParam"
    }
}

extension Charger {
    struct CollisionParameter: Codable {
        let type: String
        let endRadiusForField: Double
        let endRadiusForPlayer: Double
        let initRadiusForField: Double
        let initRadiusForPlayer: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }
}

extension Charger {
    struct DamageParameter: Codable {
        let type: String
        let valueFullCharge: Int
        let valueMaxCharge: Int
        let valueMinCharge: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case valueFullCharge = "ValueFullCharge"
            case valueMaxCharge = "ValueMaxCharge"
            case valueMinCharge = "ValueMinCharge"
        }
    }
}

extension Charger {
    struct MoveParameter: Codable {
        let type: String
        let distanceFullCharge: Double
        let distanceMaxCharge: Double
        let distanceMinCharge: Double
        let spawnSpeedFullCharge: Double
        let spawnSpeedMaxCharge: Double
        let spawnSpeedMinCharge: Double
        let throughFullCharge: Bool?
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case distanceFullCharge = "DistanceFullCharge"
            case distanceMaxCharge = "DistanceMaxCharge"
            case distanceMinCharge = "DistanceMinCharge"
            case spawnSpeedFullCharge = "SpawnSpeedFullCharge"
            case spawnSpeedMaxCharge = "SpawnSpeedMaxCharge"
            case spawnSpeedMinCharge = "SpawnSpeedMinCharge"
            case throughFullCharge = "ThroughFullCharge"
        }
    }
}

extension Charger {
    struct PaintParameter: Codable {
        let type: String
        let radiusFullCharge: Double
        let radiusMaxCharge: Double
        let radiusMinCharge: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case radiusFullCharge = "RadiusFullCharge"
            case radiusMaxCharge = "RadiusMaxCharge"
            case radiusMinCharge = "RadiusMinCharge"
        }
    }
}

extension Charger {
    struct SplashPaintParameter: Codable {
        let type: String
        let depthHalfFullCharge: Double
        let depthHalfMaxCharge: Double
        let depthHalfMinCharge: Double
        let lastSplashRateFullCharge: Double?
        let lastSplashRateMaxCharge: Double?
        let lastSplashRateMinCharge: Double?
        let radiusSpawnNearest: Double
        let widthHalfFullCharge: Double
        let widthHalfMaxCharge: Double
        let widthHalfMinCharge: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case depthHalfFullCharge = "DepthHalfFullCharge"
            case depthHalfMaxCharge = "DepthHalfMaxCharge"
            case depthHalfMinCharge = "DepthHalfMinCharge"
            case lastSplashRateFullCharge = "LastSplashRateFullCharge"
            case lastSplashRateMaxCharge = "LastSplashRateMaxCharge"
            case lastSplashRateMinCharge = "LastSplashRateMinCharge"
            case radiusSpawnNearest = "RadiusSpawnNearest"
            case widthHalfFullCharge = "WidthHalfFullCharge"
            case widthHalfMaxCharge = "WidthHalfMaxCharge"
            case widthHalfMinCharge = "WidthHalfMinCharge"
        }
    }
}

extension Charger {
    struct SplashSpawnParameter: Codable {
        let type: String
        let onTopRateFullCharge: Double
        let onTopRateMaxCharge: Double
        let onTopRateMinCharge: Double
        let skipNum: Int?
        let spawnNearestChargeRate: Double?
        let spawnNearestMaxOffsetXZ: Double?
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case onTopRateFullCharge = "OnTopRateFullCharge"
            case onTopRateMaxCharge = "OnTopRateMaxCharge"
            case onTopRateMinCharge = "OnTopRateMinCharge"
            case skipNum = "SkipNum"
            case spawnNearestChargeRate = "SpawnNearestChargeRate"
            case spawnNearestMaxOffsetXZ = "SpawnNearestMaxOffsetXZ"
        }
    }
}

extension Charger {
    struct SplashWallHitParameter: Codable {
        let type: String
        let spawnParam: SpawnParameter?
        let wallDropCollisionPaintParam: WallDropCollisionPaintParameter
        let wallDropMoveParam: WallDropMoveParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case spawnParam = "SpawnParam"
            case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
            case wallDropMoveParam = "WallDropMoveParam"
        }
    }
}

extension Charger.SplashWallHitParameter {
    struct SpawnParameter: Codable {
        let betweenDistance: Double?
        let firstDistance: Double?
        let numMax: Int?
        let numMinChange: Int?
        let spawnMaxChargeFrame: Int?
        
        enum CodingKeys: String, CodingKey {
            case betweenDistance = "BetweenDistance"
            case firstDistance = "FirstDistance"
            case numMax = "NumMax"
            case numMinChange = "NumMinCharge"
            case spawnMaxChargeFrame = "SpawnMaxChargeFrame"
        }
    }
}

extension Charger {
    struct WallDropCollisionPaintParameter: Codable {
        let type: String?
        let paintRadiusFall: Double
        let paintRadiusFallMaxCharge: Double
        let paintRadiusFallMinCharge: Double
        let paintRadiusGround: Double?
        let paintRadiusShock: Double
        let paintRadiusShockMaxCharge: Double
        let paintRadiusShockMinCharge: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case paintRadiusFall = "PaintRadiusFall"
            case paintRadiusFallMaxCharge = "PaintRadiusFallMaxCharge"
            case paintRadiusFallMinCharge = "PaintRadiusFallMinCharge"
            case paintRadiusGround = "PaintRadiusGround"
            case paintRadiusShock = "PaintRadiusShock"
            case paintRadiusShockMaxCharge = "PaintRadiusShockMaxCharge"
            case paintRadiusShockMinCharge = "PaintRadiusShockMinCharge"
        }
    }
    
    struct WallDropMoveParameter: Codable {
        let type: String?
        let fallPeriodFirstFrameMin: Int
        let fallPeriodFirstTargetSpeed: Double
        let fallPeriodLastFrameMax: Int
        let fallPeriodSecondTargetSpeed: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case fallPeriodFirstFrameMin = "FallPeriodFirstFrameMin"
            case fallPeriodFirstTargetSpeed = "FallPeriodFirstTargetSpeed"
            case fallPeriodLastFrameMax = "FallPeriodLastFrameMax"
            case fallPeriodSecondTargetSpeed = "FallPeriodSecondTargetSpeed"
        }
    }
}

extension Charger {
    struct KeepChargeParameter: Codable {
        let type: String
        let enableKeepChargeAnytime: Bool?
        let enableKeepChargeTransCancel: Bool?
        let keepChargeFullFrame: Int
        let keepChargePreDelayFrame: Int
        let keepChargePreDelayFramePre: Int
        let muzzleLocalPos: XYZData
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case enableKeepChargeAnytime = "EnableKeepChargeAnytime"
            case enableKeepChargeTransCancel = "EnableKeepChargeTransCancel"
            case keepChargeFullFrame = "KeepChargeFullFrame"
            case keepChargePreDelayFrame = "KeepChargePreDelayFrame"
            case keepChargePreDelayFramePre = "KeepChargePreDelayFrame_Pre"
            case muzzleLocalPos = "MuzzleLocalPos"
        }
    }
    
    struct DivideChargerParameter: Codable {
        let type: String
        let fullChargeDivideNum: Int
        let muzzleLocalPos: XYZData
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case fullChargeDivideNum = "FullChargeDivideNum"
            case muzzleLocalPos = "MuzzleLocalPos"
        }
    }
}

extension Charger {
    struct WeaponParameter: Codable {
        let type: String
        let airChargeRateByInkEmpty: Int?
        let chargeFrameFullCharge: Int?
        let chargeFrameMinCharge: Int?
        let freezeFrameFullCharge: Int
        let freezeFrameMinCharge: Int
        let inkConsumeFullCharge: Double
        let inkConsumeMinCharge: Double
        let inkEmptyChargeTimes: Int?
        let jumpHeightFullCharge: Double
        let moveJumpDownBias: Double
        let moveSpeedFullCharge: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case airChargeRateByInkEmpty = "AirChargeRateByInkEmpty"
            case chargeFrameFullCharge = "ChargeFrameFullCharge"
            case chargeFrameMinCharge = "ChargeFrameMinCharge"
            case freezeFrameFullCharge = "FreezeFrameFullCharge"
            case freezeFrameMinCharge = "FreezeFrameMinCharge"
            case inkConsumeFullCharge = "InkConsumeFullCharge"
            case inkConsumeMinCharge = "InkConsumeMinCharge"
            case inkEmptyChargeTimes = "InkEmptyChargeTimes"
            case jumpHeightFullCharge = "JumpHeightFullCharge"
            case moveJumpDownBias = "MoveJumpDownBias"
            case moveSpeedFullCharge = "MoveSpeedFullCharge"
        }
    }
}

extension Charger {
    struct ScopeParameter: Codable {
        let type: String
        let cameraFovy: Double?
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case cameraFovy = "CameraFovy"
        }
    }
    
    struct GuideShapeParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
}
