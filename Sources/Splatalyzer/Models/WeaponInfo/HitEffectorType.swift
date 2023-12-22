//
//  HitEffectorType.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

enum HitEffectorType: Codable {
    case blaster
    case blasterExtraBombCore
    case blasterExtraBombCoreWeak
    case blowerInhale
    case bomb
    case bombCurling
    case bombFizzy
    case bombTorpedo
    case castle
    case castleAttack
    case charger
    case chargerFullCharge
    case chargerPaintSplash
    case chimney
    case `default`
    case firework
    case gachihoko
    case inkStorm
    case jetpackLauncher
    case maneuver
    case multiMissileBombCore
    case multiMissileBullet
    case niceBall
    case roller
    case rollerNoDamage
    case saber
    case saberChargeShot
    case saberChargeSlash
    case saberShot
    case saberSlash
    case shelter
    case shelterCanopy
    case shockSonarWave
    case shooter
    case shooterCriticalHit
    case skewerBombCore
    case slosher
    case slosherBathtub
    case slosherBearLeader
    case slosherBig
    case slosherLauncherFollower
    case slosherLauncherLeader
    case slosherWashtubBombCore
    case spinner
    case sprinklerInk
    case superLanding
    case ultraShot
    case ultraStamp
    
    enum CodingKeys: String, CodingKey {
        case blaster = "Blaster"
        case blasterExtraBombCore = "Blaster_ExtraBombCore"
        case blasterExtraBombCoreWeak = "Blaster_ExtraBombCoreWeak"
        case blowerInhale = "Blower_Inhale"
        case bomb = "Bomb"
        case bombCurling = "Bomb_Curling"
        case bombFizzy = "Bomb_Fizzy"
        case bombTorpedo = "Bomb_Torpedo"
        case castle = "Castle"
        case castleAttack = "Castle_Attack"
        case charger = "Charger"
        case chargerFullCharge = "Charger_FullCharge"
        case chargerPaintSplash = "Charger_PaintSplash"
        case chimney = "Chimney"
        case `default` = "Default"
        case firework = "Firework"
        case gachihoko = "Gachihoko"
        case inkStorm = "InkStorm"
        case jetpackLauncher = "Jetpack_Launcher"
        case maneuver = "Maneuver"
        case multiMissileBombCore = "MultiMissile_BombCore"
        case multiMissileBullet = "MultiMissile_Bullet"
        case niceBall = "NiceBall"
        case roller = "Roller"
        case rollerNoDamage = "Roller_NoDamage"
        case saber = "Saber"
        case saberChargeShot = "Saber_ChargeShot"
        case saberChargeSlash = "Saber_ChargeSlash"
        case saberShot = "Saber_Shot"
        case saberSlash = "Saber_Slash"
        case shelter = "Shelter"
        case shelterCanopy = "Shelter_Canopy"
        case shockSonarWave = "ShockSonar_Wave"
        case shooter = "Shooter"
        case shooterCriticalHit = "Shooter_CriticalHit"
        case skewerBombCore = "Skewer_BombCore"
        case slosher = "Slosher"
        case slosherBathtub = "Slosher_Bathtub"
        case slosherBearLeader = "Slosher_BearLeader"
        case slosherBig = "Slosher_Big"
        case slosherLauncherFollower = "Slosher_LauncherFollower"
        case slosherLauncherLeader = "Slosher_LauncherLeader"
        case slosherWashtubBombCore = "Slosher_WashtubBombCore"
        case spinner = "Spinner"
        case sprinklerInk = "Sprinkler_Ink"
        case superLanding = "SuperLanding"
        case ultraShot = "UltraShot"
        case ultraStamp = "UltraStamp"
    }
}
