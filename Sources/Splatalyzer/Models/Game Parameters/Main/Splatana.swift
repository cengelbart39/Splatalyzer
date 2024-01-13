//
//  Splatana.swift
//
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

public struct Splatana: Codable {
    public let bulletSaberHorizontalParam: BulletParameter
    public let bulletSaberSlashHorizontalParam: BulletSlashParameter
    
    public let bulletSaberSlashVerticalParam: BulletSlashParameter
    public let bulletSaberVerticalParam: BulletParameter
    
    public let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter?
    public let mainWeaponSetting: MainWeaponSettings
    
    public let weaponSaberParam: WeaponParameter
    
    public enum CodingKeys: String, CodingKey {
        case bulletSaberHorizontalParam = "BulletSaberHorizontalParam"
        case bulletSaberSlashHorizontalParam = "BulletSaberSlashHorizontalParam"
        case bulletSaberSlashVerticalParam = "BulletSaberSlashVerticalParam"
        case bulletSaberVerticalParam = "BulletSaberVerticalParam"
        case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
        case mainWeaponSetting = "MainWeaponSetting"
        case weaponSaberParam = "spl__WeaponSaberParam"
    }
}

extension Splatana {
    public struct BulletParameter: Codable {
        public let type: String
        public let burstParam: BurstParameter
        public let collisionParam: CollisionParameter
        public let damageParam: DamageParameter
        public let moveParam: MoveParameter
        public let paintParam: PaintParameter?
        public let splashPaintParam: SplashPaintParameter?
        public let splashSpawnParam: SplashSpawnParameter
        public let wallDropPaintParam: WallDropPaintParameter?
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case burstParam = "BurstParam"
            case collisionParam = "CollisionParam"
            case damageParam = "DamageParam"
            case moveParam = "MoveParam"
            case paintParam = "PaintParam"
            case splashPaintParam = "SplashPaintParam"
            case splashSpawnParam = "SplashSpawnParam"
            case wallDropPaintParam = "WallDropPaintParam"
        }
    }
}

extension Splatana.BulletParameter {
    public struct BurstParameter: Codable {
        public let burstFrame: Int
        public let isEmitSplash: Bool?
        public let splashColRadius: Double?
        public let splashDrawRadius: Double?
        public let splashPaintRadius: Double
        
        public enum CodingKeys: String, CodingKey {
            case burstFrame = "BurstFrame"
            case isEmitSplash = "IsEmitSplash"
            case splashColRadius = "SplashColRadius"
            case splashDrawRadius = "SplashDrawRadius"
            case splashPaintRadius = "SplashPaintRadius"
        }
    }
    
    public struct CollisionParameter: Codable {
        public let coreIndex: Int
        public let offsetArray: [XYZData]
        public let paramArray: [ParameterItem]
        
        public enum CodingKeys: String, CodingKey {
            case coreIndex = "CoreIndex"
            case offsetArray = "OffsetArray"
            case paramArray = "ParamArray"
        }
    }
    
    public struct DamageParameter: Codable {
        public let hasGuard: Bool?
        public let hitDamage: Int
        
        public enum CodingKeys: String, CodingKey {
            case hasGuard = "HasGuard"
            case hitDamage = "HitDamage"
        }
    }
    
    public struct MoveParameter: Codable {
        public let brakeAirResist: Double?
        public let brakeGravity: Double
        public let brakeToFreeStartFrame: Int?
        public let brakeToFreeVelocityXZ: Double?
        public let brakeToFreeVelocityY: Double?
        public let freeAirResist: Double?
        public let freeGravity: Double
        public let goStraightStateEndMaxSpeed: Double?
        public let goStraightToBrakeStartFrame: Int
        public let spawnSpeed: Double
        
        public enum CodingKeys: String, CodingKey {
            case brakeAirResist = "BrakeAirResist"
            case brakeGravity = "BrakeGravity"
            case brakeToFreeStartFrame = "BrakeToFreeStateFrame"
            case brakeToFreeVelocityXZ = "BrakeToFreeVelocityXZ"
            case brakeToFreeVelocityY = "BrakeToFreeVelocityY"
            case freeAirResist = "FreeAirResist"
            case freeGravity = "FreeGravity"
            case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
            case goStraightToBrakeStartFrame = "GoStraightToBrakeStateFrame"
            case spawnSpeed = "SpawnSpeed"
        }
    }
    
