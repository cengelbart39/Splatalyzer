//
//  KillerWail51.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct KillerWail51: SpecialParametable {
    let bulletBitParam: BulletBitParameter
    let weaponParam: WeaponParameter
    
    enum CodingKeys: String, CodingKey {
        case bulletBitParam = "spl__BulletSpMicroLaserBitParam"
        case weaponParam = "spl__WeaponSpMicroLaserParam"
    }
    
    struct BulletBitParameter: Codable {
        let type: String
        let chargeParam: ChargeParameter
        let followParam: FollowParameter
        let laserParam: LaserParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case chargeParam = "ChargeParam"
            case followParam = "FollowParam"
            case laserParam = "LaserParam"
        }
        
        struct ChargeParameter: Codable {
            let chargeFrame: Int
            let interpRate: Double
            let maxAngularVel: Double
            let maxAngularVelChargeStateNoTgt: Double
            
            enum CodingKeys: String, CodingKey {
                case chargeFrame = "ChargeFrame"
                case interpRate = "InterpRate"
                case maxAngularVel = "MaxAngularVel"
                case maxAngularVelChargeStateNoTgt = "MaxAngularVelChargeStateNoTgt"
            }
        }
        
        struct FollowParameter: Codable {
            let lockonEndFrame: Int
            
            enum CodingKeys: String, CodingKey {
                case lockonEndFrame = "LockonEndFrame"
            }
        }
        
        struct LaserParameter: Codable {
            let afterLaserWaitFrame: Int
            let freeMoveRotSpeed: Double
            let laserDamage: Int
            let laserDamageIntervalFrame: Int
            let laserFrame: HighMidLow
            
            enum CodingKeys: String, CodingKey {
                case afterLaserWaitFrame = "AfterLaserWaitFrame"
                case freeMoveRotSpeed = "FreeMoveRotSpeed"
                case laserDamage = "LaserDamage"
                case laserDamageIntervalFrame = "LaserDamageIntervalFrame"
                case laserFrame = "LaserFrame"
            }
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let launchParam: LaunchParameter
        let playerParam: PlayerParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case launchParam = "LaunchParam"
            case playerParam = "PlayerParam"
        }
        
        struct LaunchParameter: Codable {
            let enableDualLaunch: Bool
            let laserBitCenterOffset: XYZData
            let laserBitRadius: Double
            let lockonDeg: Double
            let lockonRadius: Double
            
            enum CodingKeys: String, CodingKey {
                case enableDualLaunch = "EnableDualLaunch"
                case laserBitCenterOffset = "LaserBitCenterOffset"
                case laserBitRadius = "LaserBitRadius"
                case lockonDeg = "LockonDeg"
                case lockonRadius = "LockonRadius"
            }
        }
        
        struct PlayerParameter: Codable {
            let afterShotNoBombFrm: Int
            let afterShotNoShotFrm: Int
            let afterShotNoSquidFrm: Int
            
            enum CodingKeys: String, CodingKey {
                case afterShotNoBombFrm = "AfterShot_NoBombFrm"
                case afterShotNoShotFrm = "AfterShot_NoShotFrm"
                case afterShotNoSquidFrm = "AfterShot_NoSquidFrm"
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
            maxFieldHp: nil,
            maxFrame: nil,
            maxHp: nil,
            maxRadius: nil,
            moveSpeed: nil,
            paintRadius: nil,
            powerUpFrame: nil,
            radiusMax: nil,
            radiusMin: nil,
            spawnSpeedZSpecUp: nil,
            specialDurationFrame: self.bulletBitParam.laserParam.laserFrame,
            splashAroundVelocityMax: nil,
            splashAroundVelocityMin: nil,
            targetInCircleRadius: nil)
    }
}
