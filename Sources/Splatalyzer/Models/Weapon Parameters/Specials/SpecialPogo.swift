//
//  SpecialPogo.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SpecialPogo: Codable {
    let blastParamDokanWarp: BlastParameter
    let blastParamNormal: BlastParameter
    let bulletParam: BulletParameter
    let weaponParam: WeaponParameter
    
    enum CodingKeys: String, CodingKey {
        case blastParamDokanWarp = "BlastParamDokanWarp"
        case blastParamNormal = "BlastParamNormal"
        case bulletParam = "BulletParam"
        case weaponParam = "spl__WeaponSpPogoParam"
    }
    
    struct BlastParameter: Codable {
        let type: String
        let crossPaintCheckLength: Double
        let crossPaintRadius: Double
        let crossPaintTexture: String
        let distanceDamage: [DistanceDamage]
        let knockBackParam: AttackKnockbackParameter
        let paintRadius: Double
        let paintTexture: String
        let planeDamage: [DistanceDamage]
        let subSpecialSpecUpList: [SubBlastSpecialSpecUpList]
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case crossPaintTexture = "CrossPaintTexture"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintRadius = "PaintRadius"
            case paintTexture = "PaintTexture"
            case planeDamage = "PlaneDamage"
            case subSpecialSpecUpList = "SubSpecialSpecUpList"
        }
    }
    
    struct BulletParameter: Codable {
        let type: String
        let hitPoint: Int
        let moveCollisionHeight: [Double]
        let moveDistance: Double
        let moveFrame: Int
        let startInvincibleFrame: Int
        let superJumpWaitFrame0: Int
        let superJumpWaitFrame1: Int
        let waitRiseFrame: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case hitPoint = "HitPoint"
            case moveCollisionHeight = "MoveCollisionHeight"
            case moveDistance = "MoveDistance"
            case moveFrame = "MoveFrame"
            case startInvincibleFrame = "StartInvincibleFrame"
            case superJumpWaitFrame0 = "SuperJumpWaitFrame0"
            case superJumpWaitFrame1 = "SuperJumpWaitFrame1"
            case waitRiseFrame = "WaitRiseFrame"
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let riseFrame: Int
        let riseNoDamageStartFrame: Int
        let specialTotalFrame: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case riseFrame = "Rise_Frame"
            case riseNoDamageStartFrame = "Rise_NoDamageStartFrame"
            case specialTotalFrame = "SpecialTotalFrame"
        }
    }
}