    public struct PaintParameter: Codable {
        public let castPaintDistance: Double?
        public let depthScaleMax: Double?
        public let depthScaleMin: Double?
        public let paintDegreeMax: Double?
        public let widthHalf: Double
        
        public enum CodingKeys: String, CodingKey {
            case castPaintDistance = "CastPaintDistance"
            case depthScaleMax = "DepthScaleMax"
            case depthScaleMin = "DepthScaleMin"
            case paintDegreeMax = "PaintDegreeMax"
            case widthHalf = "WidthHalf"
        }
    }
    
    public struct SplashPaintParameter: Codable {
        public let depthScaleMax: Double?
        public let depthScaleMin: Double?
        public let widthHalf: Double
        public let widthHalfNearest: Double?
        
        public enum CodingKeys: String, CodingKey {
            case depthScaleMax = "DepthScaleMax"
            case depthScaleMin = "DepthScaleMin"
            case widthHalf = "WidthHalf"
            case widthHalfNearest = "WidthHalfNearest"
        }
    }
    
    public struct SplashSpawnParameter: Codable {
        public let dropInterval: Double
        public let nearestLen: Double?
        public let splashNumMax: Int
        public let splitNum: Int?
        
        public enum CodingKeys: String, CodingKey {
            case dropInterval = "DropInterval"
            case nearestLen = "NearestLen"
            case splashNumMax = "SplashNumMax"
            case splitNum = "SplitNum"
        }
    }
    
    public struct WallDropPaintParameter: Codable {
        public let paintRadiusShock: Double
        
        public enum CodingKeys: String, CodingKey {
            case paintRadiusShock = "PaintRadiusShock"
        }
    }
}

extension Splatana.BulletParameter.CollisionParameter {
    public struct ParameterItem: Codable {
        public let chargeFrameForField: Int?
        public let chargeFrameForPlayer: Int?
        public let endRadiusForField: Double
        public let endRadiusForPlayer: Double
        public let friendThroughFrameForPlayer: Int?
        public let initRadiusForField: Double
        public let initRadiusForPlayer: Double
        
        public enum CodingKeys: String, CodingKey {
            case chargeFrameForField = "ChangeFrameForField"
            case chargeFrameForPlayer = "ChangeFrameForPlayer"
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case friendThroughFrameForPlayer = "FriendThroughFrameForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }
}

extension Splatana {
    public struct BulletSlashParameter: Codable {
        public let type: String
        public let damageParam: DamageParameter
        public let moveParam: MoveParameter
        public let shapeParam: ShapeParameter
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case damageParam = "DamageParam"
            case moveParam = "MoveParam"
            case shapeParam = "ShapeParam"
        }
    }
}

extension Splatana.BulletSlashParameter {
    public struct DamageParameter: Codable {
        public let accelForCastle: Double?
        public let damageValue: Int
        public let isPenetrate: Bool?
        
        public enum CodingKeys: String, CodingKey {
            case accelForCastle = "AccelForCastle"
            case damageValue = "DamageValue"
            case isPenetrate = "IsPenetrate"
        }
    }
    
    public struct MoveParameter: Codable {
        public let aliveFrame: Int
        
        public enum CodingKeys: String, CodingKey {
            case aliveFrame = "AliveFrame"
        }
    }
    
    public struct ShapeParameter: Codable {
        public let boxCenter: XYZData
        public let boxHalfExtents: XYZData
        public let cylinderCenterA: XYZData?
        public let cylinderCenterB: XYZData?
        public let cylinderRadius: Double?
        public let hasCylinderShape: Bool?
        
        public enum CodingKeys: String, CodingKey {
            case boxCenter = "BoxCenter"
            case boxHalfExtents = "BoxHalfExtents"
            case cylinderCenterA = "CylinderCenterA"
            case cylinderCenterB = "CylinderCenterB"
            case cylinderRadius = "CylinderRadius"
            case hasCylinderShape = "HasCylinderShape"
        }
    }
}

extension Splatana {
    public struct WeaponParameter: Codable {
        public let type: String
        public let chargeKeepParam: ChargeKeepParameter?
        public let chargeParam: ChargeParameter
        public let footSplashPaintParam: FootSplashPaintParameter
        public let isEnableChargeKeep: Bool?
        public let shotGuideParam: ShotGuideParameter
        public let swingParam: SwingParameter
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case chargeKeepParam = "ChargeKeepParam"
            case chargeParam = "ChargeParam"
            case footSplashPaintParam = "FootSplashPaintParam"
            case isEnableChargeKeep = "IsEnableChargeKeep"
            case shotGuideParam = "ShotGuideParam"
            case swingParam = "SwingParam"
        }
    }
}

