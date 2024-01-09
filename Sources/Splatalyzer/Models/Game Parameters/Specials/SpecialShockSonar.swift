//
//  SpecialShockSonar.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SpecialShockSonar: SpecialParametable {
    let bulletInformImpactControlForGeyserParam: BulletInformImpactControlForGeyserParameter
    let bulletParam: BulletParameter
    
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    let weaponParam: WeaponParameter
    
    enum CodingKeys: String, CodingKey {
        case bulletInformImpactControlForGeyserParam = "spl__BulletInformImpactControlForGeyserParam"
        case bulletParam = "spl__BulletSpShockSonarParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        case weaponParam = "spl__WeaponSpShockSonarParam"
    }
    
    struct BulletInformImpactControlForGeyserParameter: Codable {
        let type: String
        let addSpeedPerImpact: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case addSpeedPerImpact = "AddSpeedPerImpact"
        }
    }
    
    struct BulletParameter: Codable {
        let type: String
        let generatorParam: GeneratorParameter
        let waveParam: WaveParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case generatorParam = "GeneratorParam"
            case waveParam = "WaveParam"
        }
        
        struct GeneratorParameter: Codable {
            let headColRadius: Double
            let hitDamage: Int
            let hitDamageInterval: Double
            let hitKnockback: Int
            let markingFrame: Int
            let moveParam: MoveParameter
            let poleColHeight: Double
            let sphereAnimCurve: RateData
            let sphereAnimRadius: Double
            let waveEmitFrameArray: [Int]
            
            enum CodingKeys: String, CodingKey {
                case headColRadius = "HeadColRadius"
                case hitDamage = "HitDamage"
                case hitDamageInterval = "HitDamageInterval"
                case hitKnockback = "HitKnockback"
                case markingFrame = "MarkingFrame"
                case moveParam = "MoveParam"
                case poleColHeight = "PoleColHeight"
                case sphereAnimCurve = "SphereAnimCurve"
                case sphereAnimRadius = "SphereAnimRadius"
                case waveEmitFrameArray = "WaveEmitFrameArray"
            }
            
            struct MoveParameter: Codable {
                let flyGravity: Double
                let flyPositionAirResist: Double
                let guideHitCollisionType: String
                let spawnSpeedY: Double
                let spawnSpeedYWorldMin: Double
                let spawnSpeedZSpecUp: HighMidLow
                
                enum CodingKeys: String, CodingKey {
                    case flyGravity = "FlyGravity"
                    case flyPositionAirResist = "FlyPositionAirResist"
                    case guideHitCollisionType = "GuideHitCollisionType"
                    case spawnSpeedY = "SpawnSpeedY"
                    case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
                    case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
                }
            }
        }
        
        struct WaveParameter: Codable {
            let damage: Int
            let damageYMax: Double
            let damageYMin: Double
            let maxFrame: HighMidLow
            let maxRadius: HighMidLow
            
            enum CodingKeys: String, CodingKey {
                case damage = "Damage"
                case damageYMax = "DamageYMax"
                case damageYMin = "DamageYMin"
                case maxFrame = "MaxFrame"
                case maxRadius = "MaxRadius"
            }
        }
    }
    
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        let xRate: Double
        let yPlusRate: Double
        let zRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yPlusRate = "YPlusRate"
            case zRate = "ZRate"
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let shotParam: EmptyStruct
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case shotParam = "ShotParam"
        }
        
        struct EmptyStruct: Codable { }
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
            maxFrame: self.bulletParam.waveParam.maxFrame,
            maxHp: nil,
            maxRadius: self.bulletParam.waveParam.maxRadius,
            moveSpeed: nil,
            paintRadius: nil,
            powerUpFrame: nil,
            radiusMax: nil,
            radiusMin: nil,
            spawnSpeedZSpecUp: nil,
            specialDurationFrame: nil,
            splashAroundVelocityMax: nil,
            splashAroundVelocityMin: nil,
            targetInCircleRadius: nil)
    }
}
