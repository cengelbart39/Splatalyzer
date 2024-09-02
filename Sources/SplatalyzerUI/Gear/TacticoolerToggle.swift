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
    
    public init() { }
    
    public var body: some View {
        HStack {
            Image(platformImage: SpecialWeapon.tacticooler.image)
                .frame(width: 60, height: 60)
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
