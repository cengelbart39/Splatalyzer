//
//  SubWeapon.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

public enum SubWeapon: String, CaseIterable {
    case squidBeakon = "Beacon"
    case curlingBomb = "Bomb_Curling"
    case fizzyBomb = "Bomb_Fizzy"
    case burstBomb = "Bomb_Quick"
    case autobomb = "Bomb_Robot"
    case splatBomb = "Bomb_Splash"
    case suctionBomb = "Bomb_Suction"
    case torpedo = "Bomb_Torpedo"
    case angleShooter = "LineMarker"
    case pointSensor = "PointSensor"
    case toxicMist = "PoisonMist"
    case splashWall = "Shield"
    case sprinkler = "Sprinkler"
    case inkMine = "Trap"
    
    func fileName() -> String {
        if self.rawValue.contains("_") {
            let subSplit = self.rawValue.split(separator: "_")
            
            return String(subSplit[0] + subSplit[1])
            
        } else {
            return self.rawValue
        }
    }
}
