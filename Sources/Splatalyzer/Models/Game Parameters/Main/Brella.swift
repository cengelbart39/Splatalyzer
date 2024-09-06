//
//  Brella.swift
//
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

/// Represents the game parameter data of a main weapon in the
/// Brella Class.
///
/// To see a representative `JSON` go to
/// `Resources/weapon-json/` and find a file prefixed with
/// `WeaponShelter`.
public struct Brella: MainWeaponable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: MainParametable {
        public let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter?
        public let mainWeaponSetting: MainWeaponSettings
        
        public let bulletShelterCanopyParam: BulletCanopyParameter
        public let bulletShelterShotgunParam: BulletShotgunParameter
        
        public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
        
        public let weaponShelterCanopyParam: CanopyParameter
        public let weaponShelterShotgunParam: ShotgunParameter
        
        public enum CodingKeys: String, CodingKey {
            case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
            case mainWeaponSetting = "MainWeaponSetting"
            case bulletShelterCanopyParam = "spl__BulletShelterCanopyParam"
            case bulletShelterShotgunParam = "spl__BulletShelterShotgunParam"
            case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
            case weaponShelterCanopyParam = "spl__WeaponShelterCanopyParam"
            case weaponShelterShotgunParam = "spl__WeaponShelterShotgunParam"
        }
    }
}

extension Brella.Parameters {
    public struct BulletCanopyParameter: Parametable {
        public let type: String
        public let canopyAttackedDamageRate: Double?
        public let canopyColRadius: Double?
        public let canopyCureHPPerFrame: Int?
        public let canopyDamage: Int?
        public let canopyFrame: Int?
        public let canopyGravity: Double
        public let canopyHP: Int?
        public let canopyHitOtherCanopyDamage: Int?
        public let canopyHitOtherCanopyVolume: Int?
        public let canopyHitShieldAttackDamage: Int?
        public let canopyHitShieldReceiveDamage: Int?
        public let canopyInitSpeed: Double?
        public let canopyMoveKnockBackSideStepRate: Double?
        public let canopyNakedFrame: Int?
        public let canopyPaintRadius: Double?
        public let canopySpeedAirAddScaleXZ: Double
        public let canopySpeedGroundAddScale: Double
        public let footSplashPaintRadius: Double?
        public let footSplashShapeCastOffset: Double
        public let footSplashSpanFrame: Int?
        public let footSplashWaitFrame: Int?
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case canopyAttackedDamageRate = "CanopyAttackedDamageRate"
            case canopyColRadius = "CanopyColRadius"
            case canopyCureHPPerFrame = "CanopyCureHPPerFrame"
            case canopyDamage = "CanopyDamage"
            case canopyFrame = "CanopyFrame"
            case canopyGravity = "CanopyGravity"
            case canopyHP = "CanopyHP"
            case canopyHitOtherCanopyDamage = "CanopyHitOtherCanopyDamage"
            case canopyHitOtherCanopyVolume = "CanopyHitOtherCanopyVolume"
            case canopyHitShieldAttackDamage = "CanopyHitShieldAttackDamage"
            case canopyHitShieldReceiveDamage = "CanopyHitShieldReceiveDamage"
            case canopyInitSpeed = "CanopyInitSpeed"
            case canopyMoveKnockBackSideStepRate = "CanopyMoveKnockBackSideStepRate"
            case canopyNakedFrame = "CanopyNakedFrame"
            case canopyPaintRadius = "CanopyPaintRadius"
            case canopySpeedAirAddScaleXZ = "CanopySpeedAirAddScaleXZ"
            case canopySpeedGroundAddScale = "CanopySpeedGroundAddScale"
            case footSplashPaintRadius = "FootSplashPaintRadius"
            case footSplashShapeCastOffset = "FootSplashShapeCastOffset"
            case footSplashSpanFrame = "FootSplashSpanFrame"
            case footSplashWaitFrame = "FootSplashWaitFrame"
        }
    }
}

extension Brella.Parameters {
    public struct BulletShotgunParameter: Parametable {
        public let type: String
        public let damageEffectiveTotalMax: Int
        public let groupParams: [GroupParameter]
        public let shotgunWallDropCollisionParam: WallDropCollisionParameter?
        public let shotgunWallDropMoveParam: WallDropMoveParameter
        public let splashParam: SplashParameter
        public let splashWallDropCollisionParam: SplashWallDropCollisionParameter
        public let splashWallDropMoveParam: SplashWallDropMoveParameter
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case damageEffectiveTotalMax = "DamageEffectiveTotalMax"
            case groupParams = "GroupParams"
            case shotgunWallDropCollisionParam = "ShotgunWallDropCollisionParam"
            case shotgunWallDropMoveParam = "ShotgunWallDropMoveParam"
            case splashParam = "SplashParam"
            case splashWallDropCollisionParam = "SplashWallDropCollisionParam"
            case splashWallDropMoveParam = "SplashWallDropMoveParam"
        }
    }
}

