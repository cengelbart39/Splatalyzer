//
//  Slosher.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct Slosher: Codable {
    let blastParam: BlastParameter?
    let bounceGroupParam: BounceGroupParameter?
    let mainEffectiveRangeUp: MainEffectiveRangeUpParameter
    let mainWeaponSetting: MainWeaponSettings
    let nearestParam: NearestParameter
    let splashSlosherScatterParam: SplashScatterParameter?
    let splashSlosherSpiralParam: SplashSpiralParameter?
    let unitGroupParam: UnitGroupParameter
    let weaponParam: WeaponParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case blastParam = "BlastParam"
        case bounceGroupParam = "BounceGroupParam"
        case mainEffectiveRangeUp = "MainEffectiveRangeUpParam"
        case mainWeaponSetting = "MainWeaponSetting"
        case nearestParam = "NearestParam"
        case splashSlosherScatterParam = "SplashSlosherScatterParam"
        case splashSlosherSpiralParam = "SplashSlosherSpiralParam"
        case unitGroupParam = "UnitGroupParam"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
}

extension Slosher {
    struct BlastParameter: Codable {
        let type: String
        let blastParam: BlastInnerParameter
        let distanceFar: Double
        let distanceNear: Double
        let paintRadiusFar: Double
        let paintRadiusNear: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case blastParam = "BlastParam"
            case distanceFar = "DistanceFar"
            case distanceNear = "DistanceNear"
            case paintRadiusFar = "PaintRadiusFar"
            case paintRadiusNear = "PaintRadiusNear"
        }
    }
}

extension Slosher.BlastParameter {
    struct BlastInnerParameter: Codable {
        let collisionRadiusForPaint: Double
        let crossPaintCheckLength: Double
        let crossPaintRadius: Double
        let damageAttackerPriority: Bool
        let damageOffsetY: Double
        let distanceDamage: [DistanceDamage]
        let knockBackParam: KnockbackParameter
        let paintOffsetY: Double
        let paintRadius: Double
        
        enum CodingKeys: String, CodingKey {
            case collisionRadiusForPaint = "CollisionRadiusForPaint"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case damageAttackerPriority = "DamageAttackerPriority"
            case damageOffsetY = "DamageOffsetY"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintOffsetY = "PaintOffsetY"
            case paintRadius = "PaintRadius"
        }
    }
}

extension Slosher {
    struct BounceGroupParameter: Codable {
        let type: String
        let bounceParam: [BounceParameter]
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case bounceParam = "BounceParam"
        }
    }
}

extension Slosher.BounceGroupParameter {
    struct BounceParameter: Codable {
        let afterOffsetPaintRadiusFirstBnce: Double?
        let bounceAfterMaxSpeed: Double?
        let paintRadiusFirstBounce: Double
        let unitOrderNum: Int?
        
        enum CodingKeys: String, CodingKey {
            case afterOffsetPaintRadiusFirstBnce = "AfterOffsetPaintRadiusFirstBnce"
            case bounceAfterMaxSpeed = "BounceAfterMaxSpeed"
            case paintRadiusFirstBounce = "PaintRadiusFirstBounce"
            case unitOrderNum = "UnitOrderNum"
        }
    }
}

extension Slosher {
    struct CollisionParameter: Codable {
        let endRadiusForField: Double?
        let endRadiusForPlayer: Double
        let initRadiusForField: Double?
        let initRadiusForPlayer: Double
        
        enum CodingKeys: String, CodingKey {
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }
}

extension Slosher {
    struct NearestParameter: Codable {
        let type: String
        let drawSizeCollisionPaintParam: DrawSizeCollisionPaintParameter
        let spawnOffset: XYData
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case drawSizeCollisionPaintParam = "DrawSizeCollisionPaintParam"
            case spawnOffset = "SpawnOffset"
        }
    }
}

extension Slosher.NearestParameter {
    struct DrawSizeCollisionPaintParameter: Codable {
        let collisionParam: Slosher.CollisionParameter?
        let paintDepthScale: Double
        let paintWidthHalf: Double
        
        enum CodingKeys: String, CodingKey {
            case collisionParam = "CollisionParam"
            case paintDepthScale = "PaintDepthScale"
            case paintWidthHalf = "PaintWidthHalf"
        }
    }
}

