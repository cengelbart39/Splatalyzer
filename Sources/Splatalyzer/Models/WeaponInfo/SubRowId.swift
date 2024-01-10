//
//  SubRowId.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

enum SubRowId: String, Codable {
    case squidBeakon = "Beacon"
    
    case curlingBomb = "Bomb_Curling"
    case curlingBombHero = "Bomb_Curling_Hero"
    case curlingBombMission = "Bomb_Curling_Mission"
    case curlingBombRival = "Bomb_Curling_Rival"
    
    case fizzyBomb = "Bomb_Fizzy"
    
    case burstBomb = "Bomb_Quick"
    case burstBombHero = "Bomb_Quick_Hero"
    case burstBombMission = "Bomb_Quick_Mission"
    case burstBombRival = "Bomb_Quick_Rival"
    
    case autobomb = "Bomb_Robot"
    case autobombMission = "Bomb_Robot_Mission"
    case autobombRival = "Bomb_Robot_Rival"
    
    case splatBomb = "Bomb_Splash"
    case splatBombBigCoop = "Bomb_Splash_Big_Coop"
    case splatBombCoop = "Bomb_Splash_Coop"
    case splatBombHero = "Bomb_Splash_Hero"
    case splatBombMission = "Bomb_Splash_Mission"
    case splatBombRival = "Bomb_Splash_Rival"
    
    case suctionBomb = "Bomb_Suction"
    case suctionBombMission = "Bomb_Suction_Mission"
    
    case torpedo = "Bomb_Torpedo"
    
    case angleShooter = "LineMarker"
    case angleShooterMission = "LineMarker_Mission"
    
    case none = ""
    
    case pointSensor = "PointSensor"
    
    case toxicMist = "PoisonMist"
    
    case salmonBuddy = "SalmonBuddy"
    
    case splashWall = "Shield"
    
    case sprinkler = "Sprinkler"
    
    case inkMine = "Trap"
    case inkMineMission = "Trap_Mission"
}