extension Brella.Parameters.BulletShotgunParameter {
    public struct GroupParameter: Parametable {
        public let addDegree: Double?
        public let collisionParam: CollisionParameter?
        public let damageParam: GroupDamageParameter
        public let drawRadius: Double?
        public let horizontalDegree: Double
        public let horizontalOffset: Double
        public let initVelRandom: Double?
        public let moveParam: GroupMoveParameter
        public let paintParam: GroupPaintParameter?
        public let totalNum: Int
        public let verticalDegree: Double
        public let verticalOffset: Double
        
        public enum CodingKeys: String, CodingKey {
            case addDegree = "AddDegree"
            case collisionParam = "CollisionParam"
            case damageParam = "DamageParam"
            case drawRadius = "DrawRadius"
            case horizontalDegree = "HorizontalDegree"
            case horizontalOffset = "HorizontalOffset"
            case initVelRandom = "InitVelRandom"
            case moveParam = "MoveParam"
            case paintParam = "PaintParam"
            case totalNum = "TotalNum"
            case verticalDegree = "VerticalDegree"
            case verticalOffset = "VerticalOffset"
        }
    }
    
    public struct WallDropCollisionParameter: Parametable {
        public let paintRadiusShock: Double
        
        public enum CodingKeys: String, CodingKey {
            case paintRadiusShock = "PaintRadiusShock"
        }
    }
    
    public struct WallDropMoveParameter: Parametable {
        public let fallPeriodFirstFrameMax: Int
        public let fallPeriodFirstFrameMin: Int
        public let fallPeriodFirstTargetSpeed: Double
        public let fallPeriodLastFrameMax: Int
        public let fallPeriodLastFrameMin: Int
        
        public enum CodingKeys: String, CodingKey {
            case fallPeriodFirstFrameMax = "FallPeriodFirstFrameMax"
            case fallPeriodFirstFrameMin = "FallPeriodFirstFrameMin"
            case fallPeriodFirstTargetSpeed = "FallPeriodFirstTargetSpeed"
            case fallPeriodLastFrameMax = "FallPeriodLastFrameMax"
            case fallPeriodLastFrameMin = "FallPeriodLastFrameMin"
        }
    }
    
    public struct SplashParameter: Parametable {
        public let createSplashLength: Double?
        public let createSplashNum: Int?
        public let splashPaintDepthScaleFullActive: Double
        public let splashPaintDepthScaleOneActive: Double
        public let splashPaintWidthFullActive: Double
        public let splashPaintWidthOneActive: Double
        
        public enum CodingKeys: String, CodingKey {
            case createSplashLength = "CreateSplashLength"
            case createSplashNum = "CreateSplashNum"
            case splashPaintDepthScaleFullActive = "SplashPaintDepthScaleFullActive"
            case splashPaintDepthScaleOneActive = "SplashPaintDepthScaleOneActive"
            case splashPaintWidthFullActive = "SplashPaintWidthFullActive"
            case splashPaintWidthOneActive = "SplashPaintWidthOneActive"
        }
    }
    
    public struct SplashWallDropCollisionParameter: Parametable {
        public let paintRadiusFall: Double
        public let paintRadiusGround: Double
        public let paintRadiusShock: Double
        
        public enum CodingKeys: String, CodingKey {
            case paintRadiusFall = "PaintRadiusFall"
            case paintRadiusGround = "PaintRadiusGround"
            case paintRadiusShock = "PaintRadiusShock"
        }
    }
    
    public struct SplashWallDropMoveParameter: Parametable {
        public let fallPeriodFirstFrameMax: Int
        public let fallPeriodFirstTargetSpeed: Double
        public let fallPeriodLastFrameMax: Int
        public let fallPeriodLastFrameMin: Int
        public let fallPeriodSecondFrame: Int
        public let fallPeriodSecondTargetSpeed: Double
        
        public enum CodingKeys: String, CodingKey {
            case fallPeriodFirstFrameMax = "FallPeriodFirstFrameMax"
            case fallPeriodFirstTargetSpeed = "FallPeriodFirstTargetSpeed"
            case fallPeriodLastFrameMax = "FallPeriodLastFrameMax"
            case fallPeriodLastFrameMin = "FallPeriodLastFrameMin"
            case fallPeriodSecondFrame = "FallPeriodSecondFrame"
            case fallPeriodSecondTargetSpeed = "FallPeriodSecondTargetSpeed"
        }
    }
}

extension Brella.Parameters.BulletShotgunParameter.GroupParameter {
    public struct CollisionParameter: Parametable {
        public let endRadiusForField: Double
        public let endRadiusForPlayer: Double
        public let initRadiusForField: Double
        public let initRadiusForPlayer: Double
        
        public enum CodingKeys: String, CodingKey {
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }
    
    public struct GroupDamageParameter: Parametable {
        public let reduceEndFrame: Int?
        public let reduceStartFrame: Int?
        public let valueMax: Int
        public let valueMin: Int
        
