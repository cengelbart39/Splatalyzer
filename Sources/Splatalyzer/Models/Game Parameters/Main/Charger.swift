//
//  Charger.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

/// Represents the game parameter data of a main weapon in the
/// Charger Class.
///
/// To see a representative `JSON` go to
/// `Resources/weapon-json/` and find a file prefixed with
/// `WeaponCharger`.
public struct Charger: MainWeaponable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: MainParametable {
        public let collisionParam: CollisionParameter
        public let damageParam: DamageParameter
        public let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter?
        public let mainWeaponSetting: MainWeaponSettings
        public let moveParam: MoveParameter
        public let paintParam: PaintParameter
        public let splashPaintParam: SplashPaintParameter
        public let splashSpawnParam: SplashSpawnParameter
        public let splashWallHitParam: SplashWallHitParameter
        public let wallDropCollisionPaintParam: WallDropCollisionPaintParameter
        public let wallDropMoveParam: WallDropMoveParameter
        public let weaponKeepChargeParam: KeepChargeParameter?
        public let weaponDivideChargerParam: DivideChargerParameter?
        public let weaponParam: WeaponParameter
        public let weaponScopeParam: ScopeParameter?
        public let weaponChargerGuideShapeParam: GuideShapeParameter?
        
        public enum CodingKeys: String, CodingKey {
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
}
    
extension Charger.Parameters {
    public struct CollisionParameter: Parametable {
        public let type: String
        public let endRadiusForField: Double
        public let endRadiusForPlayer: Double
        public let initRadiusForField: Double
        public let initRadiusForPlayer: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }
}

extension Charger.Parameters {
    public struct DamageParameter: Parametable {
        public let type: String
        public let valueFullCharge: Int
        public let valueMaxCharge: Int
        public let valueMinCharge: Int
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case valueFullCharge = "ValueFullCharge"
            case valueMaxCharge = "ValueMaxCharge"
            case valueMinCharge = "ValueMinCharge"
        }
    }
}

extension Charger.Parameters {
    public struct MoveParameter: Parametable {
        public let type: String
        public let distanceFullCharge: Double
        public let distanceMaxCharge: Double
        public let distanceMinCharge: Double
        public let spawnSpeedFullCharge: Double
        public let spawnSpeedMaxCharge: Double
        public let spawnSpeedMinCharge: Double
        public let throughFullCharge: Bool?
        
        public enum CodingKeys: String, CodingKey {
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

extension Charger.Parameters {
    public struct PaintParameter: Parametable {
        public let type: String
        public let radiusFullCharge: Double
        public let radiusMaxCharge: Double
        public let radiusMinCharge: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case radiusFullCharge = "RadiusFullCharge"
            case radiusMaxCharge = "RadiusMaxCharge"
            case radiusMinCharge = "RadiusMinCharge"
        }
    }
}

extension Charger.Parameters {
    public struct SplashPaintParameter: Parametable {
        public let type: String
        public let depthHalfFullCharge: Double
        public let depthHalfMaxCharge: Double
        public let depthHalfMinCharge: Double
        public let lastSplashRateFullCharge: Double?
        public let lastSplashRateMaxCharge: Double?
        public let lastSplashRateMinCharge: Double?
        public let radiusSpawnNearest: Double
        public let widthHalfFullCharge: Double
        public let widthHalfMaxCharge: Double
        public let widthHalfMinCharge: Double
        
        public enum CodingKeys: String, CodingKey {
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

extension Charger.Parameters {
    public struct SplashSpawnParameter: Parametable {
        public let type: String
        public let onTopRateFullCharge: Double
        public let onTopRateMaxCharge: Double
        public let onTopRateMinCharge: Double
        public let skipNum: Int?
        public let spawnNearestChargeRate: Double?
        public let spawnNearestMaxOffsetXZ: Double?
        
