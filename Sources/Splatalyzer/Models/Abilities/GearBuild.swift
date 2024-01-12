//
//  GearBuild.swift
//
//
//  Created by Christopher Engelbart on 1/9/24.
//

import Foundation

struct GearBuild {
    let headgear: GearPiece
    let clothes: GearPiece
    let shoes: GearPiece
    
    init(headgear: GearPiece, clothes: GearPiece, shoes: GearPiece) {
        self.headgear = headgear
        self.clothes = clothes
        self.shoes = shoes
    }
    
    init() {
        self.headgear = GearPiece(for: .headgearOnly)
        self.clothes = GearPiece(for: .clothesOnly)
        self.shoes = GearPiece(for: .shoesOnly)
    }
    
    func isValid() -> Bool {
        return self.headgear.isValid() && self.clothes.isValid() && self.shoes.isValid()
    }
    
    func toAbilityPoints(ldeIntensity: Int = 0, usingTacticooler: Bool) -> AbilityPoints {
        let apHead = self.headgear.toAbilityPoints()
        let apClothes = self.clothes.toAbilityPoints()
        let apShoes = self.shoes.toAbilityPoints()
        
        var combinedAp = apHead
            .merging(apClothes, uniquingKeysWith: { $0 + $1 })
            .merging(apShoes, uniquingKeysWith: { $0 + $1 })
        
        let specialEffects = self.specialEffects(ldeIntensity, usingTacticooler)
        
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
    
    func hasAbility(_ ability: Ability) -> Bool {
        return self.headgear.hasAbility(ability) || self.clothes.hasAbility(ability) || self.shoes.hasAbility(ability)
    }
}

struct GearPiece {
    let main: Ability
    let sub1: Ability
    let sub2: Ability
    let sub3: Ability
    let slot: AbilityRestriction
    
    init(main: Ability, sub1: Ability, sub2: Ability, sub3: Ability, for slot: AbilityRestriction) {
        self.main = main
        self.sub1 = sub1
        self.sub2 = sub2
        self.sub3 = sub3
        self.slot = slot
    }
    
    init(for slot: AbilityRestriction) {
        self.main = .none
        self.sub1 = .none
        self.sub2 = .none
        self.sub3 = .none
        self.slot = slot
    }
    
    func isValid() -> Bool {
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
    
    func toArray() -> [Ability] {
        return [self.main, self.sub1, self.sub2, self.sub3]
    }
    
    func toAbilityPoints() -> AbilityPoints {
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
    
    func specialEffect(ldeIntensity: Int = 0) -> AbilitySpecialEffect? {
        return self.main.toSpecialEffect(intensity: ldeIntensity)
    }
    
    func hasAbility(_ ability: Ability) -> Bool {
        return self.main == ability || self.sub1 == ability || self.sub2 == ability || self.sub3 == ability
    }
}
