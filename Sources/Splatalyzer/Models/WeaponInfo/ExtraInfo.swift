//
//  ExtraInfo.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

enum ExtraInfo: Codable {
    case blasterWeakBlast
    case blowerInhale
    case castleAttack
    case chariotBody
    case chimneyGenerator
    case criticalHit
    case curlingDirectHit
    case extraBombCore
    case extraPaintSplash
    case extraPaintSplashExplosion
    case fullCharge
    case jetpackJet
    case multiMissileDirectHit
    case normal
    case rollerCore
    case rollerInkNoDamage
    case saberChargeShot
    case saberChargeSlash
    case saberChargeSlashPenetrate
    case saberShot
    case saberSlash
    case shelterCanopy
    case shockSonarWave
    case shooterVariableRepeat
    case slosherBig
    case slosherLauncherFollower
    case ultraStampSwing
    
    enum CodingKeys: String, CodingKey {
        case blasterWeakBlast = "BlasterWeakBlast"
        case blowerInhale = "BlowerInhale"
        case castleAttack = "CastleAttack"
        case chariotBody = "ChariotBody"
        case chimneyGenerator = "ChimneyGenerator"
        case criticalHit = "CriticalHit"
        case curlingDirectHit = "CurlingDirectHit"
        case extraBombCore = "ExtraBombCore"
        case extraPaintSplash = "ExtraPaintSplash"
        case extraPaintSplashExplosion = "ExtraPaintSplashExplosion"
        case fullCharge = "FullCharge"
        case jetpackJet = "JetpackJet"
        case multiMissileDirectHit = "MultiMissileDirectHit"
        case normal = "Normal"
        case rollerCore = "RollerCore"
        case rollerInkNoDamage = "RollerInkNoDamage"
        case saberChargeShot = "SaberChargeShot"
        case saberChargeSlash = "SaberChargeSlash"
        case saberChargeSlashPenetrate = "SaberChargeSlashPenetrate"
        case saberShot = "SaberShot"
        case saberSlash = "SaberSlash"
        case shelterCanopy = "ShelterCanopy"
        case shockSonarWave = "ShockSonarWave"
        case shooterVariableRepeat = "ShooterVariableRepeat"
        case slosherBig = "SlosherBig"
        case slosherLauncherFollower = "SlosherLauncherFollower"
        case ultraStampSwing = "UltraStampSwing"
    }
}
