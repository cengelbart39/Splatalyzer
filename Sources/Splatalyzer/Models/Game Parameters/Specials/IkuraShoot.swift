//
//  IkuraShoot.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Single Player-exclusive "Ikura Shoot" special weapon
///
/// See the JSON file `WeaponSpIkuraShoot.game__GameParameterTable.json`
///
/// It appears this Special Weapon isn't used in versus, so this goes unused in Splatalyzer.
struct IkuraShoot: GameParametable {
    var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    struct Parameters: Codable {
        let moveParam: MoveParameter
        let weaponParam: WeaponParameter
        let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
        
        enum CodingKeys: String, CodingKey {
            case moveParam = "MoveParam"
            case weaponParam = "WeaponParam"
            case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        }
        
        struct MoveParameter: Codable {
            let type: String
            let guideHitCollisionType: String
            let guideRadius: Double
            let spawnSpeedY: Double
            let spawnSpeedYWorldMin: Double
            let spawnSpeedZSpecUp: HighMidLow
            
            enum CodingKeys: String, CodingKey {
                case type = "$type"
                case guideHitCollisionType = "GuideHitCollisionType"
                case guideRadius = "GuideRadius"
                case spawnSpeedY = "SpawnSpeedY"
                case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
                case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
            }
        }
        
        struct WeaponParameter: Codable {
            let type: String
            let showPointGuideDistance: Double
            
            enum CodingKeys: String, CodingKey {
                case type = "$type"
                case showPointGuideDistance = "ShowPointGuideDistance"
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
    }
}
