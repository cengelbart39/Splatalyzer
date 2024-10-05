//
//  LDEPicker.swift
//
//
//  Created by Christopher Engelbart on 1/19/24.
//

import Splatalyzer
import SwiftUI

/// A picker to choose the Last-Ditch Effort Intensity
///
/// Disabled if the gear build doesn't have Last Ditch Effort
public struct LDEPicker: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @EnvironmentObject public var analyzer: SplatalyzerViewModel
    
    public init() { }
    
    private var intensity = [
        String(localized: "0% (+0 AP)", comment: "LDE Intensity 0"),
        String(localized: "4.76% (+0 AP)", comment: "LDE Intensity 1"),
        String(localized: "9.52% (+1 AP)", comment: "LDE Intensity 2"),
        String(localized: "14.29% (+2 AP)", comment: "LDE Intensity 3"),
        String(localized: "19.05% (+3 AP)", comment: "LDE Intensity 4"),
        String(localized: "23.81% (+4 AP)", comment: "LDE Intensity 5"),
        String(localized: "28.57% (+5 AP)", comment: "LDE Intensity 6"),
        String(localized: "33.33% (+6 AP)", comment: "LDE Intensity 7"),
        String(localized: "38.10% (+6 AP)", comment: "LDE Intensity 8"),
        String(localized: "42.86% (+7 AP)", comment: "LDE Intensity 9"),
        String(localized: "47.62% (+8 AP)", comment: "LDE Intensity 10"),
        String(localized: "52.38% (+9 AP)", comment: "LDE Intensity 11"),
        String(localized: "57.14% (+10 AP)", comment: "LDE Intensity 12"),
        String(localized: "61.90% (+11 AP)", comment: "LDE Intensity 13"),
        String(localized: "66.67% (+12 AP)", comment: "LDE Intensity 14"),
        String(localized: "71.43% (+12 AP)", comment: "LDE Intensity 15"),
        String(localized: "76.19% (+13 AP)", comment: "LDE Intensity 16"),
        String(localized: "80.95% (+14 AP)", comment: "LDE Intensity 17"),
        String(localized: "85.71% (+15 AP)", comment: "LDE Intensity 18"),
        String(localized: "90.48% (+16 AP)", comment: "LDE Intensity 19"),
        String(localized: "95.24% (+17 AP)", comment: "LDE Intensity 20"),
        String(localized: "100% (+18 AP)", comment: "LDE Intensity 21")
    ]
    
    public var body: some View {
        HStack {
            ImageView(image: Ability.lastDitchEffort.image)
                .padding(5)
                .abilityBackground(for: colorScheme)
                .frame(width: 60, height: 60)
            
            Picker(String(localized: "\(Ability.lastDitchEffort.localized) Intensity"), selection: $analyzer.build.ldeIntensity) {
                ForEach(0..<intensity.count, id: \.self) { index in
                    Text(intensity[index])
                        .tag(index)
                }
            }
            .disabled(!analyzer.build.hasAbility(.lastDitchEffort))
            .pickerBackground(for: colorScheme)
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(Ability.lastDitchEffort.localized) Intensity")
        .accessibilityValue("\(intensity[analyzer.build.ldeIntensity]),  \(analyzer.build.hasAbility(.lastDitchEffort) ? "Enabled" : "Disabled")")
        .onChange(of: analyzer.build.hasAbility(.lastDitchEffort)) { oldValue, newValue in
            if oldValue && !newValue {
                analyzer.build.ldeIntensity = 0
            }
        }
    }
}