extension Splatana.WeaponParameter {
    public struct ChargeKeepParameter: Codable {
        public let keepChargePreDelayFrame: Int
        
        public enum CodingKeys: String, CodingKey {
            case keepChargePreDelayFrame = "KeepChargePreDelayFrame"
        }
    }
    
    public struct ChargeParameter: Codable {
        public let airChargeRateByInkEmpty: Int?
        public let chargeFrameFullCharge: Int
        public let chargeFrameMinCharge: Int
        public let inkConsumeFullCharge: Double
        public let inkConsumeMinCharge: Double
        public let inkRecoverStop: Int
        public let moveSpeedFullCharge: Double?
        
        public enum CodingKeys: String, CodingKey {
            case airChargeRateByInkEmpty = "AirChargeRateByInkEmpty"
            case chargeFrameFullCharge = "ChargeFrameFullCharge"
            case chargeFrameMinCharge = "ChargeFrameMinCharge"
            case inkConsumeFullCharge = "InkConsumeFullCharge"
            case inkConsumeMinCharge = "InkConsumeMinCharge"
            case inkRecoverStop = "InkRecoverStop"
            case moveSpeedFullCharge = "MoveSpeedFullCharge"
        }
    }
    
    public struct FootSplashPaintParameter: Codable {
        public let depthMaxDropHeight: Double?
        public let depthMinDropHeight: Double?
        public let depthScaleMax: Double
        public let depthScaleMin: Double?
        public let widthHalf: Double?
        public let widthHalfNearest: Double
        
        public enum CodingKeys: String, CodingKey {
            case depthMaxDropHeight = "DepthMaxDropHeight"
            case depthMinDropHeight = "DepthMinDropHeight"
            case depthScaleMax = "DepthScaleMax"
            case depthScaleMin = "DepthScaleMin"
            case widthHalf = "WidthHalf"
            case widthHalfNearest = "WidthHalfNearest"
        }
    }
    
    public struct ShotGuideParameter: Codable {
        public let horizontalSightFrame: Int
        public let horizontalSphereIndex: Int
        public let verticalSightFrame: Int
        public let verticalSphereIndex: Int
        
        public enum CodingKeys: String, CodingKey {
            case horizontalSightFrame = "HorizontalSightFrame"
            case horizontalSphereIndex = "HorizontalSphereIndex"
            case verticalSightFrame = "VerticalSightFrame"
            case verticalSphereIndex = "VerticalSphereIndex"
        }
    }
    
    public struct SwingParameter: Codable {
        public let chargeMoveVelLimit: Double
        public let chargeSwingASFrame: Int?
        public let chargeSwingFrame: Int
        public let chargeSwingPostDelayFrame: Int
        public let chargeSwingShotBulletFrame: Int
        public let chargeSwingShotSlashFrame: Int
        public let chargeSwingStepShotBulletFrame: Int
        public let chargeSwingStepShotSlashFrame: Int
        public let inkConsume: Double
        public let inkRecoverStop: Int
        public let inkRecoverStop_ChargeSwing: Int
        public let isEnableStep: Bool?
        public let isShotEnable: Bool?
        public let reserveAcceptFrame: Int
        public let shotBulletOffset_L: XYZData?
        public let shotBulletOffset_R: XYZData?
        public let shotBulletOffset_Vertical: XYZData?
        public let shotSlashOffset_L: XYZData?
        public let shotSlashOffset_R: XYZData?
        public let shotSlashOffset_Vertical: XYZData?
        public let sideStepParam: SideStepParameter
        public let stepStartStickHistoryFrame: Int?
        public let stepStartStickThresholdY: Double?
        public let weakSwingASFrame: Int
        public let weakSwingFrame: Int
        public let weakSwingMoveVelLimit: Double
        public let weakSwingPostDelayFrame: Int
        public let weakSwingShotBulletFrame: Int
        public let weakSwingShotSlashFrame: Int
        
