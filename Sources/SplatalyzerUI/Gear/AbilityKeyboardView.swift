//
//  AbilityKeyboardView.swift
//
//
//  Created by Christopher Engelbart on 1/14/24.
//

import Splatalyzer
import SwiftUI

/// A view that enables the selection of a gear ability
public struct AbilityKeyboardView: View {
    
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.dismiss) private var dismiss
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    @AccessibilityFocusState
    private var focusGrid: Bool
    
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
        
        #if canImport(UIKit)
        let count = if UIDevice.current.userInterfaceIdiom == .phone && verticalSizeClass == .compact {
            7
        } else {
            5
        }
        let min: CGFloat = 0
        #else
        let count = 5
        let min: CGFloat = 120
        #endif
        
        VStack {
            ScrollView {
                LazyVGrid(columns: Array.init(repeating: GridItem(.flexible(minimum: min)), count: count), content: {
                    ForEach(0..<abilities.count, id: \.self) { index in
                        let ability = abilities[index]
                        
                        Button(action: {
                            self.handleTap(for: ability)
                            dismiss()
                            
                        }, label: {
                            #if canImport(UIKit)
                            ImageView(image: ability.image)
                                .padding(5)
                                .abilityBackground(for: colorScheme, with: UIDevice.current.userInterfaceIdiom == .phone)
                            #else
                            ImageView(image: ability.image)
                                .padding(5)
                                .abilityBackground(for: colorScheme, with: true)
                            #endif
                        })
                        .buttonStyle(.plain)
                        .accessibilityLabel(ability.localized)
                    }
                })
                .padding()
                .accessibilityFocused($focusGrid)
            }
            
            Button {
                dismiss()
                
            } label: {
                Text("Dismiss")
            }
            .foregroundStyle(Color.accentColor)
            .padding(.bottom)
        }
        .onAppear {
            DispatchQueue.main.async {
                self.focusGrid = true
            }
        }
    }
    
    public func handleTap(for ability: Ability) {
        withAnimation(.easeIn, {
            self.currentAbility = ability
        })
    }
}

#Preview {
    AbilityKeyboardView(currentAbility: .constant(.ninjaSquid), restriction: .clothesOnly)
}
