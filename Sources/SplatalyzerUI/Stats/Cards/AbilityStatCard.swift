//
//  AbilityStatCard.swift
//
//
//  Created by Christopher Engelbart on 1/18/24.
//

import Splatalyzer
import SwiftUI

/// Displays information in an `AbilityStat`
public struct AbilityStatCard: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @ScaledMetric(relativeTo: .footnote)
    private var abilityImageSize = 20
    
    public var stat: AbilityStat?
    
    public init(stat: AbilityStat?) {
        self.stat = stat
    }
    
    public var body: some View {
        if let stat = stat {
            GroupBox(stat.title) {
                VStack(spacing: 0) {
                    Spacer()
                    
                    HStack {
                        
                        Spacer()
                        
                        StatLabel(
                            label: String(localized: "Base", comment: "Refers to a base effect before any gear abilities."),
                            value: stat.baseValue.format(),
                            unit: stat.unit
                        )
                        
                        Spacer()
                        
                        if stat.baseValue != stat.value {
                            StatLabel(
                                label: String(localized: "Build", comment: "Refers to a gear build. Used in reference to the effect caused by gear abilities."),
                                value: stat.value.format(),
                                unit: stat.unit
                            )
                            
                            Spacer()
                        }
                        
                    }
                    
                    Spacer()
                    
                    StatEffectedByList(abilities: stat.modifiedBy)
                    
                    Spacer()
                }
            }
        }
    }
}