        public enum CodingKeys: String, CodingKey {
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

extension Charger.Parameters {
    public struct SplashWallHitParameter: Parametable {
        public let type: String
        public let spawnParam: SpawnParameter?
        public let wallDropCollisionPaintParam: WallDropCollisionPaintParameter
        public let wallDropMoveParam: WallDropMoveParameter
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case spawnParam = "SpawnParam"
            case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
            case wallDropMoveParam = "WallDropMoveParam"
        }
    }
}

extension Charger.Parameters.SplashWallHitParameter {
    public struct SpawnParameter: Parametable {
        public let betweenDistance: Double?
        public let firstDistance: Double?
        public let numMax: Int?
        public let numMinChange: Int?
        public let spawnMaxChargeFrame: Int?
        
        public enum CodingKeys: String, CodingKey {
            case betweenDistance = "BetweenDistance"
            case firstDistance = "FirstDistance"
            case numMax = "NumMax"
            case numMinChange = "NumMinCharge"
            case spawnMaxChargeFrame = "SpawnMaxChargeFrame"
        }
    }
}

extension Charger.Parameters {
    public struct WallDropCollisionPaintParameter: Parametable {
        public let type: String?
        public let paintRadiusFall: Double
        public let paintRadiusFallMaxCharge: Double
        public let paintRadiusFallMinCharge: Double
        public let paintRadiusGround: Double?
        public let paintRadiusShock: Double
        public let paintRadiusShockMaxCharge: Double
        public let paintRadiusShockMinCharge: Double
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct WallDropMoveParameter: Parametable {
        public let type: String?
        public let fallPeriodFirstFrameMin: Int
        public let fallPeriodFirstTargetSpeed: Double
        public let fallPeriodLastFrameMax: Int
        public let fallPeriodSecondTargetSpeed: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case fallPeriodFirstFrameMin = "FallPeriodFirstFrameMin"
            case fallPeriodFirstTargetSpeed = "FallPeriodFirstTargetSpeed"
            case fallPeriodLastFrameMax = "FallPeriodLastFrameMax"
            case fallPeriodSecondTargetSpeed = "FallPeriodSecondTargetSpeed"
        }
    }
}

extension Charger.Parameters {
    public struct KeepChargeParameter: Parametable {
        public let type: String
        public let enableKeepChargeAnytime: Bool?
        public let enableKeepChargeTransCancel: Bool?
        public let keepChargeFullFrame: Int
        public let keepChargePreDelayFrame: Int
        public let keepChargePreDelayFramePre: Int
        public let muzzleLocalPos: XYZData
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case enableKeepChargeAnytime = "EnableKeepChargeAnytime"
            case enableKeepChargeTransCancel = "EnableKeepChargeTransCancel"
            case keepChargeFullFrame = "KeepChargeFullFrame"
            case keepChargePreDelayFrame = "KeepChargePreDelayFrame"
            case keepChargePreDelayFramePre = "KeepChargePreDelayFrame_Pre"
            case muzzleLocalPos = "MuzzleLocalPos"
        }
    }
    
    public struct DivideChargerParameter: Parametable {
        public let type: String
        public let fullChargeDivideNum: Int
        public let muzzleLocalPos: XYZData
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case fullChargeDivideNum = "FullChargeDivideNum"
            case muzzleLocalPos = "MuzzleLocalPos"
        }
    }
}

extension Charger.Parameters {
    public struct WeaponParameter: Parametable {
        public let type: String
        public let airChargeRateByInkEmpty: Int?
        public let chargeFrameFullCharge: Int?
        public let chargeFrameMinCharge: Int?
        public let freezeFrameFullCharge: Int
        public let freezeFrameMinCharge: Int
        public let inkConsumeFullCharge: Double
        public let inkConsumeMinCharge: Double
        public let inkEmptyChargeTimes: Int?
        public let jumpHeightFullCharge: Double
        public let moveJumpDownBias: Double
        public let moveSpeedFullCharge: Double
        
        public enum CodingKeys: String, CodingKey {
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

extension Charger.Parameters {
    public struct ScopeParameter: Parametable {
        public let type: String
        public let cameraFovy: Double?
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case cameraFovy = "CameraFovy"
        }
    }
    
    public struct GuideShapeParameter: Parametable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
}
