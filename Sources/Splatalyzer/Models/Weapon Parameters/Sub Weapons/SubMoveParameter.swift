//
//  SubMoveParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SubMoveParameter: Codable {
    let type: String
    let baseSpeedComeOverRate: Double?
    let baseSpeedComeUnderRate: Double?
    let baseSpeedMinCharge: Double?
    let beforeRotateFrame: Int?
    let burstFrame: Int?
    let blastParamArray: [SubBlastParameter]?
    let burstSeFrameArray: [Int]?
    let burstTimingSpeedStartRestFrame: Int?
    let burstTimingSpeedStopBias: Double?
    let burstWaitFrameArray: [Int]?
    let burstWarnFrameArray: [Int]?
    let chaseAirMaxSpeedXZ: Double?
    let chaseAirMaxSpeedY: Double?
    let chaseBurstWaitFrame: Int?
    let chaseFrame: Int?
    let chaseGroundAddSpeedPerFrame: Double?
    let chaseGroundMaxSpeed: Double?
    let chasePitchDegree: Double?
    let chaseRollDegree: Double?
    let chaseYawDegree: Double?
    let chargeFrameArray: [Int]?
    let collisionSeSilentFrame: Int?
    let collisionSESpanFrame: Int?
    let collisionSeVelDotGndNrm: Double?
    let collisionSEVelDotGroundNrm: Double?
    let contactDashPanel: SubMoveContactDashPanel?
    let contactJumpPanel: SubMoveContactJumpPanel?
    let damageDirectHit: Int?
    let damageDirectSpanSecond: Double?
    let damageSpanFrame: Int?
    let deathTargetApprouchDistance: Double?
    let findApproachBurstWaitFrame: Int?
    let findCollisionStartRadiusRate: Double?
    let findRotateFrame: Int?
    let findSpawnSplashAroundParam: SubBlastSplashAroundParameter?
    let flyGravity: Double?
    let flyHitWallPitchToPlane: Double?
    let flyHitWallReboundResetFrame: Int?
    let flyPositionAirResist: Double?
    let flyRotateAirResist: Double?
    let flySplashDistanceArray: [Double]?
    let flySplashPaintParamArray: SubMoveFlySplashPaintParameter?
    let flySplashPaintRadiusArray: [Double]?
    let groundGravity: Double?
    let groundPositionAirResist: Double?
    let groundPositionDeg50AirResist: Double?
    let groundPositionHorizonAirResist: Double?
    let groundRotateDeg50AirResist: Double?
    let groundRotateHorizonAirResist: Double?
    let guideHitCollisionType: String?
    let guideRadius: Double?
    let hitVerticalWallReboundMaxRate: Double?
    let knockBackParam: AttackKnockbackParameter?
    let markingFrameSubSpec: SubHighMiddleLow?
    let maxHP: SubHighMiddleLow?
    let maxPlaceNum: Int?
    let modelRotateHitWall45Degree: Double?
    let modelRotateReduceDegree: Double?
    let noReceiveTargetBurstWaitFrame: Int?
    let objColDamage: Int?
    let paintBurstRadiusBias: Double?
    let paintCheckHeight: Double?
    let paintRadiusBias: Double?
    let paintRadiusMaxCharge: Double?
    let paintRadiusMinCharge: Double?
    let placePaintRadius: Double?
    let sensorRadius: SubHighMiddleLow?
    let spawnRotatePitch: Double?
    let spawnRotateRoll: Double?
    let spawnSpeedY: Double?
    let spawnSpeedYMaxCharge: Double?
    let spawnSpeedYWorldMin: Double?
    let spawnSpeedZMaxCharge: Double?
    let spawnSpeedZSpecUp: SubHighMiddleLow
    let unfindBurstWaitFrame: Int?
    let warningAnimRestFrame: Int?
    let warningSERestFrame: Int?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case baseSpeedComeOverRate = "BaseSpeedComeOverRate"
        case baseSpeedComeUnderRate = "BaseSpeedComeUnderRate"
        case baseSpeedMinCharge = "BaseSpeedMinCharge"
        case beforeRotateFrame = "BeforeRotateFrame"
        case burstFrame = "BurstFrame"
        case blastParamArray = "BlastParamArray"
        case burstSeFrameArray = "BurstSeFrameArray"
        case burstTimingSpeedStartRestFrame = "BurstTimingSpeedStartRestFrame"
        case burstTimingSpeedStopBias = "BurstTimingSpeedStopBias"
        case burstWaitFrameArray = "BurstWaitFrameArray"
        case burstWarnFrameArray = "BurstWarnFrameArray"
        case chaseAirMaxSpeedXZ = "ChaseAirMaxSpeedXZ"
        case chaseAirMaxSpeedY = "ChaseAirMaxSpeedY"
        case chaseBurstWaitFrame = "ChaseBurstWaitFrame"
        case chaseFrame = "ChaseFrame"
        case chaseGroundAddSpeedPerFrame = "ChaseGroundAddSpeedPerFrame"
        case chaseGroundMaxSpeed = "ChaseGroundMaxSpeed"
        case chasePitchDegree = "ChasePitchDegree"
        case chaseRollDegree = "ChaseRollDegree"
        case chaseYawDegree = "ChaseYawDegree"
        case chargeFrameArray = "ChargeFrameArray"
        case collisionSeSilentFrame = "CollisionSeSilentFrame"
        case collisionSESpanFrame = "CollisionSESpanFrame"
        case collisionSeVelDotGndNrm = "CollisionSeVelDotGndNrm"
        case collisionSEVelDotGroundNrm = "CollisionSEVelDotGroundNrm"
        case contactDashPanel = "ContactDashPanel"
        case contactJumpPanel = "ContactJumpPanel"
        case damageDirectHit = "DamageDirectHit"
        case damageDirectSpanSecond = "DamageDirectSpanSecond"
        case damageSpanFrame = "DamageSpanFrame"
        case deathTargetApprouchDistance = "DeathTargetApprouchDistance"
        case findApproachBurstWaitFrame = "FindApproachBurstWaitFrame"
        case findCollisionStartRadiusRate = "FindCollisionStartRadiusRate"
        case findRotateFrame = "FindRotateFrame"
        case findSpawnSplashAroundParam = "FindSpawnSplashAroundParam"
        case flyGravity = "FlyGravity"
        case flyHitWallPitchToPlane = "FlyHitWallPitchToPlane"
        case flyHitWallReboundResetFrame = "FlyHitWallReboundResetFrame"
        case flyPositionAirResist = "FlyPositionAirResist"
        case flyRotateAirResist = "FlyRotateAirResist"
        case flySplashDistanceArray = "FlySplashDistanceArray"
        case flySplashPaintParamArray = "FlySplashPaintParamArray"
        case flySplashPaintRadiusArray = "FlySplashPaintRadiusArray"
        case groundGravity = "GroundGravity"
        case groundPositionAirResist = "GroundPositionAirResist"
        case groundPositionDeg50AirResist = "GroundPositionDeg50AirResist"
        case groundPositionHorizonAirResist = "GroundPositionHorizonAirResist"
        case groundRotateDeg50AirResist = "GroundRotateDeg50AirResist"
        case groundRotateHorizonAirResist = "GroundRotateHorizonAirResist"
        case guideHitCollisionType = "GuideHitCollisionType"
        case guideRadius = "GuideRadius"
        case hitVerticalWallReboundMaxRate = "HitVerticalWallReboundMaxRate"
        case knockBackParam = "KnockBackParam"
        case markingFrameSubSpec = "MarkingFrameSubSpec"
        case maxHP = "MaxHP"
        case maxPlaceNum = "MaxPlaceNum"
        case modelRotateHitWall45Degree = "ModelRotateHitWall45Degree"
        case modelRotateReduceDegree = "ModelRotateReduceDegree"
        case noReceiveTargetBurstWaitFrame = "NoReceiveTargetBurstWaitFrame"
        case objColDamage = "ObjColDamage"
        case paintBurstRadiusBias = "PaintBurstRadiusBias"
        case paintCheckHeight = "PaintCheckHeight"
        case paintRadiusBias = "PaintRadiusBias"
        case paintRadiusMaxCharge = "PaintRadiusMaxCharge"
        case paintRadiusMinCharge = "PaintRadiusMinCharge"
        case placePaintRadius = "PlacePaintRadius"
        case sensorRadius = "SensorRadius"
        case spawnRotatePitch = "SpawnRotatePitch"
        case spawnRotateRoll = "SpawnRotateRoll"
        case spawnSpeedY = "SpawnSpeedY"
        case spawnSpeedYMaxCharge = "SpawnSpeedYMaxCharge"
        case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
        case spawnSpeedZMaxCharge = "SpawnSpeedZMaxCharge"
        case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        case unfindBurstWaitFrame = "UnfindBurstWaitFrame"
        case warningAnimRestFrame = "WarningAnimRestFrame"
        case warningSERestFrame = "WarningSERestFrame"
    }
}

struct SubMoveContactDashPanel: Codable {
    let addSpeedPerImpact: Double
    let addSpeedSequenceFrameRate: Double?
    let impactDirectionSaveSpeedRate: Double?
    
    enum CodingKeys: String, CodingKey {
        case addSpeedPerImpact = "AddSpeedPerImpact"
        case addSpeedSequenceFrameRate = "AddSpeedSequenceFrameRate"
        case impactDirectionSaveSpeedRate = "ImpactDirectionSaveSpeedRate"
    }
}

struct SubMoveContactJumpPanel: Codable {
    let addSpeedOneBoundRate: Double
    let addSpeedPerImpact: Double
    let maxBoundNum: Int
    
    enum CodingKeys: String, CodingKey {
        case addSpeedOneBoundRate = "AddSpeedOneBoundRate"
        case addSpeedPerImpact = "AddSpeedPerImpact"
        case maxBoundNum = "MaxBoundNum"
    }
}

struct SubMoveFlySplashPaintParameter: Codable {
    let depthMaxDropHeight: Double?
    let depthMinDropHeight: Double?
    let depthScaleMax: Double
    let depthScaleMin: Double
    let widthHalf: Double
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