        public enum CodingKeys: String, CodingKey {
            case reduceEndFrame = "ReduceEndFrame"
            case reduceStartFrame = "ReduceStartFrame"
            case valueMax = "ValueMax"
            case valueMin = "ValueMin"
        }
    }
    
    public struct GroupMoveParameter: Parametable {
        public let brakeGravity: Double?
        public let goStraightStateEndMaxSpeed: Double
        public let goStraightToBrakeStateFrame: Int
        public let spawnSpeed: Double?
        
        public enum CodingKeys: String, CodingKey {
            case brakeGravity = "BrakeGravity"
            case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
            case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
            case spawnSpeed = "SpawnSpeed"
        }
    }
    
    public struct GroupPaintParameter: Parametable {
        public let distanceNear: Double?
        public let widthHalfFar: Double?
        public let widthHalfMiddle: Double?
        public let widthHalfNear: Double?
        
        public enum CodingKeys: String, CodingKey {
            case distanceNear = "DistanceNear"
            case widthHalfFar = "WidthHalfFar"
            case widthHalfMiddle = "WidthHalfMiddle"
            case widthHalfNear = "WidthHalfNear"
        }
    }
}

extension Brella.Parameters {
    public struct SpawnBulletAdditionMovePlayerParameter: Parametable {
        public let type: String
        public let zRate: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case zRate = "ZRate"
        }
    }
}

extension Brella.Parameters {
    public struct CanopyParameter: Parametable {
        public let type: String
        public let canopyChargeFrame: Int?
        public let canopyDirXZDiffDegH: Double?
        public let canopyDirXZDiffDegL: Double?
        public let canopyDirXZRotDegBias: Double?
        public let canopyDirXZRotDegH: Double?
        public let canopyDirXZRotDegL: Double?
        public let canopyNakedFrame: Int?
        public let canopyOpenEndBias: Double?
        public let canopyOpenEndOffset: Double
        public let canopyOpenFrame: Int?
        public let canopyOpenStartOffset: Double
        public let canopyShotFrame: Int?
        public let inkConsumeUmbrella: Double
        public let isAlwaysNaked: Bool?
        public let isCanopyShot: Bool?
        public let isRecoverCanopyByKill: Bool?
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case canopyChargeFrame = "CanopyChargeFrame"
            case canopyDirXZDiffDegH = "CanopyDirXZ_DiffDeg_H"
            case canopyDirXZDiffDegL = "CanopyDirXZ_DiffDeg_L"
            case canopyDirXZRotDegBias = "CanopyDirXZ_RotDegBias"
            case canopyDirXZRotDegH = "CanopyDirXZ_RotDeg_H"
            case canopyDirXZRotDegL = "CanopyDirXZ_RotDeg_L"
            case canopyNakedFrame = "CanopyNakedFrame"
            case canopyOpenEndBias = "CanopyOpenEndBias"
            case canopyOpenEndOffset = "CanopyOpenEndOffset"
            case canopyOpenFrame = "CanopyOpenFrame"
            case canopyOpenStartOffset = "CanopyOpenStartOffset"
            case canopyShotFrame = "CanopyShotFrame"
            case inkConsumeUmbrella = "InkConsumeUmbrella"
            case isAlwaysNaked = "IsAlwaysNaked"
            case isCanopyShot = "IsCanopyShot"
            case isRecoverCanopyByKill = "IsRecoverCanopyByKill"
        }
    }
}

extension Brella.Parameters {
    public struct ShotgunParameter: Parametable {
        public let type: String
        public let inkConsume: Double?
        public let inkRecoverStop: Int?
        public let inkRecoverStopCharge: Int?
        public let jumpGndCharge: Double
        public let moveSpeed: Double
        public let moveSpeedCharge: Double
        public let postDelayFrameMain: Int?
        public let postDelayFrameMoveLmt: Int?
        public let postNoShotReqFrame: Int?
        public let preDelayFrameHumanMain: Int?
        public let preDelayFrameSquidMain: Int?
        public let repeatFrame: Int
        public let shotGuideFrame: Int?
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case inkConsume = "InkConsume"
            case inkRecoverStop = "InkRecoverStop"
            case inkRecoverStopCharge = "InkRecoverStopCharge"
            case jumpGndCharge = "JumpGndCharge"
            case moveSpeed = "MoveSpeed"
            case moveSpeedCharge = "MoveSpeedCharge"
            case postDelayFrameMain = "PostDelayFrame_Main"
            case postDelayFrameMoveLmt = "PostDelayFrame_MoveLmt"
            case postNoShotReqFrame = "PostNoShotReqFrame"
            case preDelayFrameHumanMain = "PreDelayFrame_HumanMain"
            case preDelayFrameSquidMain = "PreDelayFrame_SquidMain"
            case repeatFrame = "RepeatFrame"
            case shotGuideFrame = "ShotGuideFrame"
        }
    }
}
