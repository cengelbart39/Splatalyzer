//
//  Ability.swift
//
//
//  Created by Christopher Engelbart on 12/29/23.
//

#if os(macOS)
import AppKit
#else
import UIKit
#endif

import Foundation

/// Represents the relationship between ``Ability`` and how much AP is provided.
///
/// This is for convenience for use in functions and 
/// structures/classes. It commonly has an entry for every
///  `Ability`, even if the associated value is `0`.
///
/// If we want to represent 5 AP of Ink Recovery Up for a given
/// gear build:
/// ```swift
///var abilities = AbilityPoints()
///abilities[.inkRecoveryUp] = 5
/// ```
public typealias AbilityPoints = [Ability : Int]

/// Special attributes for gear that effect the player and/oror weapons
public enum Ability: String, CaseIterable, Codable, Sendable {
    /// A unassigned ability
    case none = "Unknown"
    
    /// An ability that increases ink-tank refill rate
    case inkRecoveryUp = "InkRecovery_Up"
    
    /// An ability that reduces damage taken and improves mobility when walking through enemy ink
    case inkResistanceUp = "OpInkEffect_Reduction"
    
    /// An ability that decreases amount of ink consumed by your main weapon
    case inkSaverMain = "MainInk_Save"
    
    /// An ability that decreases amount of ink consumed by your sub weapon
    case inkSaverSub = "SubInk_Save"
    
    /// An ability that makes Squid Rolls and Squid Surges easier to do and steadies your aim when firing after jumping
    case intensifyAction = "Action_Up"
    
    /// An ability that increases movement speed in Inkling or Octoling form
    case runSpeedUp = "HumanMove_Up"
    
    /// An ability that reduces effects and damage from sub weapons
    case subResistanceUp = "SubEffect_Reduction"
    
    /// An ability that upgrades your sub weapon
    case subPowerUp = "SubSpec_Up"
    
    /// An ability that increases movement speed in swim form
    case swimSpeedUp = "SquidMove_Up"
    
    /// An abiltiy that reduces special-gauge decrease after getting splatted
    case specialSaver = "RespawnSpecialGauge_Save"
    
    /// An ability that increases special-gauge fill rate
    case specialChargeUp = "SpecialIncrease_Up"
    
    /// An ability that upgrades your special weapon
    case specialPowerUp = "SpecialSpec_Up"
    
    /// An ability that reduces respawn time after getting splatted repeatedly without splatting any opponents
    case quickRespawn = "RespawnTime_Save"
    
    /// An ability that increases Super Jump speed
    case quickSuperJump = "JumpTime_Save"

    // Head-Only
    /// A headgear-exclusive ability that boosts some of your abilities for a short time after respawning
    case comeback = "ComeBack"
    
    /// A headgear-exclusive ability that boosts ink-recovery rate and weapon-ink efficiency for the last 30 seconds of battle
    case lastDitchEffort = "EndAllUp"
    
    /// A  headgear-exclusive ability that boosts your speed while moving for the first 30 seconds of battle
    case openingGambit = "StartAllUp"
    
    /// A headgear-exclusive ability that fills special gauge automatically if your team has fewer active players than the enemy
    case tenacity = "MinorityUp"

    // Clothes-Only
    /// An ability exclusive to the Splatfest Tee that doubles the effect of other gear abilities attached to this gear
    case abilityDoubler = "ExSkillDouble"
    
    /// A clothes-exclusive ability that once you've respawned, reveals the position of the players who splatted you
    case haunt = "DeathMarking"
    
    /// A clothes-exclusive ability that leaves no trace when swimming in inked ground but slightly reduces swim speed
    case ninjaSquid = "SquidMoveSpatter_Reduction"
    
    /// A clothes-exclusive ability that increases respawn time and special-gauge spawn penalty for you and any player you splat
    case respawnPunisher = "Exorcist"
    
    /// A clothes-exclusive ability that allows you to track distant players hit with shots from your main weapon
    case thermalInk = "ThermalInk"
    
    // Shoes Only
    /// A shoes-exclusive ability that, when tilting the Left Stick during a Super Jump, lets you perform a roll in that direction when landing
    case dropRoller = "SomersaultLanding"
    
    /// A shoes-exclusive ability that increases damage dealt to all nonplayer targets
    case objectShredder = "ObjectEffect_Up"
    
    /// A shoes-exclusive ability that hides your Super Jump landing point from distant players
    case stealthJump = "SuperJumpSign_Hide"
    
