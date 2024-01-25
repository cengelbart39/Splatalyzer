//
//  AbilityView.swift
//  
//
//  Created by Christopher Engelbart on 1/14/24.
//

import SwiftUI

public struct AbilityView: View {
    
    @Binding public var ability: Ability
    
    public var isMain: Bool
    
    public var restriction: AbilityRestriction
    
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
            #if os(macOS)
            Image(nsImage: ability.image ?? NSImage())
                .resizable()
                .scaledToFit()
                .padding(5)
                .abilityBackground()
                .frame(width: frame, height: frame)
            #else
            Image(uiImage: ability.image ?? UIImage())
                .resizable()
                .scaledToFit()
                .padding(5)
                .abilityBackground()
                .frame(width: frame, height: frame)
            #endif
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
