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
    
    @ScaledMetric(relativeTo: .title3)
    private var imageSize = 35
    
    private let intensities: [String]
    
    public init() {
        let formatter = NumberFormatter()
        formatter.numberStyle = .percent
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 2
        formatter.locale = .autoupdatingCurrent
        
        let apValues = [0, 0, 1, 2, 3, 4, 5, 6, 6, 7, 8, 9, 10, 11, 12, 12, 13, 14, 15, 16, 17, 18]
        
        var output = [String]()
        
        for (index, apValue) in apValues.enumerated() {
            let decimal = 100.0 / 21.0 / 100.0 * Double(index)
            
            if let percent = formatter.string(from: NSNumber(value: decimal)) {
                let intensity = String(localized: "\(percent) (+\(apValue) AP)", comment: "LDE Intensity, e.g., '0% (+0 AP)'. Percentage is handled by a NumberFormatter.")
                output.append(intensity)
            }
        }
        
        self.intensities = output
    }
    
    public var body: some View {
        GridRow {
            ImageView(image: Ability.lastDitchEffort.image, targetSize: imageSize)
                .padding(5)
                .abilityBackground(for: colorScheme)
                .gridColumnAlignment(.trailing)
            
            Picker(String(localized: "\(Ability.lastDitchEffort.localized) Intensity"), selection: $analyzer.build.abilityOptions.lastDitchEffort) {
                ForEach(0..<intensities.count, id: \.self) { index in
                    Text(intensities[index])
                        .font(.title3)
                        .tag(index)
                }
            }
            .disabled(!analyzer.build.hasAbility(.lastDitchEffort))
            .pickerBackground(for: colorScheme)
            .labelsHidden()
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(Ability.lastDitchEffort.localized) Intensity")
        .accessibilityValue("\(intensities[analyzer.build.abilityOptions.lastDitchEffort]),  \(analyzer.build.hasAbility(.lastDitchEffort) ? "Enabled" : "Disabled")")
        .onChange(of: analyzer.build.hasAbility(.lastDitchEffort)) { oldValue, newValue in
            if oldValue && !newValue {
                analyzer.build.abilityOptions.lastDitchEffort = 0
            }
        }
    }
}
