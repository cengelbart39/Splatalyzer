//
//  SpecialFirework.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SpecialFirework: Codable {
    let iceParam: IceParameter
    let pipeParam: PipeParameter
    let weaponParam: WeaponParameter
    
    enum CodingKeys: String, CodingKey {
        case iceParam = "IceParam"
        case pipeParam = "PipeParam"
        case weaponParam = "WeaponParam"
    }
    
    struct IceParameter: Codable {
        let type: String
        let blastParam: BlastParameter
        let burstFrame: Int
        let collisionRadius: Double
        let flyingFrame: Int
        let groundOffsetY: Double
        let hitPoint: Int
        let initialScale: Double
        let paintRadius: Double
        let rotateDegRatePerFrame: Double
        let scaleResetFrame: Int
        let spawnRotateDegMax: Double
        let spawnRotateDegMin: Double
        let warningAnimRestFrame: Int
        let warningSERestFrame: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case blastParam = "BlastParam"
            case burstFrame = "BurstFrame"
            case collisionRadius = "CollisionRadius"
            case flyingFrame = "FlyingFrame"
            case groundOffsetY = "GroundOffsetY"
            case hitPoint = "HitPoint"
            case initialScale = "InitialScale"
            case paintRadius = "PaintRadius"
            case rotateDegRatePerFrame = "RotateDegRatePerFrame"
            case scaleResetFrame = "ScaleResetFrame"
            case spawnRotateDegMax = "SpawnRotateDegMax"
            case spawnRotateDegMin = "SpawnRotateDegMin"
            case warningAnimRestFrame = "WarningAnimRestFrame"
            case warningSERestFrame = "WarningSERestFrame"
        }
        
        struct BlastParameter: Codable {
            let crossPaintCheckLength: Double
            let crossPaintRadius: Double
            let damageOffsetY: Double
            let distanceDamage: [DistanceDamage]
            let knockBackParam: AttackKnockbackParameter
            let paintHeight: Double
            let paintOffsetY: Double
            let paintRadius: Double
            let splashAroundParam: SplashAroundParameter
            let subSpecialSpecUpList: [SubSpecialSpecUpList]
            
            enum CodingKeys: String, CodingKey {
                case crossPaintCheckLength = "CrossPaintCheckLength"
                case crossPaintRadius = "CrossPaintRadius"
                case damageOffsetY = "DamageOffsetY"
                case distanceDamage = "DistanceDamage"
                case knockBackParam = "KnockBackParam"
                case paintHeight = "PaintHeight"
                case paintOffsetY = "PaintOffsetY"
                case paintRadius = "PaintRadius"
                case splashAroundParam = "SplashAroundParam"
                case subSpecialSpecUpList = "SubSpecialSpecUpList"
            }
        }
    }
    
    struct PipeParameter: Codable {
        let type: String
        let depthRadius: Double
        let minBetweenDistance: Double
        let targetCenterBias: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case depthRadius = "DepthRadius"
            case minBetweenDistance = "MinBetweenDistance"
            case targetCenterBias = "TargetCenterBias"
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let specialTotalFrame: Int
        let targetCenterBias: Double
        let targetCenterDistanceMax: Double
        let targetCenterDistanceMin: Double
        let targetCenterRadius: Double
        let targetHeightCheckSpanFrame: Int
        let useDistanceMinCameraDownRate: Double
        let useDistanceMinCameraUpRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case specialTotalFrame = "SpecialTotalFrame"
            case targetCenterBias = "TargetCenterBias"
            case targetCenterDistanceMax = "TargetCenterDistanceMax"
            case targetCenterDistanceMin = "TargetCenterDistanceMin"
            case targetCenterRadius = "TargetCenterRadius"
            case targetHeightCheckSpanFrame = "TargetHeightCheckSpanFrame"
            case useDistanceMinCameraDownRate = "UseDistanceMinCameraDownRate"
            case useDistanceMinCameraUpRate = "UseDistanceMinCameraUpRate"
        }
    }
}
