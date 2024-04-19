//
//  AbilityView.swift
//  
//
//  Created by Christopher Engelbart on 1/14/24.
//

import Splatalyzer
import SwiftUI

/// A button that displays the an ability slot and enables modification.
public struct AbilityView: View {
    
    @Environment(\.colorScheme) private var colorScheme
    
    /// The ability displayed and modified
    @Binding public var ability: Ability
    
    /// Whether the ability is a main ability
    public var isMain: Bool
    
    /// The restriction applied to ability selection
    public var restriction: AbilityRestriction
    
    /// Whether to present ``AbilityKeyboardView``
    @State public var showCover = false
    
    public init(ability: Binding<Ability>, isMain: Bool, restriction: AbilityRestriction) {
        self._ability = ability
        self.isMain = isMain
        self.restriction = restriction
    }
    
    public var body: some View {
        Button(action: {
            showCover = true
        }, label: {
            ImageView(image: ability.image)
                .padding(5)
                .abilityBackground(for: colorScheme)
        })
        .accessibilityLabel(self.getLabel())
        .accessibilityHint("Change current ability")
        .buttonStyle(.plain)
        .showAbilityKeyboard(isPresented: $showCover, onDismiss: {
            self.showCover = false
        }, content: {
            AbilityKeyboardView(currentAbility: $ability, restriction: restriction)
                .presentationDetents([.medium])
        })
    }
    
    func getLabel() -> String {
        if restriction == .headgearOnly && isMain {
            return String(localized: "Headgear Main Ability, \(ability.localized)")

        } else if restriction == .clothesOnly && isMain {
            return String(localized: "Clothes Main Ability, \(ability.localized)")
            
        } else if restriction == .shoesOnly && isMain {
            return String(localized: "Shoes Main Ability, \(ability.localized)")
            
        } else {
            return String(localized: "Sub Ability, \(ability.localized)")
        }
    }
}
