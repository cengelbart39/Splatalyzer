//
//  SpecialChimney.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SpecialChimney: SpecialParametable {
    let moveParam: MoveParameter
    let wallParam: WallParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case moveParam = "MoveParam"
        case wallParam = "WallParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    struct MoveParameter: Codable {
        let type: String
        let damageValueForDamageTag: Int
        let guideHitCollisionType: String
        let spawnSpeedY: Double
        let spawnSpeedYWorldMin: Double
        let spawnSpeedZSpecUp: HighMidLow
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case damageValueForDamageTag = "DamageValueForDamageTag"
            case guideHitCollisionType = "GuideHitCollisionType"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
    }
    
    struct WallParameter: Codable {
        let type: String
        let closingFrame: Int
        let damageValue: Int
        let debugBlockRotateDistance: Double
        let debugBlockRotateSpeedMax: Double
        let debugBlockRotateSpeedMin: Double
        let debugCircleRadius: Double
        let debugCircleSideOffset: Double
        let debugCircleSlantOffset: XYData
        let debugWallAlpha: Int
        let markingFrame: Int
        let moveSpeed: HighMidLow
        let runningFrame: Int
        let saturationChangeOutFrame: Int
        let saturationFrame: Int
        let saturationTarget: Double
        let splashPaintRadius: Double
        let splashSpawnAllFrame: Int
        let splashSpawnPosition: [XYZData]
        let splashSpawnSpan: Int
        let startUpFrame: Int
        let targetSpeedFrame: Int
        let wallDepth: Double
        let wallHeightDown: Double
        let wallHeightUp: Double
        let wallWidth: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case closingFrame = "ClosingFrame"
            case damageValue = "DamageValue"
            case debugBlockRotateDistance = "DebugBlockRotateDistance"
            case debugBlockRotateSpeedMax = "DebugBlockRotateSpeedMax"
            case debugBlockRotateSpeedMin = "DebugBlockRotateSpeedMin"
            case debugCircleRadius = "DebugCircleRadius"
            case debugCircleSideOffset = "DebugCircleSideOffset"
            case debugCircleSlantOffset = "DebugCircleSlantOffset"
            case debugWallAlpha = "DebugWallAlpha"
            case markingFrame = "MarkingFrame"
            case moveSpeed = "MoveSpeed"
            case runningFrame = "RunningFrame"
            case saturationChangeOutFrame = "SaturationChangeOutFrame"
            case saturationFrame = "SaturationFrame"
            case saturationTarget = "SaturationTarget"
            case splashPaintRadius = "SplashPaintRadius"
            case splashSpawnAllFrame = "SplashSpawnAllFrame"
            case splashSpawnPosition = "SplashSpawnPosition"
            case splashSpawnSpan = "SplashSpawnSpan"
            case startUpFrame = "StartUpFrame"
            case targetSpeedFrame = "TargetSpeedFrame"
            case wallDepth = "WallDepth"
            case wallHeightDown = "WallHeightDown"
            case wallHeightUp = "WallHeightUp"
            case wallWidth = "WallWidth"
        }
    }
    
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        let xRate: Double
        let yMax: Double
        let yPlusRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yMax = "YMax"
            case yPlusRate = "YPlusRate"
        }
    }
    
    func getOverwrites() -> SpecialOverwrites {
        return SpecialOverwrites(
            chargeRateAutoPerFrame: nil,
            crossPaintCheckLength: nil,
            crossPaintRadius: nil,
            distanceDamageDistanceRate: nil,
            inkConsumeHook: nil,
            inkConsumePerSec: nil,
            maxFieldHp: nil,
            maxFrame: nil,
            maxHp: nil,
            maxRadius: nil,
            moveSpeed: self.wallParam.moveSpeed,
            paintRadius: nil,
            powerUpFrame: nil,
            radiusMax: nil,
            radiusMin: nil,
            spawnSpeedZSpecUp: self.moveParam.spawnSpeedZSpecUp,
            specialDurationFrame: nil,
            splashAroundVelocityMax: nil,
            splashAroundVelocityMin: nil,
            targetInCircleRadius: nil)
    }
}
