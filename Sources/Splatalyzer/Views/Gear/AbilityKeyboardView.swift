//
//  AbilityKeyboardView.swift
//
//
//  Created by Christopher Engelbart on 1/14/24.
//

import SwiftUI

/// A view that enables the selection of a gear ability
public struct AbilityKeyboardView: View {
    
    @Environment(\.dismiss) var dismiss
    
    /// The current ability
    @Binding public var currentAbility: Ability
    
    /// Restricts options presented to the user
    public var restriction: AbilityRestriction
    
    public init(currentAbility: Binding<Ability>, restriction: AbilityRestriction) {
        self._currentAbility = currentAbility
        self.restriction = restriction
    }
    
    public var body: some View {
        var abilities: [Ability] {
            switch restriction {
            case .headgearOnly:
                return Ability.headgearAbilities
            case .clothesOnly:
                return Ability.clothesAbilities
            case .shoesOnly:
                return Ability.shoesAbilities
            case .none:
                return Ability.nonRestrictedAbilities
            }
        }
        
        LazyVGrid(columns: Array.init(repeating: GridItem(.flexible()), count: 5), content: {
            ForEach(abilities, id: \.self) { ability in
                Button(action: {
                    self.handleTap(for: ability)
                    dismiss()
                    
                }, label: {
                    ImageView(image: ability.image)
                        .padding(5)
                        .abilityBackground()
                })
                .buttonStyle(.plain)
            }
        })
        .padding()
    }
    
    public func handleTap(for ability: Ability) {
        self.currentAbility = ability
    }
}

#Preview {
    AbilityKeyboardView(currentAbility: .constant(.ninjaSquid), restriction: .clothesOnly)
}
