//
//  FlowAuraToggle.swift
//  Splatalyzer
//
//  Created by Christopher Engelbart on 1/29/26.
//

import Splatalyzer
import SwiftUI

/// A toggle for enabling/disabling Flow Aura effects
public struct FlowAuraToggle: View {
    
    @EnvironmentObject var analyzer: SplatalyzerViewModel
        
    var localizedTitle = Ability.localizedFlowAura
    
    public init() { }
    
    public var body: some View {
        GridRow {
            Text(localizedTitle)
                .font(.title3)
                .bold()
                .gridColumnAlignment(.trailing)
            
            Toggle("", isOn: $analyzer.build.usingFlowAura)
                .labelsHidden()
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel(analyzer.build.usingFlowAura ? "Consider \(localizedTitle)" : "Don't Consider \(localizedTitle)")
    }
}
