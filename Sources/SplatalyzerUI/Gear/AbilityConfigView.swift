//
//  AbilityConfigView.swift
//  Splatalyzer
//
//  Created by Christopher Engelbart on 7/7/26.
//

import Splatalyzer
import SwiftUI

/**
 Allows configuration of certain ability effects, and their intensity
 */
public struct AbilityConfigView: View {
    @EnvironmentObject var analyzer: SplatalyzerViewModel
    
    public init() { }
    
    public var body: some View {
        Grid(alignment: .leading) {
            GridRow {
                TacticoolerToggle()
            }
            
            GridRow {
                FlowAuraToggle()
            }
            
            if analyzer.build.gear.hasAbility(.lastDitchEffort) {
                GridRow {
                    LDEPicker()
                }
            }
            
            if analyzer.build.gear.hasAbility(.openingGambit) {
                GridRow {
                    AbilityToggle(
                        ability: .openingGambit,
                        stateBinding: $analyzer.build.abilityOptions.useOpeningGambit
                    )
                }
            }
            
            if analyzer.build.gear.hasAbility(.comeback) {
                GridRow {
                    AbilityToggle(
                        ability: .comeback,
                        stateBinding: $analyzer.build.abilityOptions.useComeback
                    )
                }
            }
            
            if analyzer.build.gear.hasAbility(.dropRoller) {
                GridRow {
                    AbilityToggle(
                        ability: .dropRoller,
                        stateBinding: $analyzer.build.abilityOptions.useDropRoller
                    )
                }
            }
        }
    }
}

#Preview {
    AbilityConfigView()
}
