//
//  DamageType.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

public enum DamageType: String, CaseIterable {
    case turretMax = "Turret (Max)"
    case turretMin = "Turret (Min)"
    case normalMaxFullCharge = "Normal (Full Charge)"
    case normalMax = "Normal (Max)"
    case normalMin = "Normal (Min)"
    case direct = "Direct"
    case directMax = "Direct (Max)"
    case directMin = "Direct (Min)"
    case directSecondaryMax = "Direct (Secondary Max)"
    case directSecondaryMin = "Direct (Secondary Min)"
    case fullCharge = "Full Charge"
    case maxCharge = "Max Charge"
    case tapShot = "Tap Shot"
    case distance = "Distance"
    case splash = "Splash Damage"
    case bombDirect = "Bomb (Direct)"
    case bombNormal = "Bomb (Splash)"
    case splatanaVertical = "Splatana Vertical"
    case splatanaVerticalDirect = "Splatana Vertical (Direct)"
    case splatanaHorizontal = "Splatana Horizontal"
    case splatanaHorizontalDirect = "Spaltana Horizontal (Direct)"
    case splashMax = "Splash (Max)"
    case splashMin = "Splash (Min)"
    case splashVerticalMax = "Splash Vertical (Max)"
    case splashVerticalMin = "Splash Vertical (Min)"
    case splashHorizontalMax = "Splash Horizontal (Max)"
    case splashHorizontalMin = "Splash Horizontal (Min)"
    case rollOver = "Roll Over"
    case wave = "Wave"
    case specialMaxCharge = "Special (Max Charge)"
    case specialMinCharge = "Special (Min Charge)"
    case specialThrow = "Special Throw"
    case specialThrowDirect = "Special Throw (Direct)"
    case specialSwing = "Special Swing"
    case specialCannon = "Special Cannon"
    case specialBulletMax = "Special Bullet (Max)"
    case specialBulletMin = "Special Bullet (Min)"
    case specialBump = "Special Bump"
    case specialJump = "Special Jump"
    case specialTick = "Special Tick"
    case secondaryModeMax = "Secondary Mode (Max)"
    case secondaryModeMin = "Secodnary Mode (Min)"
    
    var weaponType: DamageWeaponType {
        switch self {
        case .bombDirect, .bombNormal:
            return .sub
            
        case .wave, .specialMaxCharge, .specialMinCharge, .specialThrow, .specialThrowDirect, .specialSwing, .specialCannon, .specialBulletMax, .specialBulletMin, .specialBump, .specialJump, .specialTick, .secondaryModeMax, .secondaryModeMin:
            return .special
            
        default:
            return .main
        }
    }
}

enum DamageWeaponType {
    case main
    case sub
    case special
}
