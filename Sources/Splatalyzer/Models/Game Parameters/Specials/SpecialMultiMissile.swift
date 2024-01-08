//
//  SpecialMultiMissile.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SpecialMultiMissile: Codable {
    let bulletBlastParam: BulletBlastParameter
    let bulletDamageParam: BulletDamageParameter
    let bulletMoveParam: BulletMoveParameter
    let weaponLaunchParam: WeaponLaunchParameter
    let weaponLockOnParam: WeaponLockOnParameter
    let weaponPlayerParam: WeaponPlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case bulletBlastParam = "spl__BulletBlastParam"
        case bulletDamageParam = "spl__BulletSpMultiMissileDamageParam"
        case bulletMoveParam = "spl__BulletSpMultiMissileMoveParam"
        case weaponLaunchParam = "spl__WeaponSpMultiMissileLaunchParam"
        case weaponLockOnParam = "spl__WeaponSpMultiMissileLockOnParam"
        case weaponPlayerParam = "spl__WeaponSpMultiMissilePlayerParam"
    }
    
    struct BulletBlastParameter: Codable {
        let type: String
        let crossPaintCheckLength: Double
        let damageOffsetY: Double
        let distanceDamage: [DistanceDamage]
        let knockBackParam: KnockbackParameter
        let paintOffsetY: Double
        let paintRadius: Double
        let subSpecialSpecUpList: [SubSpecialSpecUpList]
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case damageOffsetY = "DamageOffsetY"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintOffsetY = "PaintOffsetY"
            case paintRadius = "PaintRadius"
            case subSpecialSpecUpList = "SubSpecialSpecUpList"
        }
    }
    
    struct BulletDamageParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct BulletMoveParameter: Codable {
        let type: String
        let riseParam: RiseParameter
        let targetParam: TargetParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case riseParam = "RiseParam"
            case targetParam = "TargetParam"
        }
        
        struct RiseParameter: Codable {
            let riseBaseSpeedComeUnderRate: Double
            
            enum CodingKeys: String, CodingKey {
                case riseBaseSpeedComeUnderRate = "RiseBaseSpeedComeUnderRate"
            }
        }
        
        struct TargetParameter: Codable {
            let multiTargetCircleArray: [TargetCircle]
            let oneTargetCircleArray: [TargetCircle]
            
            enum CodingKeys: String, CodingKey {
                case multiTargetCircleArray = "MultiTargetCircleArray"
                case oneTargetCircleArray = "OneTargetCircleArray"
            }
            
            struct TargetCircle: Codable {
                let num: Int?
                let radius: Double?
                let randomOffset: Double
                let randomOffsetBias: Double?
                
                enum CodingKeys: String, CodingKey {
                    case num = "Num"
                    case radius = "Radius"
                    case randomOffset = "RandomOffset"
                    case randomOffsetBias = "RandomOffsetBias"
                }
            }
        }
    }
    
    struct WeaponLaunchParameter: Codable {
        let type: String
        let shotIntervalTargetArray: [Int]
        let shotNumOneTargetArray: [Int]
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case shotIntervalTargetArray = "ShotIntervalTargetArray"
            case shotNumOneTargetArray = "ShotNumOneTargetArray"
        }
    }
    
    struct WeaponLockOnParameter: Codable {
        let target: String
        let targetCircleEffectDefaultRadius: Double
        let targetInCircleRadius: HighMidLow
        
        enum CodingKeys: String, CodingKey {
            case target = "$type"
            case targetCircleEffectDefaultRadius = "TargetCircleEffectDefaultRadius"
            case targetInCircleRadius = "TargetInCircleRadius"
        }
    }
    
    struct WeaponPlayerParameter: Codable {
        let type: String
        let jumpVelLimitSearching: Double
        let moveVelLimitSearching: Double

        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case jumpVelLimitSearching = "JumpVelLimitSearching"
            case moveVelLimitSearching = "MoveVelLimitSearching"
        }
    }
}
