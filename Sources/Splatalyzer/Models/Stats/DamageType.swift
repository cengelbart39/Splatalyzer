//
//  DamageType.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

/// The type of damage done by a weapon
public enum DamageType: String, CaseIterable {
    case turretMax
    case turretMin
    case normalMaxFullCharge
    case normalMax
    case normalMin
    case direct
    case directMax
    case directMin
    case directSecondaryMax
    case directSecondaryMin
    case fullCharge
    case maxCharge
    case tapShot
    case distance
    case splash
    case bombDirect
    case bombNormal
    case splatanaVertical
    case splatanaVerticalDirect
    case splatanaHorizontal
    case splatanaHorizontalDirect
    case splashMax
    case splashMin
    case splashVerticalMax
    case splashVerticalMin
    case splashHorizontalMax
    case splashHorizontalMin
    case rollOver
    case wave
    case specialMaxCharge
    case specialMinCharge
    case specialThrow
    case specialThrowDirect
    case specialSwing
    case specialCannon
    case specialBulletMax
    case specialBulletMin
    case specialBump
    case specialJump
    case specialTick
    case secondaryModeMax
    case secondaryModeMin
    
    /// The weapon type that the damage is performed by
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
    
    /// The localized version of the raw value
    var localized: String {
        return NSLocalizedString(self.rawValue, tableName: "DamageType", bundle: Bundle.module, comment: "")
    }
}

/// The type of weapon that can perform certain damage
/// - SeeAlso: ``DamageType`` for a use of `DamageWepaonType`
enum DamageWeaponType {
    case main
    case sub
    case special
}
