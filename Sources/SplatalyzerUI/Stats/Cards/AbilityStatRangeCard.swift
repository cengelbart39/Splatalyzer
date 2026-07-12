//
//  AbilityStatRangeCard.swift
//
//
//  Created by Christopher Engelbart on 8/23/24.
//

import SwiftUI
import Splatalyzer

/// Displays information in an `AbilityStatRange`
public struct AbilityStatRangeCard: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @ScaledMetric(relativeTo: .footnote)
    private var abilityImageSize = 20
    
    public var range: AbilityStatRange?
    
    public init(range: AbilityStatRange?) {
        self.range = range
    }
    
    public var body: some View {
        if let range = range {
            GroupBox(range.title) {
                VStack(spacing: 0) {
                    Spacer()
                    
                    HStack {
                        
                        Spacer()
                        
                        StatLabel(
                            label: String(localized: "Base", comment: "Refers to a base effect before any gear abilities."),
                            value: "\(range.baseMin.format())-\(range.baseMax.format())",
                            unit: range.unit
                        )
                        
                        Spacer()
                        
                        if range.baseMin != range.valueMin && range.baseMax != range.valueMax {
                            StatLabel(
                                label: String(localized: "Build", comment: "Refers to a gear build. Used in reference to the effect caused by gear abilities."),
                                value: "\(range.valueMin.format())-\(range.valueMax.format())",
                                unit: range.unit
                            )
                            
                            Spacer()
                        }
                        
                    }
                    
                    Spacer()
                    
                    StatEffectedByList(abilities: range.modifiedBy)
                    
                    Spacer()
                }
            }
        }
    }
}
