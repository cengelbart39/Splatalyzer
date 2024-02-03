//
//  KillerWail51.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Killer Wail 5.1 special weapon
///
/// See the JSON file `WeaponSpMicroLaser.game__GameParameterTable.json`
public struct KillerWail51: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SpecialParametable {
        public let bulletBitParam: BulletBitParameter
        public let weaponParam: WeaponParameter
        
        public enum CodingKeys: String, CodingKey {
            case bulletBitParam = "spl__BulletSpMicroLaserBitParam"
            case weaponParam = "spl__WeaponSpMicroLaserParam"
        }
        
        public struct BulletBitParameter: Codable {
            public let type: String
            public let chargeParam: ChargeParameter
            public let followParam: FollowParameter
            public let laserParam: LaserParameter
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case chargeParam = "ChargeParam"
                case followParam = "FollowParam"
                case laserParam = "LaserParam"
            }
            
            public struct ChargeParameter: Codable {
                public let chargeFrame: Int
                public let interpRate: Double
                public let maxAngularVel: Double
                public let maxAngularVelChargeStateNoTgt: Double
                
                public enum CodingKeys: String, CodingKey {
                    case chargeFrame = "ChargeFrame"
                    case interpRate = "InterpRate"
                    case maxAngularVel = "MaxAngularVel"
                    case maxAngularVelChargeStateNoTgt = "MaxAngularVelChargeStateNoTgt"
                }
            }
            
            public struct FollowParameter: Codable {
                public let lockonEndFrame: Int
                
                public enum CodingKeys: String, CodingKey {
                    case lockonEndFrame = "LockonEndFrame"
                }
            }
            
            public struct LaserParameter: Codable {
                public let afterLaserWaitFrame: Int
                public let freeMoveRotSpeed: Double
                public let laserDamage: Int
                public let laserDamageIntervalFrame: Int
                public let laserFrame: HighMidLow
                
                public enum CodingKeys: String, CodingKey {
                    case afterLaserWaitFrame = "AfterLaserWaitFrame"
                    case freeMoveRotSpeed = "FreeMoveRotSpeed"
                    case laserDamage = "LaserDamage"
                    case laserDamageIntervalFrame = "LaserDamageIntervalFrame"
                    case laserFrame = "LaserFrame"
                }
            }
        }
        
        public struct WeaponParameter: Codable {
            public let type: String
            public let launchParam: LaunchParameter
            public let playerParam: PlayerParameter
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case launchParam = "LaunchParam"
                case playerParam = "PlayerParam"
            }
            
            public struct LaunchParameter: Codable {
                public let enableDualLaunch: Bool
                public let laserBitCenterOffset: XYZData
                public let laserBitRadius: Double
                public let lockonDeg: Double
                public let lockonRadius: Double
                
                public enum CodingKeys: String, CodingKey {
                    case enableDualLaunch = "EnableDualLaunch"
                    case laserBitCenterOffset = "LaserBitCenterOffset"
                    case laserBitRadius = "LaserBitRadius"
                    case lockonDeg = "LockonDeg"
                    case lockonRadius = "LockonRadius"
                }
            }
            
            public struct PlayerParameter: Codable {
                public let afterShotNoBombFrm: Int
                public let afterShotNoShotFrm: Int
                public let afterShotNoSquidFrm: Int
                
                public enum CodingKeys: String, CodingKey {
                    case afterShotNoBombFrm = "AfterShot_NoBombFrm"
                    case afterShotNoShotFrm = "AfterShot_NoShotFrm"
                    case afterShotNoSquidFrm = "AfterShot_NoSquidFrm"
                }
            }
        }
        
        public func getOverwrites() -> SpecialOverwrites {
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
}
