//
//  Splatana.swift
//
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct Splatana: Codable {
    let bulletSaberHorizontalParam: BulletParameter
    let bulletSaberSlashHorizontalParam: BulletSlashParameter
    
    let bulletSaberSlashVerticalParam: BulletSlashParameter
    let bulletSaberVerticalParam: BulletParameter
    
    let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter?
    let mainWeaponSetting: MainWeaponSettings
    
    let weaponSaberParam: WeaponParameter
    
    enum CodingKeys: String, CodingKey {
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
    struct BulletParameter: Codable {
        let type: String
        let burstParam: BurstParameter
        let collisionParam: CollisionParameter
        let damageParam: DamageParameter
        let moveParam: MoveParameter
        let paintParam: PaintParameter?
        let splashPaintParam: SplashPaintParameter?
        let splashSpawnParam: SplashSpawnParameter
        let wallDropPaintParam: WallDropPaintParameter?
        
        enum CodingKeys: String, CodingKey {
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
    struct BurstParameter: Codable {
        let burstFrame: Int
        let isEmitSplash: Bool?
        let splashColRadius: Double?
        let splashDrawRadius: Double?
        let splashPaintRadius: Double
        
        enum CodingKeys: String, CodingKey {
            case burstFrame = "BurstFrame"
            case isEmitSplash = "IsEmitSplash"
            case splashColRadius = "SplashColRadius"
            case splashDrawRadius = "SplashDrawRadius"
            case splashPaintRadius = "SplashPaintRadius"
        }
    }
    
    struct CollisionParameter: Codable {
        let coreIndex: Int
        let offsetArray: [XYZData]
        let paramArray: [ParameterItem]
        
        enum CodingKeys: String, CodingKey {
            case coreIndex = "CoreIndex"
            case offsetArray = "OffsetArray"
            case paramArray = "ParamArray"
        }
    }
    
    struct DamageParameter: Codable {
        let hasGuard: Bool?
        let hitDamage: Int
        
        enum CodingKeys: String, CodingKey {
            case hasGuard = "HasGuard"
            case hitDamage = "HitDamage"
        }
    }
    
    struct MoveParameter: Codable {
        let brakeAirResist: Double?
        let brakeGravity: Double
        let brakeToFreeStartFrame: Int?
        let brakeToFreeVelocityXZ: Double?
        let brakeToFreeVelocityY: Double?
        let freeAirResist: Double?
        let freeGravity: Double
        let goStraightStateEndMaxSpeed: Double?
        let goStraightToBrakeStartFrame: Int
        let spawnSpeed: Double
        
        enum CodingKeys: String, CodingKey {
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
    
    struct PaintParameter: Codable {
        let castPaintDistance: Double?
        let depthScaleMax: Double?
        let depthScaleMin: Double?
        let paintDegreeMax: Double?
        let widthHalf: Double
        
        enum CodingKeys: String, CodingKey {
            case castPaintDistance = "CastPaintDistance"
            case depthScaleMax = "DepthScaleMax"
            case depthScaleMin = "DepthScaleMin"
            case paintDegreeMax = "PaintDegreeMax"
            case widthHalf = "WidthHalf"
        }
    }
    
    struct SplashPaintParameter: Codable {
        let depthScaleMax: Double?
        let depthScaleMin: Double?
        let widthHalf: Double
        let widthHalfNearest: Double?
        
        enum CodingKeys: String, CodingKey {
            case depthScaleMax = "DepthScaleMax"
            case depthScaleMin = "DepthScaleMin"
            case widthHalf = "WidthHalf"
            case widthHalfNearest = "WidthHalfNearest"
        }
    }
    
    struct SplashSpawnParameter: Codable {
        let dropInterval: Double
        let nearestLen: Double?
        let splashNumMax: Int
        let splitNum: Int?
        
        enum CodingKeys: String, CodingKey {
            case dropInterval = "DropInterval"
            case nearestLen = "NearestLen"
            case splashNumMax = "SplashNumMax"
            case splitNum = "SplitNum"
        }
    }
    
    struct WallDropPaintParameter: Codable {
        let paintRadiusShock: Double
        
        enum CodingKeys: String, CodingKey {
            case paintRadiusShock = "PaintRadiusShock"
        }
    }
}

extension Splatana.BulletParameter.CollisionParameter {
    struct ParameterItem: Codable {
        let chargeFrameForField: Int?
        let chargeFrameForPlayer: Int?
        let endRadiusForField: Double
        let endRadiusForPlayer: Double
        let friendThroughFrameForPlayer: Int?
        let initRadiusForField: Double
        let initRadiusForPlayer: Double
        
        enum CodingKeys: String, CodingKey {
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
    struct BulletSlashParameter: Codable {
        let type: String
        let damageParam: DamageParameter
        let moveParam: MoveParameter
        let shapeParam: ShapeParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case damageParam = "DamageParam"
            case moveParam = "MoveParam"
            case shapeParam = "ShapeParam"
        }
    }
}

extension Splatana.BulletSlashParameter {
    struct DamageParameter: Codable {
        let accelForCastle: Double?
        let damageValue: Int
        let isPenetrate: Bool?
        
        enum CodingKeys: String, CodingKey {
            case accelForCastle = "AccelForCastle"
            case damageValue = "DamageValue"
            case isPenetrate = "IsPenetrate"
        }
    }
    
    struct MoveParameter: Codable {
        let aliveFrame: Int
        
        enum CodingKeys: String, CodingKey {
            case aliveFrame = "AliveFrame"
        }
    }
    
    struct ShapeParameter: Codable {
        let boxCenter: XYZData
        let boxHalfExtents: XYZData
        let cylinderCenterA: XYZData?
        let cylinderCenterB: XYZData?
        let cylinderRadius: Double?
        let hasCylinderShape: Bool?
        
        enum CodingKeys: String, CodingKey {
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
    struct WeaponParameter: Codable {
        let type: String
        let chargeKeepParam: ChargeKeepParameter?
        let chargeParam: ChargeParameter
        let footSplashPaintParam: FootSplashPaintParameter
        let isEnableChargeKeep: Bool?
        let shotGuideParam: ShotGuideParameter
        let swingParam: SwingParameter
        
        enum CodingKeys: String, CodingKey {
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
    struct ChargeKeepParameter: Codable {
        let keepChargePreDelayFrame: Int
        
        enum CodingKeys: String, CodingKey {
            case keepChargePreDelayFrame = "KeepChargePreDelayFrame"
        }
    }
    
    struct ChargeParameter: Codable {
        let airChargeRateByInkEmpty: Int?
        let chargeFrameFullCharge: Int
        let chargeFrameMinCharge: Int
        let inkConsumeFullCharge: Double
        let inkConsumeMinCharge: Double
        let inkRecoverStop: Int
        let moveSpeedFullCharge: Double?
        
        enum CodingKeys: String, CodingKey {
            case airChargeRateByInkEmpty = "AirChargeRateByInkEmpty"
            case chargeFrameFullCharge = "ChargeFrameFullCharge"
            case chargeFrameMinCharge = "ChargeFrameMinCharge"
            case inkConsumeFullCharge = "InkConsumeFullCharge"
            case inkConsumeMinCharge = "InkConsumeMinCharge"
            case inkRecoverStop = "InkRecoverStop"
            case moveSpeedFullCharge = "MoveSpeedFullCharge"
        }
    }
    
    struct FootSplashPaintParameter: Codable {
        let depthMaxDropHeight: Double?
        let depthMinDropHeight: Double?
        let depthScaleMax: Double
        let depthScaleMin: Double?
        let widthHalf: Double?
        let widthHalfNearest: Double
        
        enum CodingKeys: String, CodingKey {
            case depthMaxDropHeight = "DepthMaxDropHeight"
            case depthMinDropHeight = "DepthMinDropHeight"
            case depthScaleMax = "DepthScaleMax"
            case depthScaleMin = "DepthScaleMin"
            case widthHalf = "WidthHalf"
            case widthHalfNearest = "WidthHalfNearest"
        }
    }
    
    struct ShotGuideParameter: Codable {
        let horizontalSightFrame: Int
        let horizontalSphereIndex: Int
        let verticalSightFrame: Int
        let verticalSphereIndex: Int
        
        enum CodingKeys: String, CodingKey {
            case horizontalSightFrame = "HorizontalSightFrame"
            case horizontalSphereIndex = "HorizontalSphereIndex"
            case verticalSightFrame = "VerticalSightFrame"
            case verticalSphereIndex = "VerticalSphereIndex"
        }
    }
    
    struct SwingParameter: Codable {
        let chargeMoveVelLimit: Double
        let chargeSwingASFrame: Int?
        let chargeSwingFrame: Int
        let chargeSwingPostDelayFrame: Int
        let chargeSwingShotBulletFrame: Int
        let chargeSwingShotSlashFrame: Int
        let chargeSwingStepShotBulletFrame: Int
        let chargeSwingStepShotSlashFrame: Int
        let inkConsume: Double
        let inkRecoverStop: Int
        let inkRecoverStop_ChargeSwing: Int
        let isEnableStep: Bool?
        let isShotEnable: Bool?
        let reserveAcceptFrame: Int
        let shotBulletOffset_L: XYZData?
        let shotBulletOffset_R: XYZData?
        let shotBulletOffset_Vertical: XYZData?
        let shotSlashOffset_L: XYZData?
        let shotSlashOffset_R: XYZData?
        let shotSlashOffset_Vertical: XYZData?
        let sideStepParam: SideStepParameter
        let stepStartStickHistoryFrame: Int?
        let stepStartStickThresholdY: Double?
        let weakSwingASFrame: Int
        let weakSwingFrame: Int
        let weakSwingMoveVelLimit: Double
        let weakSwingPostDelayFrame: Int
        let weakSwingShotBulletFrame: Int
        let weakSwingShotSlashFrame: Int
        
        enum CodingKeys: String, CodingKey {
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
    struct SideStepParameter: Codable {
        let chargeFrame: Int
        let inkConsume: Double?
        let inkRecoverStop: Int?
        let inputReqAcceptFrame: Int?
        let moveDist: Double
        let moveFrame: Int
        let moveStepKd: Double
        let repeatCnt: Int?
        let slipMoveDistAir: Double?
        let slipMoveDistGnd: Double?
        let slipMoveFrame: Int?
        let timeScale: Double?
        let timeScaleFrm: Int?
        let unrelaxFrameMove: Int?
        let unrelaxFrameMoveLast: Int
        let unrelaxFrameNoSideStep: Int?
        let unrelaxFrameNoSideStepLast: Int
        let unrelaxFrameNoSquid: Int?
        let unrelaxFrameNoSquidLast: Int
        let unrelaxFrameNoWeapon: Int?
        let unrelaxFrameNoWeaponLast: Int
        let unrelaxFrameOneMuzzle: Int?
        let unrelaxFrameOneMuzzleLast: Int?
        
        enum CodingKeys: String, CodingKey {
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
