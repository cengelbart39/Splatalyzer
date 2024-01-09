//
//  SpecialSkewer.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SpecialSkewer: SpecialParametable {
    let bulletBlastParam: BulletBlastParameter
    let bulletParam: BulletParameter
    let weaponParam: WeaponParameter
    
    enum CodingKeys: String, CodingKey {
        case bulletBlastParam = "BulletBlastParam"
        case bulletParam = "BulletParam"
        case weaponParam = "WeaponParam"
    }
    
    struct BulletBlastParameter: Codable {
        let type: String
        let distanceDamage: [DistanceDamage]
        let knockBackParam: KnockbackParameter
        let paintRadius: Double
        let paintTexture: String
        let splashAroundParam: SplashAroundParameter
        let subSpecialSpecUpList: [SubSpecialSpecUpList]
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintRadius = "PaintRadius"
            case paintTexture = "PaintTexture"
            case splashAroundParam = "SplashAroundParam"
            case subSpecialSpecUpList = "SubSpecialSpecUpList"
        }
    }
    
    struct BulletParameter: Codable {
        let type: String
        let collisionRadiusForPlayer: Double
        let damageValue: Int
        let knockBackLen: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case collisionRadiusForPlayer = "CollisionRadiusForPlayer"
            case damageValue = "DamageValue"
            case knockBackLen = "KnockBackLen"
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let chargeFrame: Int
        let distanceAfterglow: Double
        let gravityKf: Double
        let moveAcc: Double
        let moveBrk: Double
        let moveCancelableFrame: Int
        let moveFrame: Int
        let moveFrameOmen: Int
        let moveRotDeg: Double
        let moveSpeed: Double
        let moveSpeedAerial: Double
        let noDamageFrameAfterBurst: Int
        let noDamageStartFramePreMove: Int
        let offsetLocalDetectPlayer: XYZData
        let preBurstEmitFrame: Int
        let preBurstFrame: Int
        let preMoveFrame: Int
        let radiusDetectPlayer: Double
        let rutPaintRadius: Double
        let unrelaxFrame: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case chargeFrame = "ChargeFrame"
            case distanceAfterglow = "Distance_Afterglow"
            case gravityKf = "GravityKf"
            case moveAcc = "MoveAcc"
            case moveBrk = "MoveBrk"
            case moveCancelableFrame = "MoveCancelableFrame"
            case moveFrame = "MoveFrame"
            case moveFrameOmen = "MoveFrameOmen"
            case moveRotDeg = "MoveRotDeg"
            case moveSpeed = "MoveSpeed"
            case moveSpeedAerial = "MoveSpeed_Aerial"
            case noDamageFrameAfterBurst = "NoDamageFrame_AfterBurst"
            case noDamageStartFramePreMove = "NoDamageStartFrame_PreMove"
            case offsetLocalDetectPlayer = "OffsetLocal_DetectPlayer"
            case preBurstEmitFrame = "PreBurstEmitFrame"
            case preBurstFrame = "PreBurstFrame"
            case preMoveFrame = "PreMoveFrame"
            case radiusDetectPlayer = "Radius_DetectPlayer"
            case rutPaintRadius = "RutPaintRadius"
            case unrelaxFrame = "UnrelaxFrame"
        }
    }
    
    func getOverwrites() -> SpecialOverwrites {
        let paintRadius =  self.bulletBlastParam.subSpecialSpecUpList[safe: 1]?.value
        let splashAroundPaintRadius = self.bulletBlastParam.subSpecialSpecUpList[safe: 4]?.value
        
        let overwritePaintRadius = HighMidLow(
            high: (paintRadius?.high ?? 0) + (splashAroundPaintRadius?.high ?? 0),
            low: (paintRadius?.low ?? 0) + (splashAroundPaintRadius?.low ?? 0),
            mid: (paintRadius?.mid ?? 0) + (splashAroundPaintRadius?.mid ?? 0))
        
        let paintRadiusExists = paintRadius?.high != nil && paintRadius?.low != nil && paintRadius?.mid != nil && splashAroundPaintRadius?.high != nil && splashAroundPaintRadius?.low != nil && splashAroundPaintRadius?.mid != nil
        
        return SpecialOverwrites(
            chargeRateAutoPerFrame: nil,
            crossPaintCheckLength: nil,
            crossPaintRadius: nil,
            distanceDamageDistanceRate: self.bulletBlastParam.subSpecialSpecUpList[safe: 0]?.value,
            inkConsumeHook: nil,
            inkConsumePerSec: nil,
            maxFieldHp: nil,
            maxFrame: nil,
            maxHp: nil,
            maxRadius: nil,
            moveSpeed: nil,
            paintRadius: paintRadiusExists ? overwritePaintRadius : nil,
            powerUpFrame: nil,
            radiusMax: nil,
            radiusMin: nil,
            spawnSpeedZSpecUp: nil,
            specialDurationFrame: nil,
            splashAroundVelocityMax: self.bulletBlastParam.subSpecialSpecUpList[safe: 3]?.value,
            splashAroundVelocityMin: self.bulletBlastParam.subSpecialSpecUpList[safe: 2]?.value,
            targetInCircleRadius: nil)
    }
}
