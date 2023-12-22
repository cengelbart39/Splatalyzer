//
//  RowKey.swift
//  
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

enum RowKey: Codable {
    case blasterMiddle
    case blasterShort
    case blasterKillOneShot
    case blaster
    case blowerExhale_BombCore
    case blowerExhale
    case blowerInhale
    case bombFlower
    case bombCurlingBullet
    case bombDirectHit
    case bombFizzy
    case bombSuction
    case bombTorpedoBullet
    case bombTorpedoSplashBurst
    case bombTrap
    case bomb
    case brushCore
    case brushSplash
    case cannonMissile
    case castle
    case chargerFullLight
    case chargerFullLong
    case chargerFull
    case chargerLight
    case chargerLong
    case charger
    case chariotBody
    case chariotCannon
    case chimney
    case coopEnemyRush
    case coopEnemySakeJaw
    case coopEnemySakeSaucerFall
    case coopEnemySakeTamaireBombDamage
    case coopEnemySakelienBomberBlast
    case coopEnemySakerocketBlast
    case `default`
    case enemyFlyingHoheiBombCore
    case gachihokoTimeUpBurst
    case gachihokoBombCore
    case gachihokoBullet
    case geyserOnline
    case geyser
    case goldenIkuraAttack
    case inkStormRain
    case inkStorm
    case jetpackBombCore
    case jetpackBullet
    case jetpackCoop
    case jetpackJet
    case maneuverShort
    case maneuverSideStepBombCore
    case maneuver
    case microLaser
    case missionSalmonBuddy
    case movePainterBurst
    case movePainterDirect
    case multiMissileBombCore
    case multiMissileBullet
    case niceBall
    case objectEffectUp
    case pogo
    case rollerCore
    case rollerSplashCompact
    case rollerSplashHeavy
    case rollerSplashHunter
    case rollerSplashWide
    case rollerSplash
    case saberChargeShot
    case saberChargeSlashPenetrate
    case saberChargeSlash
    case saberShot
    case saberSlash
    case sakerocketBullet
    case shelterCanopyCompact
    case shelterCanopyWide
    case shelterCanopy
    case shelterShotCompact
    case shelterShotWide
    case shelterShot
    case shield
    case shockSonarWave
    case shooterBlaze
    case shooterExpert
    case shooterFirst
    case shooterFlashRepeat
    case shooterFlash
    case shooterGravity
    case shooterHeavy
    case shooterLong
    case shooterPrecision
    case shooterShort
    case shooterTripleMiddle
    case shooterTripleQuick
    case shooter
    case skewerBody
    case skewer
    case slosherBathtub
    case slosherBear
    case slosherWashtubBombCore
    case slosherWashtub
    case slosher
    case spinner
    case sprinkler
    case stringerShort
    case stringer
    case superHook
    case superLanding
    case tripleTornado
    case ultraShot
    case ultraStampSwing
    case ultraStampThrowBombCore
    case ultraStampThrow
    
