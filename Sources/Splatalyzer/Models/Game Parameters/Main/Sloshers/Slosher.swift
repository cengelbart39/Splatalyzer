//
//  Slosher.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

public struct Slosher: Codable {
    public let blastParam: BlastParameter?
    public let bounceGroupParam: BounceGroupParameter?
    public let mainEffectiveRangeUp: MainEffectiveRangeUpParameter
    public let mainWeaponSetting: MainWeaponSettings
    public let nearestParam: NearestParameter
    public let splashSlosherScatterParam: SplashScatterParameter?
    public let splashSlosherSpiralParam: SplashSpiralParameter?
    public let unitGroupParam: UnitGroupParameter
    public let weaponParam: WeaponParameter
    public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    public enum CodingKeys: String, CodingKey {
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
    public struct BlastParameter: Codable {
        public let type: String
        public let blastParam: BlastInnerParameter
        public let distanceFar: Double
        public let distanceNear: Double
        public let paintRadiusFar: Double
        public let paintRadiusNear: Double
        
        public enum CodingKeys: String, CodingKey {
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
    public struct BlastInnerParameter: Codable {
        public let collisionRadiusForPaint: Double
        public let crossPaintCheckLength: Double
        public let crossPaintRadius: Double
        public let damageAttackerPriority: Bool
        public let damageOffsetY: Double
        public let distanceDamage: [DistanceDamage]
        public let knockBackParam: KnockbackParameter
        public let paintOffsetY: Double
        public let paintRadius: Double
        
        public enum CodingKeys: String, CodingKey {
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
    public struct BounceGroupParameter: Codable {
        public let type: String
        public let bounceParam: [BounceParameter]
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case bounceParam = "BounceParam"
        }
    }
}

extension Slosher.BounceGroupParameter {
    public struct BounceParameter: Codable {
        public let afterOffsetPaintRadiusFirstBnce: Double?
        public let bounceAfterMaxSpeed: Double?
        public let paintRadiusFirstBounce: Double
        public let unitOrderNum: Int?
        
        public enum CodingKeys: String, CodingKey {
            case afterOffsetPaintRadiusFirstBnce = "AfterOffsetPaintRadiusFirstBnce"
            case bounceAfterMaxSpeed = "BounceAfterMaxSpeed"
            case paintRadiusFirstBounce = "PaintRadiusFirstBounce"
            case unitOrderNum = "UnitOrderNum"
        }
    }
}

extension Slosher {
    public struct CollisionParameter: Codable {
        public let endRadiusForField: Double?
        public let endRadiusForPlayer: Double
        public let initRadiusForField: Double?
        public let initRadiusForPlayer: Double
        
        public enum CodingKeys: String, CodingKey {
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }
}

extension Slosher {
    public struct NearestParameter: Codable {
        public let type: String
        public let drawSizeCollisionPaintParam: DrawSizeCollisionPaintParameter
        public let spawnOffset: XYData
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case drawSizeCollisionPaintParam = "DrawSizeCollisionPaintParam"
            case spawnOffset = "SpawnOffset"
        }
    }
}

extension Slosher.NearestParameter {
    public struct DrawSizeCollisionPaintParameter: Codable {
        public let collisionParam: Slosher.CollisionParameter?
        public let paintDepthScale: Double
        public let paintWidthHalf: Double
        
        public enum CodingKeys: String, CodingKey {
            case collisionParam = "CollisionParam"
            case paintDepthScale = "PaintDepthScale"
            case paintWidthHalf = "PaintWidthHalf"
        }
    }
}

extension Slosher {
    public struct SplashScatterParameter: Codable {
        public let type: String
        public let collisionParam: Slosher.CollisionParameter
        public let paintRadius: Double
        public let spawnFirstFrame: Int
        public let spawnMaxDegree: Double
        public let spawnMaxNum: Int
        public let spawnMinDegree: Double
        public let spawnOffsetMax: Double
        public let spawnOffsetMin: Double
        public let spawnSpanChangeEndFrame: Int
        public let spawnSpanFrameFirst: Int
        public let spawnSpanFrameLast: Int
        public let spawnSpeed: Double
        
        public enum CodingKeys: String, CodingKey {
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
    public struct SplashSpiralParameter: Codable {
        public let type: String
        public let collisionParam: Slosher.CollisionParameter
        public let lifeFrame: Int
        public let roundSplitNum: Int
        public let sameTimeSpawnNum: Int
        public let spawnSpanChangeEndFrame: Int
        public let spawnSpanChangeStartFrame: Int
        public let spawnSpanFrameFirst: Int
        public let spawnSpanFrameLast: Int
        public let spawnSpeedChangeEndFallHeight: Double
        public let spawnSpeedChangeStartFallHeight: Double
        public let spawnSpeedFirst: Double
        public let spawnSpeedLast: Double
        
        public enum CodingKeys: String, CodingKey {
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
    public struct WeaponParameter: Codable {
        public let type: String
        public let frameOffsetDegreeRate: Double?
        public let frameOffsetMaxDegree: Double?
        public let frameOffsetMaxMoveLength: Double?
        public let inkConsume: Double
        public let inkRecoverStop: Int
        public let moveLmtFrame: Int?
        public let moveSpeed: Double
        public let postDelayFrame: Int?
        public let repeatFrame: Int
        public let shotGuide: ShotGuide
        public let swingLiftAnimFrame: Double?
        public let swingLiftFrame: Int
        
        public enum CodingKeys: String, CodingKey {
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
    public struct ShotGuide: Codable {
        public let bulletOrderNumInUnit: Int?
        public let frame: Int
        public let unitOrderNum: Int?
        
        public enum CodingKeys: String, CodingKey {
            case bulletOrderNumInUnit = "BulletOrderNumInUnit"
            case frame = "Frame"
            case unitOrderNum = "UnitOrderNum"
        }
    }
}

extension Slosher {
    public struct SpawnBulletAdditionMovePlayerParameter: Codable {
        public let type: String
        public let guideYMinusZero: Bool
        public let xRate: Double?
        public let yMinusRate: Double
        public let yPlusRate: Double?
        public let zRate: Double?
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case guideYMinusZero = "GuideYMinusZero"
            case xRate = "XRate"
            case yMinusRate = "YMinusRate"
            case yPlusRate = "YPlusRate"
            case zRate = "ZRate"
        }
    }
}