extension Slosher {
    struct SplashScatterParameter: Codable {
        let type: String
        let collisionParam: Slosher.CollisionParameter
        let paintRadius: Double
        let spawnFirstFrame: Int
        let spawnMaxDegree: Double
        let spawnMaxNum: Int
        let spawnMinDegree: Double
        let spawnOffsetMax: Double
        let spawnOffsetMin: Double
        let spawnSpanChangeEndFrame: Int
        let spawnSpanFrameFirst: Int
        let spawnSpanFrameLast: Int
        let spawnSpeed: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case collisionParam = "CollisionParam"
            case paintRadius = "PaintRadius"
            case spawnFirstFrame = "SpawnFirstFrame"
            case spawnMaxDegree = "SpawnMaxDegree"
            case spawnMaxNum = "SpawnMaxNum"
            case spawnMinDegree = "SpawnMinDegree"
            case spawnOffsetMax = "SpawnOffsetMax"
            case spawnOffsetMin = "SpawnOffsetMin"
            case spawnSpanChangeEndFrame = "SpawnSpanChangeEndFrame"
            case spawnSpanFrameFirst = "SpawnSpanFrameFirst"
            case spawnSpanFrameLast = "SpawnSpanFrameLast"
            case spawnSpeed = "SpawnSpeed"
        }
    }
}

extension Slosher {
    struct SplashSpiralParameter: Codable {
        let type: String
        let collisionParam: Slosher.CollisionParameter
        let lifeFrame: Int
        let roundSplitNum: Int
        let sameTimeSpawnNum: Int
        let spawnSpanChangeEndFrame: Int
        let spawnSpanChangeStartFrame: Int
        let spawnSpanFrameFirst: Int
        let spawnSpanFrameLast: Int
        let spawnSpeedChangeEndFallHeight: Double
        let spawnSpeedChangeStartFallHeight: Double
        let spawnSpeedFirst: Double
        let spawnSpeedLast: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case collisionParam = "CollisionParam"
            case lifeFrame = "LifeFrame"
            case roundSplitNum = "RoundSplitNum"
            case sameTimeSpawnNum = "SameTimeSpawnNum"
            case spawnSpanChangeEndFrame = "SpawnSpanChangeEndFrame"
            case spawnSpanChangeStartFrame = "SpawnSpanChangeStartFrame"
            case spawnSpanFrameFirst = "SpawnSpanFrameFirst"
            case spawnSpanFrameLast = "SpawnSpanFrameLast"
            case spawnSpeedChangeEndFallHeight = "SpawnSpeedChangeEndFallHeight"
            case spawnSpeedChangeStartFallHeight = "SpawnSpeedChangeStartFallHeight"
            case spawnSpeedFirst = "SpawnSpeedFirst"
            case spawnSpeedLast = "SpawnSpeedLast"
        }
    }
}

extension Slosher {
    struct WeaponParameter: Codable {
        let type: String
        let frameOffsetDegreeRate: Double?
        let frameOffsetMaxDegree: Double?
        let frameOffsetMaxMoveLength: Double?
        let inkConsume: Double
        let inkRecoverStop: Int
        let moveLmtFrame: Int?
        let moveSpeed: Double
        let postDelayFrame: Int?
        let repeatFrame: Int
        let shotGuide: ShotGuide
        let swingLiftAnimFrame: Double?
        let swingLiftFrame: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case frameOffsetDegreeRate = "FrameOffsetDegreeRate"
            case frameOffsetMaxDegree = "FrameOffsetMaxDegree"
            case frameOffsetMaxMoveLength = "FrameOffsetMaxMoveLength"
            case inkConsume = "InkConsume"
            case inkRecoverStop = "InkRecoverStop"
            case moveLmtFrame = "MoveLmtFrame"
            case moveSpeed = "MoveSpeed"
            case postDelayFrame = "PostDelayFrame"
            case repeatFrame = "RepeatFrame"
            case shotGuide = "ShotGuide"
            case swingLiftAnimFrame = "SwingLiftAnimFrame"
            case swingLiftFrame = "SwingLiftFrame"
        }
    }
}

extension Slosher.WeaponParameter {
    struct ShotGuide: Codable {
        let bulletOrderNumInUnit: Int?
        let frame: Int
        let unitOrderNum: Int?
        
        enum CodingKeys: String, CodingKey {
            case bulletOrderNumInUnit = "BulletOrderNumInUnit"
            case frame = "Frame"
            case unitOrderNum = "UnitOrderNum"
        }
    }
}

extension Slosher {
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        let guideYMinusZero: Bool
        let xRate: Double?
        let yMinusRate: Double
        let yPlusRate: Double?
        let zRate: Double?
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case guideYMinusZero = "GuideYMinusZero"
            case xRate = "XRate"
            case yMinusRate = "YMinusRate"
            case yPlusRate = "YPlusRate"
            case zRate = "ZRate"
        }
    }
}