    enum CodingKeys: String, CodingKey {
        case blasterMiddle = "Blaster_BlasterMiddle"
        case blasterShort = "Blaster_BlasterShort"
        case blasterKillOneShot = "Blaster_KillOneShot"
        case blaster = "Blaster"
        case blowerExhale_BombCore = "BlowerExhale_BombCore"
        case blowerExhale = "BlowerExhale"
        case blowerInhale = "BlowerInhale"
        case bombFlower = "BombFlower"
        case bombCurlingBullet = "Bomb_CurlingBullet"
        case bombDirectHit = "Bomb_DirectHit"
        case bombFizzy = "Bomb_Fizzy"
        case bombSuction = "Bomb_Suction"
        case bombTorpedoBullet = "Bomb_TorpedoBullet"
        case bombTorpedoSplashBurst = "Bomb_TorpedoSplashBurst"
        case bombTrap = "Bomb_Trap"
        case bomb = "Bomb"
        case brushCore = "BrushCore"
        case brushSplash = "BrushSplash"
        case cannonMissile = "CannonMissile"
        case castle = "Castle"
        case chargerFullLight = "ChargerFull_Light"
        case chargerFullLong = "ChargerFull_Long"
        case chargerFull = "ChargerFull"
        case chargerLight = "Charger_Light"
        case chargerLong = "Charger_Long"
        case charger = "Charger"
        case chariotBody = "Chariot_Body"
        case chariotCannon = "Chariot_Cannon"
        case chimney = "Chimney"
        case coopEnemyRush = "CoopEnemyRush"
        case coopEnemySakeJaw = "CoopEnemySakeJaw"
        case coopEnemySakeSaucerFall = "CoopEnemySakeSaucerFall"
        case coopEnemySakeTamaireBombDamage = "CoopEnemySakeTamaireBombDamage"
        case coopEnemySakelienBomberBlast = "CoopEnemySakelienBomberBlast"
        case coopEnemySakerocketBlast = "CoopEnemySakerocketBlast"
        case `default` = "Default"
        case enemyFlyingHoheiBombCore = "EnemyFlyingHohei_BombCore"
        case gachihokoTimeUpBurst = "GachihokoTimeUpBurst"
        case gachihokoBombCore = "Gachihoko_BombCore"
        case gachihokoBullet = "Gachihoko_Bullet"
        case geyserOnline = "GeyserOnline"
        case geyser = "Geyser"
        case goldenIkuraAttack = "GoldenIkuraAttack"
        case inkStormRain = "InkStormRain"
        case inkStorm = "InkStorm"
        case jetpackBombCore = "Jetpack_BombCore"
        case jetpackBullet = "Jetpack_Bullet"
        case jetpackCoop = "Jetpack_Coop"
        case jetpackJet = "Jetpack_Jet"
        case maneuverShort = "Maneuver_Short"
        case maneuverSideStepBombCore = "Maneuver_SideStep_BombCore"
        case maneuver = "Maneuver"
        case microLaser = "MicroLaser"
        case missionSalmonBuddy = "MissionSalmonBuddy"
        case movePainterBurst = "MovePainter_Burst"
        case movePainterDirect = "MovePainter_Direct"
        case multiMissileBombCore = "MultiMissile_BombCore"
        case multiMissileBullet = "MultiMissile_Bullet"
        case niceBall = "NiceBall"
        case objectEffectUp = "ObjectEffect_Up"
        case pogo = "Pogo"
        case rollerCore = "RollerCore"
        case rollerSplashCompact = "RollerSplash_Compact"
        case rollerSplashHeavy = "RollerSplash_Heavy"
        case rollerSplashHunter = "RollerSplash_Hunter"
        case rollerSplashWide = "RollerSplash_Wide"
        case rollerSplash = "RollerSplash"
        case saberChargeShot = "Saber_ChargeShot"
        case saberChargeSlashPenetrate = "Saber_ChargeSlash_Penetrate"
        case saberChargeSlash = "Saber_ChargeSlash"
        case saberShot = "Saber_Shot"
        case saberSlash = "Saber_Slash"
        case sakerocketBullet = "SakerocketBullet"
        case shelterCanopyCompact = "ShelterCanopy_Compact"
        case shelterCanopyWide = "ShelterCanopy_Wide"
        case shelterCanopy = "ShelterCanopy"
        case shelterShotCompact = "ShelterShot_Compact"
        case shelterShotWide = "ShelterShot_Wide"
        case shelterShot = "ShelterShot"
        case shield = "Shield"
        case shockSonarWave = "ShockSonar_Wave"
        case shooterBlaze = "Shooter_Blaze"
        case shooterExpert = "Shooter_Expert"
        case shooterFirst = "Shooter_First"
        case shooterFlashRepeat = "Shooter_FlashRepeat"
        case shooterFlash = "Shooter_Flash"
        case shooterGravity = "Shooter_Gravity"
        case shooterHeavy = "Shooter_Heavy"
        case shooterLong = "Shooter_Long"
        case shooterPrecision = "Shooter_Precision"
        case shooterShort = "Shooter_Short"
        case shooterTripleMiddle = "Shooter_TripleMiddle"
        case shooterTripleQuick = "Shooter_TripleQuick"
        case shooter = "Shooter"
        case skewerBody = "Skewer_Body"
        case skewer = "Skewer"
        case slosherBathtub = "Slosher_Bathtub"
        case slosherBear = "Slosher_Bear"
        case slosherWashtubBombCore = "Slosher_WashtubBombCore"
        case slosherWashtub = "Slosher_Washtub"
        case slosher = "Slosher"
        case spinner = "Spinner"
        case sprinkler = "Sprinkler"
        case stringerShort = "Stringer_Short"
        case stringer = "Stringer"
        case superHook = "SuperHook"
        case superLanding = "SuperLanding"
        case tripleTornado = "TripleTornado"
        case ultraShot = "UltraShot"
        case ultraStampSwing = "UltraStamp_Swing"
        case ultraStampThrowBombCore = "UltraStamp_Throw_BombCore"
        case ultraStampThrow = "UltraStamp_Throw"
    }
}
