//
//  AbilityKeyboardView.swift
//
//
//  Created by Christopher Engelbart on 1/14/24.
//

import SwiftUI

struct AbilityKeyboardView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Binding var currentAbility: Ability
    
    var restriction: AbilityRestriction
    
    var body: some View {
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
        
        VStack {
            LazyVGrid(columns: Array.init(repeating: GridItem(.flexible()), count: 5), content: {
                ForEach(abilities, id: \.self) { ability in
                    Button(action: {
                        self.handleTap(for: ability)
                        dismiss()
                        
                    }, label: {
                        Image(uiImage: ability.image ?? UIImage())
                            .padding(5)
                            .background(.regularMaterial, in: Circle())
                    })
                    .buttonStyle(.plain)
                }
            })
        }
    }
    
    func handleTap(for ability: Ability) {
        self.currentAbility = ability
    }
}

#Preview {
    AbilityKeyboardView(currentAbility: .constant(.ninjaSquid), restriction: .clothesOnly)
}