    /// Whether an ability is restricted as a primary ability to headgear, clothes, shoes, or not-at-all.
    public var restriction: AbilityRestriction {
        switch self {
        // Head Only
        case .comeback, .lastDitchEffort, .openingGambit, .tenacity:
            return .headgearOnly
            
        // Clothes Only
        case .abilityDoubler, .haunt, .ninjaSquid, .respawnPunisher, .thermalInk:
            return .clothesOnly
            
        // Shoes Only
        case .dropRoller, .objectShredder, .stealthJump:
            return .shoesOnly
            
        // Other
        default:
            return .none
        }
    }
    
    /// The ability chunks required for an ability, that isn't itself.
    /// Only applicable for primary-only abilities with a restriction, excluding Ability Doubler.
    public var components: [Ability] {
        switch self {
        // Head
        case .comeback:
            return [.runSpeedUp, .swimSpeedUp, .specialChargeUp]
            
        case .lastDitchEffort:
            return [.inkSaverMain, .inkSaverSub, .inkRecoveryUp]
            
        case .openingGambit:
            return [.runSpeedUp, .swimSpeedUp, .inkResistanceUp]
            
        case .tenacity:
            return [.specialChargeUp, .specialPowerUp, .specialPowerUp]
            
        // Clothes (w/o Ability Doubler)
        case .haunt:
            return [.quickRespawn, .subPowerUp, .inkResistanceUp]
            
        case .ninjaSquid:
            return [.inkRecoveryUp, .runSpeedUp, .swimSpeedUp]
            
        case .respawnPunisher:
            return [.specialSaver, .quickRespawn, .subResistanceUp]
            
        case .thermalInk:
            return [.inkSaverMain, .inkSaverSub, .intensifyAction]
        
        // Shoes
        case .dropRoller:
            return [.quickSuperJump, .inkResistanceUp, .intensifyAction]
            
        case .objectShredder:
            return [.inkRecoveryUp, .specialPowerUp, .subPowerUp]
            
        case .stealthJump:
            return [.quickSuperJump, .subResistanceUp, .subPowerUp]

        default:
            return []
        }
    }
    
    #if os(macOS)
    /// The icon for the ability used in-game.
    ///
    /// On OSes outside of macOS, `UIImage` is used instead.
    public var image: NSImage? {
        guard let url = Bundle.module.url(forResource: self.rawValue, withExtension: "png") else {
            return nil
        }
        
        guard let data = try? Data(contentsOf: url) else {
            return nil
        }
        
        return NSImage(data: data)
    }
    #else
    /// The icon for the ability used in-game.
    ///
    /// On  macOS, `NSImage` is used instead.
    public var image: UIImage? {
        guard let url = Bundle.module.url(forResource: self.rawValue, withExtension: "png") else {
            return nil
        }
        
        guard let data = try? Data(contentsOf: url) else {
            return nil
        }
        
        return UIImage(data: data)
    }
    #endif
    
    /// The localized version of the ability name.
    ///
    /// See `Ability.xcstrings` for all translations.
    public var localized: String {
        return NSLocalizedString(self.rawValue, tableName: "Ability", bundle: Bundle.module, comment: "")
    }
}

public extension Ability {
    static let useableAbilities = Ability.allCases.filter { $0 != .none }
    
    /// An array of abilities that can only  be used on headgear
    static let headgearAbilities = Ability.allCases.filter {
        $0.restriction == .headgearOnly || $0.restriction == .none
    }
    
    /// An arrayof abilities that can only be used on clothes
    static let clothesAbilities = Ability.allCases.filter {
        $0.restriction == .clothesOnly || $0.restriction == .none
    }
    
    /// An array of abilities that can only be used on shoes
    static let shoesAbilities = Ability.allCases.filter {
        $0.restriction == .shoesOnly || $0.restriction == .none
    }
    
    /// An array of abilities that have no restriction.
    static let nonRestrictedAbilities = Ability.allCases.filter {
        $0.restriction == .none
    }
    
    /// Converts certain abilities to its equivalent ``AbilitySpecialEffect``
    /// - Parameter intensity: Applicable only for Last-Ditch Effort; expects a number between 0 and 21.
    /// - Returns: The applicable special effect; if there is none, return `nil`
    func toSpecialEffect(intensity: Int = 0) -> AbilitySpecialEffect? {
        if self == .dropRoller {
            return .dropRoller
            
        } else if self == .openingGambit {
            return .openingGambit
            
        } else if self == .lastDitchEffort {
            return .lastDitchEffort(intensity)
            
        } else if self == .comeback {
            return .comeBack
            
        } else {
            return nil
        }
    }
}

/// The geartype an ``Ability`` or ``GearPiece`` is restricted to
public enum AbilityRestriction: Codable, Sendable {
    case headgearOnly
    case clothesOnly
    case shoesOnly
    case none
}
