//
//  BigBubbler.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct BigBubbler: SpecialParametable {
    let bulletMoveParam: BulletMoveParameter
    let weaponParam: WeaponParameter
    
    enum CodingKeys: String, CodingKey {
        case bulletMoveParam = "spl__BulletSpGreatBarrierMoveParam"
        case weaponParam = "spl__WeaponSpGreatBarrierParam"
    }
    
    struct BulletMoveParameter: Codable {
        let type: String
        let barrierParam: BarrierParameter
        let droneParam: DroneParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case barrierParam = "BarrierParam"
            case droneParam = "DroneParam"
        }
        
        struct BarrierParameter: Codable {
            let canopyKnockBack: Double
            let damgeRatio: Double
            let maxFieldHP: HighMidLow
            let maxHP: HighMidLow
            let maxRadius: Double
            let minRadius: Double
            let radiusRatioCurve: RateData
            let timeDamage: Int
            let timeDamageOnVLift: Int
            
            enum CodingKeys: String, CodingKey {
                case canopyKnockBack = "CanopyKnockBack"
                case damgeRatio = "DamgeRatio"
                case maxFieldHP = "MaxFieldHP"
                case maxHP = "MaxHP"
                case maxRadius = "MaxRadius"
                case minRadius = "MinRadius"
                case radiusRatioCurve = "RadiusRatioCurve"
                case timeDamage = "TimeDamage"
                case timeDamageOnVLift = "TimeDamageOnVLift"
            }
        }
        
        struct DroneParameter: Codable {
            let ascendCurve: RateData
            let ascendHeight: Double
            let fieldCollisionRadius: Double
            let ignitionFrame: Int
            let overlapFieldDamage: Int
            let overlapFieldDamageInterval: Int
            
            enum CodingKeys: String, CodingKey {
                case ascendCurve = "AscendCurve"
                case ascendHeight = "AscendHeight"
                case fieldCollisionRadius = "FieldCollisionRadius"
                case ignitionFrame = "IgnitionFrame"
                case overlapFieldDamage = "OverlapFieldDamage"
                case overlapFieldDamageInterval = "OverlapFieldDamageInterval"
            }
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let knockBackParam: KnockBackParam
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case knockBackParam = "KnockBackParam"
        }
        
        struct KnockBackParam: Codable {
            let impactValue: Double
            
            enum CodingKeys: String, CodingKey {
                case impactValue = "ImpactValue"
            }
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
            maxFieldHp: self.bulletMoveParam.barrierParam.maxFieldHP,
            maxFrame: nil,
            maxHp: self.bulletMoveParam.barrierParam.maxHP,
            maxRadius: nil,
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