        public enum CodingKeys: String, CodingKey {
            case chargeMoveVelLimit = "ChargeMoveVelLimit"
            case chargeSwingASFrame = "ChargeSwingASFrame"
            case chargeSwingFrame = "ChargeSwingFrame"
            case chargeSwingPostDelayFrame = "ChargeSwingPostDelayFrame"
            case chargeSwingShotBulletFrame = "ChargeSwingShotBulletFrame"
            case chargeSwingShotSlashFrame = "ChargeSwingShotSlashFrame"
            case chargeSwingStepShotBulletFrame = "ChargeSwingStepShotBulletFrame"
            case chargeSwingStepShotSlashFrame = "ChargeSwingStepShotSlashFrame"
            case inkConsume = "InkConsume"
            case inkRecoverStop = "InkRecoverStop"
            case inkRecoverStop_ChargeSwing = "InkRecoverStop_ChargeSwing"
            case isEnableStep = "IsEnableStep"
            case isShotEnable = "IsShotEnable"
            case reserveAcceptFrame = "ReserveAcceptFrame"
            case shotBulletOffset_L = "ShotBulletOffset_L"
            case shotBulletOffset_R = "ShotBulletOffset_R"
            case shotBulletOffset_Vertical = "ShotBulletOffset_Vertical"
            case shotSlashOffset_L = "ShotSlashOffset_L"
            case shotSlashOffset_R = "ShotSlashOffset_R"
            case shotSlashOffset_Vertical = "ShotSlashOffset_Vertical"
            case sideStepParam = "SideStepParam"
            case stepStartStickHistoryFrame = "StepStartStickHistoryFrame"
            case stepStartStickThresholdY = "StepStartStickThresholdY"
            case weakSwingASFrame = "WeakSwingASFrame"
            case weakSwingFrame = "WeakSwingFrame"
            case weakSwingMoveVelLimit = "WeakSwingMoveVelLimit"
            case weakSwingPostDelayFrame = "WeakSwingPostDelayFrame"
            case weakSwingShotBulletFrame = "WeakSwingShotBulletFrame"
            case weakSwingShotSlashFrame = "WeakSwingShotSlashFrame"
        }
    }
}

extension Splatana.WeaponParameter.SwingParameter {
    public struct SideStepParameter: Codable {
        public let chargeFrame: Int
        public let inkConsume: Double?
        public let inkRecoverStop: Int?
        public let inputReqAcceptFrame: Int?
        public let moveDist: Double
        public let moveFrame: Int
        public let moveStepKd: Double
        public let repeatCnt: Int?
        public let slipMoveDistAir: Double?
        public let slipMoveDistGnd: Double?
        public let slipMoveFrame: Int?
        public let timeScale: Double?
        public let timeScaleFrm: Int?
        public let unrelaxFrameMove: Int?
        public let unrelaxFrameMoveLast: Int
        public let unrelaxFrameNoSideStep: Int?
        public let unrelaxFrameNoSideStepLast: Int
        public let unrelaxFrameNoSquid: Int?
        public let unrelaxFrameNoSquidLast: Int
        public let unrelaxFrameNoWeapon: Int?
        public let unrelaxFrameNoWeaponLast: Int
        public let unrelaxFrameOneMuzzle: Int?
        public let unrelaxFrameOneMuzzleLast: Int?
        
        public enum CodingKeys: String, CodingKey {
            case chargeFrame = "ChargeFrame"
            case inkConsume = "InkConsume"
            case inkRecoverStop = "InkRecoverStop"
            case inputReqAcceptFrame = "InputReqAcceptFrame"
            case moveDist = "MoveDist"
            case moveFrame = "MoveFrame"
            case moveStepKd = "MoveStepKd"
            case repeatCnt = "RepeatCnt"
            case slipMoveDistAir = "SlipMoveDistAir"
            case slipMoveDistGnd = "SlipMoveDistGnd"
            case slipMoveFrame = "SlipMoveFrame"
            case timeScale = "TimeScale"
            case timeScaleFrm = "TimeScaleFrm"
            case unrelaxFrameMove = "UnrelaxFrameMove"
            case unrelaxFrameMoveLast = "UnrelaxFrameMove_Last"
            case unrelaxFrameNoSideStep = "UnrelaxFrameNoSideStep"
            case unrelaxFrameNoSideStepLast = "UnrelaxFrameNoSideStep_Last"
            case unrelaxFrameNoSquid = "UnrelaxFrameNoSquid"
            case unrelaxFrameNoSquidLast = "UnrelaxFrameNoSquid_Last"
            case unrelaxFrameNoWeapon = "UnrelaxFrameNoWeapon"
            case unrelaxFrameNoWeaponLast = "UnrelaxFrameNoWeapon_Last"
            case unrelaxFrameOneMuzzle = "UnrelaxFrameOneMuzzle"
            case unrelaxFrameOneMuzzleLast = "UnrelaxFrameOneMuzzle_Last"
        }
    }

}
