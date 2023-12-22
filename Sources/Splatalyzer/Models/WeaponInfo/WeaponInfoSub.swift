//
//  WeaponInfoSub.swift
//  
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct WeaponInfoSub: Codable, Identifiable {
    let defaultDamageRate: DamageRateInfo
    let defaultHitEffector: HitEffectorType
    let extraDamageRateInfo: [ExtraDamageRateInfo]
    let extraHitEffectorInfo: [ExtraHitEffectorInfo]
    let id: Int
    let label: String
    let lockerInfo: String
    let npcActor: String
    let specActor: String
    let type: ModeType
    let rowId: SubRowId
    
    enum CodingKeys: String, CodingKey {
        case defaultDamageRate = "DefaultDamageRateInfoRow"
        case defaultHitEffector = "DefaultHitEffectorType"
        case extraDamageRateInfo = "ExtraDamageRateInfoRowSet"
        case extraHitEffectorInfo = "ExtraHitEffectorInfoSet"
        case id = "Id"
        case label = "Label"
        case lockerInfo = "LockerGoodsSubWeaponInfo"
        case npcActor = "NpcActor"
        case specActor = "SpecActor"
        case type = "Type"
        case rowId = "__RowId"
    }
}

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


extension Array where Element == WeaponInfoSub {
    func lookupByRowId(_ rowId: SubRowId) -> WeaponInfoSub? {
        for item in self {
            if item.rowId == rowId {
                return item
            }
        }
        
        return nil
    }
}

