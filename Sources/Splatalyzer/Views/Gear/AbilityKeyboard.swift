//
//  AbilityKeyboardView.swift
//
//
//  Created by Christopher Engelbart on 1/14/24.
//

import SwiftUI

public struct AbilityKeyboardView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Binding public var currentAbility: Ability
    
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
                    #if os(macOS)
                    Image(nsImage: ability.image ?? NSImage())
                        .resizable()
                        .scaledToFit()
                        .padding(5)
                        .abilityBackground()
                    #else
                    Image(uiImage: ability.image ?? UIImage())
                        .resizable()
                        .scaledToFit()
                        .padding(5)
                        .abilityBackground()
                    #endif
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
