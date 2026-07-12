//
//  AbilityToggle.swift
//  Splatalyzer
//
//  Created by Christopher Engelbart on 7/7/26.
//

import Splatalyzer
import SwiftUI

/// Enables the specified ability to be enabled or disabled when performing calculations
public struct AbilityToggle: View {
    
    @Environment(\.colorScheme) private var colorScheme
    
    @ScaledMetric(relativeTo: .title3)
    private var imageSize = 35
        
    /// The ability to enable or disable
    public var ability: Ability
    
    /// Bind for the toggle state to some boolean
    public var stateBinding: Binding<Bool>
    
    public var accessibilityLabel: String {
        switch stateBinding.wrappedValue {
        case true:
            return "Consider \(ability.localized) effects"
        case false:
            return "Ignore \(ability.localized) effects"
        }
    }
    
    public init(ability: Ability, stateBinding: Binding<Bool>) {
        self.ability = ability
        self.stateBinding = stateBinding
    }
    
    public var body: some View {
        GridRow {
            ImageView(image: ability.image, targetSize: imageSize)
                .accessibilityHidden(false)
                .padding(3)
                .abilityBackground(for: colorScheme)
                .buttonStyle(.plain)
                .gridColumnAlignment(.trailing)
            
            Toggle("", isOn: stateBinding)
                .labelsHidden()
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel(accessibilityLabel)
    }
}

//#Preview {
//    AbilityToggle(ability: .dropRoller)
//}
