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
        let frame: CGFloat = isMain ? 100 : 80
        
        Button(action: {
            showCover = true
        }, label: {
            ImageView(image: ability.image)
                .padding(5)
                .abilityBackground()
                .frame(width: frame, height: frame)
        })
        .buttonStyle(.plain)
        .showAbilityKeyboard(isPresented: $showCover, onDismiss: {
            self.showCover = false
        }, content: {
            AbilityKeyboardView(currentAbility: $ability, restriction: restriction)
                .presentationDetents([.medium])
        })
    }
}
