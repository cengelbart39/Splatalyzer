//
//  GearBuild.swift
//
//
//  Created by Christopher Engelbart on 1/9/24.
//

import Foundation

/// Represents a full gear build with 3 main abilities and 9 sub abilities across
/// headgear, clothes, and shoes.
public struct GearBuild: Equatable, Identifiable {
    public var id = UUID()
    public var headgear: GearPiece
    public var clothes: GearPiece
    public var shoes: GearPiece
    
    public init(headgear: GearPiece, clothes: GearPiece, shoes: GearPiece) {
        self.headgear = headgear
        self.clothes = clothes
        self.shoes = shoes
    }
    
    /// Convenience initializer with all unknown abilities
    public init() {
        self.headgear = GearPiece(for: .headgearOnly)
        self.clothes = GearPiece(for: .clothesOnly)
        self.shoes = GearPiece(for: .shoesOnly)
    }
    
    /// Checks if a gear build is valid by if restricted abilities are in the proper slots.
    public func isValid() -> Bool {
        return self.headgear.isValid() && self.clothes.isValid() && self.shoes.isValid()
    }
    
    /// Converts a `GearBuild` to its associated ``AbilityPoints``.
    /// - Parameters:
    ///   - ldeIntensity: A number between 0 and 21. If LDE is not in the gear build, it is assumed it is set to 0.
    ///   - usingTacticooler: Flag for whether Tacticooler effects should be considered, since it temproarily adds ability effects.
    /// - Returns: The equivalent AP for each ability.
    public func toAbilityPoints(ldeIntensity: Int = 0, usingTacticooler: Bool) -> AbilityPoints {
        // Merge AP of all gear pieces
        let apHead = self.headgear.toAbilityPoints()
        let apClothes = self.clothes.toAbilityPoints()
        let apShoes = self.shoes.toAbilityPoints()
        
        var combinedAp = apHead
            .merging(apClothes, uniquingKeysWith: { $0 + $1 })
            .merging(apShoes, uniquingKeysWith: { $0 + $1 })
        
        let specialEffects = self.specialEffects(ldeIntensity, usingTacticooler)
        
        // Convert special effects to AP
        for effect in specialEffects {
            for value in effect.values {
                let currentAp = combinedAp[value.type] ?? 0
                let apUnlimited = value.boostsBeyond ? currentAp + value.ap : max(currentAp, value.ap)
                let newAp = min(apUnlimited, 57)
                
                combinedAp[value.type] = newAp
            }
        }
        
        return combinedAp
    }
    
    /// Gets ``AbilitySpecialEffect``s present in the `GearBuild`
    /// - Parameters:
    ///   - ldeIntensity: A number between 0 and 21. Only applied to headgear with LDE.
    ///   - usingTacticooler: lag for whether Tacticooler effects should be considered, since it temproarily adds ability effects.
    /// - Returns: All `AbilitySpecialEffect`s present in the build
    private func specialEffects(_ ldeIntensity: Int = 0, _ usingTacticooler: Bool) -> [AbilitySpecialEffect] {
        var effects = [AbilitySpecialEffect]()
        
        if let headEffect = self.headgear.specialEffect(ldeIntensity: ldeIntensity) {
            effects.append(headEffect)
        }
        
        if let clothesEffect = self.clothes.specialEffect() {
            effects.append(clothesEffect)
        }
        
        if let shoesEffect = self.shoes.specialEffect() {
            effects.append(shoesEffect)
        }
        
        if usingTacticooler {
            effects.append(.tacticooler)
        }
        
        return effects
    }
    
    /// Checks whether a certain `Ability` is present in the build.
    public func hasAbility(_ ability: Ability) -> Bool {
        return self.headgear.hasAbility(ability) || self.clothes.hasAbility(ability) || self.shoes.hasAbility(ability)
    }
}

/// Represents the abilities of a single gear piece; 1 main and 3 subs.
public struct GearPiece: Equatable, Identifiable {
    public var id = UUID()
    public var main: Ability
    public var sub1: Ability
    public var sub2: Ability
    public var sub3: Ability
    public var slot: AbilityRestriction
    
    public init(main: Ability, sub1: Ability, sub2: Ability, sub3: Ability, for slot: AbilityRestriction) {
        self.main = main
        self.sub1 = sub1
        self.sub2 = sub2
        self.sub3 = sub3
        self.slot = slot
    }
    
    /// Defaults abilities to `none` and applies the given restriction.
    public init(for slot: AbilityRestriction) {
        self.main = .none
        self.sub1 = .none
        self.sub2 = .none
        self.sub3 = .none
        self.slot = slot
    }
    
    /// Determines if gear piece is valid by checking main abilities.
    ///
    /// Checks against an array of headgear, clothes, and shoes abilities
    /// (`static` properties of `Ability`).
    ///
    /// A gear piece, with no restriction is always invalid.
    public func isValid() -> Bool {
        switch self.slot {
        case .headgearOnly:
            return Ability.headgearAbilities.contains(self.main)
            
        case .clothesOnly:
            return Ability.clothesAbilities.contains(self.main)
            
        case .shoesOnly:
            return Ability.shoesAbilities.contains(self.main)
            
        case .none:
            return false
        }
    }
    
    /// Converts a `GearPiece` to an array in the format of
    /// [main, sub1, sub2, sub3].
    public func toArray() -> [Ability] {
        return [self.main, self.sub1, self.sub2, self.sub3]
    }
    
    /// Converts the current gear piece to AP.
    public func toAbilityPoints() -> AbilityPoints {
        var result = AbilityPoints()
        
        let abilities = self.toArray()
        var hasAbilityDoubler = false
        
        for index in 0..<abilities.count {
            let ability = abilities[index]
            
            if ability == .abilityDoubler { hasAbilityDoubler = true }
            
            if !Ability.nonRestrictedAbilities.contains(ability) { continue }
            
            let aps = index == 0 ? 10 : 3
            let apsDoubled = aps * (hasAbilityDoubler ? 2 : 1)
            let newAp = (result[ability] ?? 0) + apsDoubled
            
            result[ability] = newAp
        }
        
        return result
    }
    
    
    /// Attempts to convert the main `Ability` to an ``AbilitySpecialEffect``
    /// - Parameter ldeIntensity: A number in the range `0...21`
    /// - Returns: An `AbilitySpecialEffect` only if ``main`` is
    /// Drop Roller, Opening Gambit, Last-Ditch Effort or Comeback. Otherwise `nil`.
    public func specialEffect(ldeIntensity: Int = 0) -> AbilitySpecialEffect? {
        return self.main.toSpecialEffect(intensity: ldeIntensity)
    }
    
    /// Convience check for the presence of a certain ability in any
    /// ability slot.
    public func hasAbility(_ ability: Ability) -> Bool {
        return self.main == ability || self.sub1 == ability || self.sub2 == ability || self.sub3 == ability
    }
}
