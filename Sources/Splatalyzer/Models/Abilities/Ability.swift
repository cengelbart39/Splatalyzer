//
//  Ability.swift
//
//
//  Created by Christopher Engelbart on 12/29/23.
//

import Foundation

/// Special attributes for gear that effect the player and/oror weapons
enum Ability: CaseIterable {
    /// A unassigned ability
    case none
    
    /// An ability that increases ink-tank refill rate
    case inkRecoveryUp
    
    /// An ability that reduces damage taken and improves mobility when walking through enemy ink
    case inkResistanceUp
    
    /// An ability that decreases amount of ink consumed by your main weapon
    case inkSaverMain
    
    /// An ability that decreases amount of ink consumed by your sub weapon
    case inkSaverSub
    
    /// An ability that makes Squid Rolls and Squid Surges easier to do and steadies your aim when firing after jumping
    case intensifyAction
    
    /// An ability that increases movement speed in Inkling or Octoling form
    case runSpeedUp
    
    /// An ability that reduces effects and damage from sub weapons
    case subResistanceUp
    
    /// An ability that upgrades your sub weapon
    case subPowerUp
    
    /// An ability that increases movement speed in swim form
    case swimSpeedUp
    
    /// An abiltiy that reduces special-gauge decrease after getting splatted
    case specialSaver
    
    /// An ability that increases special-gauge fill rate
    case specialChargeUp
    
    /// An ability that upgrades your special weapon
    case specialPowerUp
    
    /// An ability that reduces respawn time after getting splatted repeatedly without splatting any opponents
    case quickRespawn
    
    /// An ability that increases Super Jump speed
    case quickSuperJump

    // Head-Only
    /// A headgear-exclusive ability that boosts some of your abilities for a short time after respawning
    case comeback
    
    /// A headgear-exclusive ability that boosts ink-recovery rate and weapon-ink efficiency for the last 30 seconds of battle
    case lastDitchEffort
    
    /// A  headgear-exclusive ability that boosts your speed while moving for the first 30 seconds of battle
    case openingGambit
    
    /// A headgear-exclusive ability that fills special gauge automatically if your team has fewer active players than the enemy
    case tenacity

    // Clothes-Only
    /// An ability exclusive to the Splatfest Tee that doubles the effect of other gear abilities attached to this gear
    case abilityDoubler
    
    /// A clothes-exclusive ability that once you've respawned, reveals the position of the players who splatted you
    case haunt
    
    /// A clothes-exclusive ability that leaves no trace when swimming in inked ground but slightly reduces swim speed
    case ninjaSquid
    
    /// A clothes-exclusive ability that increases respawn time and special-gauge spawn penalty for you and any player you splat
    case respawnPunisher
    
    /// A clothes-exclusive ability that allows you to track distant players hit with shots from your main weapon
    case thermalInk
    
    // Shoes Only
    /// A shoes-exclusive ability that, when tilting the Left Stick during a Super Jump, lets you perform a roll in that direction when landing
    case dropRoller
    
    /// A shoes-exclusive ability that increases damage dealt to all nonplayer targets
    case objectShredder
    
    /// A shoes-exclusive ability that hides your Super Jump landing point from distant players
    case stealthJump
    
    /// Whether an ability is restricted as a primary ability to headgear, clothes, shoes, or not-at-all
    var restriction: AbilityRestriction {
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
    var components: [Ability] {
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
}

extension Ability {
    /// Abilities that can be used on headgear
    static let headgearAbilities = Ability.allCases.filter {
        $0.restriction == .headgearOnly || $0.restriction == .none
    }
    
    /// Abilities that can be used on clothes
    static let clothesAbilities = Ability.allCases.filter {
        $0.restriction == .clothesOnly || $0.restriction == .none
    }
    
    /// Abilities that can be used on shoes
    static let shoesAbilities = Ability.allCases.filter {
        $0.restriction == .shoesOnly || $0.restriction == .none
    }
}

/// The geartype an ``Ability`` is restricted to
enum AbilityRestriction {
    case headgearOnly
    case clothesOnly
    case shoesOnly
    case none
}
