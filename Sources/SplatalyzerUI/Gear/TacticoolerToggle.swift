//
//  TacticoolerToggle.swift
//
//
//  Created by Christopher Engelbart on 3/26/24.
//

import SwiftUI
import Splatalyzer

/// A toggle for enabling/disabling Tacticooler effects
public struct TacticoolerToggle: View {
    
    @Environment(\.colorScheme) private var colorScheme
    
    @EnvironmentObject var analyzer: SplatalyzerViewModel
    
    #if os(macOS)
    @ScaledMetric(relativeTo: .title3)
    private var imageSize = 35
    
    #else
    @ScaledMetric(relativeTo: .title3)
    private var imageSize = 55
    
    #endif
    
    public init() { }
    
    private var label: String {
        switch $analyzer.build.usingTacticooler.wrappedValue {
        case true:
            return "Consider \(SpecialWeapon.tacticooler.localized)"
        case false:
            return "Don't Consider \(SpecialWeapon.tacticooler.localized)"
        }
    }
    
    public var body: some View {
        GridRow {
            ImageView(image: SpecialWeapon.tacticooler.image, targetSize: imageSize)
                .padding(5)
                .abilityBackground(for: colorScheme)
                .accessibilityHidden(false)
                .gridColumnAlignment(.trailing)
            
            Toggle("", isOn: $analyzer.build.usingTacticooler)
                .labelsHidden()
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel(label)
    }
}

#Preview {
    TacticoolerToggle()
}
