//
//  SubRowId.swift
//  
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

enum SubRowId: Codable {
    case beacon
    case bombCurling
    case bombCurlingHero
    case bombCurlingMission
    case bombCurlingRival
    case bombFizzy
    case bombQuick
    case bombQuickHero
    case bombQuickMission
    case bombQuickRival
    case bombRobot
    case bombRobotMission
    case bombRobotRival
    case bombSplash
    case bombSplashBigCoop
    case bombSplashCoop
    case bombSplashHero
    case bombSplashMission
    case bombSplashRival
    case bombSuction
    case bombSuctionMission
    case bombTorpedo
    case lineMarker
    case lineMarkerMission
    case none
    case pointSensor
    case poisonMist
    case salmonBuddy
    case shield
    case sprinkler
    case trap
    case trapMission
    
    enum CodingKeys: String, CodingKey {
        case beacon = "Beacon"
        case bombCurling = "Bomb_Curling"
        case bombCurlingHero = "Bomb_Curling_Hero"
        case bombCurlingMission = "Bomb_Curling_Mission"
        case bombCurlingRival = "Bomb_Curling_Rival"
        case bombFizzy = "Bomb_Fizzy"
        case bombQuick = "Bomb_Quick"
        case bombQuickHero = "Bomb_Quick_Hero"
        case bombQuickMission = "Bomb_Quick_Mission"
        case bombQuickRival = "Bomb_Quick_Rival"
        case bombRobot = "Bomb_Robot"
        case bombRobotMission = "Bomb_Robot_Mission"
        case bombRobotRival = "Bomb_Robot_Rival"
        case bombSplash = "Bomb_Splash"
        case bombSplashBigCoop = "Bomb_Splash_Big_Coop"
        case bombSplashCoop = "Bomb_Splash_Coop"
        case bombSplashHero = "Bomb_Splash_Hero"
        case bombSplashMission = "Bomb_Splash_Mission"
        case bombSplashRival = "Bomb_Splash_Rival"
        case bombSuction = "Bomb_Suction"
        case bombSuctionMission = "Bomb_Suction_Mission"
        case bombTorpedo = "Bomb_Torpedo"
        case lineMarker = "LineMarker"
        case lineMarkerMission = "LineMarker_Mission"
        case none = ""
        case pointSensor = "PointSensor"
        case poisonMist = "PoisonMist"
        case salmonBuddy = "SalmonBuddy"
        case shield = "Shield"
        case sprinkler = "Sprinkler"
        case trap = "Trap"
        case trapMission = "Trap_Mission"
    }

}
