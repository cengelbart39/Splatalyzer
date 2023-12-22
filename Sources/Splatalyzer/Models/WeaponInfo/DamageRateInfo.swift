//
//  DamageRateInfo.swift
//  
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

enum DamageRateInfo: Codable {
    case blaster
    case blasterKillOneShot
    case blasterMiddle
    case blasterShort
    case blowerInhale
    case blowerExhaleBombCore
    case bomb
    case bombCurlingBullet
    case bombDirectHit
    case bombFizzy
    case bombSuction
    case bombTorpedoBullet
    case bombTorpedoSplashBurst
    case bombTrap
    case brushCore
    case brushSplash
    case charger
    case chargerLight
    case chargerLong
    case chargerFull
    case chargerFullLight
    case chargerFullLong
    case chariotBody
    case chariotCannon
    case `default`
    case gachihokoBullet
    case gachihokoBombCore
    case inkStormRain
    case jetpackJet
    case jetpackBombCore
    case maneuver
    case maneuverShort
    case multiMissileBullet
    case rollerCore
    case rollerSplash
    case rollerSplashCompact
    case rollerSplashHeavy
    case rollerSplashHunter
    case rollerSplashWide
    case saber
    case saberChargeShot
    case saberChargeSlash
    case saberChargeSlashPenetrate
    case saberShot
    case saberSlash
    case shelter
    case shelterCanopy
    case shelterCanopyCompact
    case shelterCanopyWide
    case shelterShot
    case shelterShotCompact
    case shelterShotWide
    case shield
    case shockSonarWave
    case shooter
    case shooterBlaze
    case shooterExpert
    case shooterFlash
    case shooterFlashRepeat
    case shooterFirst
    case shooterGravity
    case shooterHeavy
    case shooterLong
    case shooterPrecision
    case shooterShort
    case shooterTripleMiddle
    case shooterTripleQuick
    case skewer
    case slosher
    case slosherBathtub
    case slosherBear
    case slosherWashtub
    case slosherWashtubBombCore
    case spinner
    case sprinkler
    case stringer
    case stringerShort
    case ultraStampSwing
    case ultraStampThrowBombCore
    
    enum CodingKeys: String, CodingKey {
        case blaster = "Blaster"
        case blasterKillOneShot = "Blaster_KillOneShot"
        case blasterMiddle = "Blaster_BlasterMiddle"
        case blasterShort = "Blaster_BlasterShort"
        case blowerInhale = "BlowerInhale"
        case blowerExhaleBombCore = "BlowerExhale_BombCore"
        case bomb = "Bomb"
        case bombCurlingBullet = "Bomb_CurlingBullet"
        case bombDirectHit = "Bomb_DirectHit"
        case bombFizzy = "Bomb_Fizzy"
        case bombSuction = "Bomb_Suction"
        case bombTorpedoBullet = "Bomb_TorpedoBullet"
        case bombTorpedoSplashBurst = "Bomb_TorpedoSplashBurst"
        case bombTrap = "Bomb_Trap"
        case brushCore = "BrushCore"
        case brushSplash = "BrushSplash"
        case charger = "Charger"
        case chargerFull = "ChargerFull"
        case chargerFullLight = "ChargerFull_Light"
        case chargerFullLong = "ChargerFull_Long"
        case chargerLight = "Charger_Light"
        case chargerLong = "Charger_Long"
        case chariotBody = "Chariot_Body"
        case chariotCannon = "Chariot_Cannon"
        case `default` = "Default"
        case gachihokoBullet = "Gachihoko_Bullet"
        case gachihokoBombCore = "Gachihoko_BombCore"
        case inkStormRain = "InkStormRain"
        case jetpackJet = "Jetpack_Jet"
        case jetpackBombCore = "Jetpack_BombCore"
        case maneuver = "Maneuver"
        case maneuverShort = "Maneuver_Short"
        case multiMissileBullet = "MultiMissile_Bullet"
        case rollerCore = "RollerCore"
        case rollerSplash = "RollerSplash"
        case rollerSplashCompact = "RollerSplashCompact"
        case rollerSplashHeavy = "RollerSplashHeavy"
        case rollerSplashHunter = "RollerSplashHunter"
        case rollerSplashWide = "RollerSplashWide"
        case saber = "Saber"
        case saberChargeShot = "Saber_ChargeShot"
        case saberChargeSlash = "Saber_ChargeSlash"
        case saberChargeSlashPenetrate = "Saber_ChargeSlash_Penetrate"
        case saberShot = "Saber_Shot"
        case saberSlash = "Saber_Slash"
        case shelter = "Shelter"
        case shelterCanopy = "ShelterCanopy"
        case shelterCanopyCompact = "ShelterCanopy_Compact"
        case shelterCanopyWide = "ShelterCanopy_Wide"
        case shelterShot = "ShelterShot"
        case shelterShotCompact = "ShelterShot_Compact"
        case shelterShotWide = "ShelterShot_Wide"
        case shield = "Shield"
        case shockSonarWave = "ShockSonar_Wave"
        case shooter = "Shooter"
        case shooterBlaze = "Shooter_Blaze"
        case shooterExpert = "Shooter_Expert"
        case shooterFlash = "Shooter_Flash"
        case shooterFlashRepeat = "Shooter_FlashRepeat"
        case shooterFirst = "Shooter_First"
        case shooterGravity = "Shooter_Gravity"
        case shooterHeavy = "Shooter_Heavy"
        case shooterLong = "Shooter_Long"
        case shooterPrecision = "Shooter_Precision"
        case shooterShort = "Shooter_Short"
        case shooterTripleMiddle = "Shooter_TripleMiddle"
        case shooterTripleQuick = "Shooter_TripleQuick"
        case skewer = "Skewer"
        case slosher = "Slosher"
        case slosherBathtub = "Slosher_Bathtub"
        case slosherBear = "Slosher_Bear"
        case slosherWashtub = "Slosher_Washtub"
        case slosherWashtubBombCore = "Slosher_WashtubBombCore"
        case spinner = "Spinner"
        case sprinkler = "Sprinkler"
        case stringer = "Stringer"
        case stringerShort = "Stringer_Short"
        case ultraStampSwing = "UltraStamp_Swing"
        case ultraStampThrowBombCore = "UltraStamp_Throw_BombCore"
    }
}
