//
//  TacticoolerToggle.swift
//
//
//  Created by Christopher Engelbart on 3/26/24.
//

import SwiftUI
import Splatalyzer

public struct TacticoolerToggle: View {
    
    @EnvironmentObject var analyzer: SplatalyzerViewModel
    
    #if os(macOS)
    @ScaledMetric(relativeTo: .title3)
    private var imageSize = 35
    
    #else
    @ScaledMetric(relativeTo: .title3)
    private var imageSize = 55
    
    #endif
    
    public init() { }
    
    public var body: some View {
        HStack {
            ImageView(image: SpecialWeapon.tacticooler.image, targetSize: imageSize)
                .accessibilityHidden(false)
            
            Toggle("", isOn: $analyzer.build.usingTacticooler)
                .labelsHidden()
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel(analyzer.build.usingTacticooler ? "Consider \(SpecialWeapon.tacticooler.localized)" : "Don't Consider \(SpecialWeapon.tacticooler.localized)")
    }
}

#Preview {
    TacticoolerToggle()
}
