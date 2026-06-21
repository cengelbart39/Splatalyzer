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
    
    #if os(macOS)
    @ScaledMetric(relativeTo: .body)
    private var pickerItemImageSize = 25
    
    @ScaledMetric(relativeTo: .title3)
    private var pickerLabelSizeMain = 35
    
    @ScaledMetric(relativeTo: .title3)
    private var pickerLabelSizeSub = 30
    
    #else
    @ScaledMetric(relativeTo: .body)
    private var pickerItemImageSize = 25

    @ScaledMetric(relativeTo: .title3)
    private var pickerLabelSizeMain = 65

    @ScaledMetric(relativeTo: .title3)
    private var pickerLabelSizeSub = 55
    #endif
    
    /// Whether the ability is a main ability
    public var isMain: Bool
    
    /// The restriction applied to ability selection
    public var restriction: AbilityRestriction

    public init(ability: Binding<Ability>, isMain: Bool, restriction: AbilityRestriction) {
        self._ability = ability
        self.isMain = isMain
        self.restriction = restriction
    }
    
    public var body: some View {
        let abilities = Ability.allCases(
            restrictedBy: restriction,
            includeMains: isMain
        )
        
        Menu {
            ForEach(abilities) { ability in
                Button(action: {
                    self.ability = ability
                }, label: {
                    Label {
                        Text(ability.localized)
                    } icon: {
                        ImageView(image: ability.image, targetSize: pickerItemImageSize)
                    }
                })
            }
        } label: {
            ImageView(image: ability.image, targetSize: isMain ? pickerLabelSizeMain : pickerLabelSizeSub)
        }
        .padding(5)
        .abilityBackground(for: colorScheme)
        .buttonStyle(.plain)
        .accessibilityLabel(self.getLabel())
        .accessibilityHint("Change current ability")
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
