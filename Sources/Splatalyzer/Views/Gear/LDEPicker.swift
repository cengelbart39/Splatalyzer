//
//  LDEPicker.swift
//
//
//  Created by Christopher Engelbart on 1/19/24.
//

import SwiftUI

/// A picker to choose the Last-Ditch Effort Intensity
///
/// Disabled if the gear build doesn't have Last Ditch Effort
public struct LDEPicker: View {
    
    @EnvironmentObject public var analyzer: SplatalyzerViewModel
    
    public init() { }
    
    public var body: some View {
        HStack {
            ImageView(image: Ability.lastDitchEffort.image)
                .padding(5)
                .abilityBackground()
                .frame(width: 60, height: 60)
            
            Picker(String(localized: "LDE Intensity", comment: "LDE = Last Ditch Error"), selection: $analyzer.ldeIntensity) {
                Text("0% (+0 AP)", comment: "LDE Intensity 0")
                    .tag(0)
                
                Text("4.76% (+0 AP)", comment: "LDE Intensity 1")
                    .tag(1)
                
                Text("9.52% (+1 AP)", comment: "LDE Intensity 2")
                    .tag(2)
                
                Text("14.29% (+2 AP)", comment: "LDE Intensity 3")
                    .tag(3)
                
                Text("19.05% (+3 AP)", comment: "LDE Intensity 4")
                    .tag(4)
                
                Text("23.81% (+4 AP)", comment: "LDE Intensity 5")
                    .tag(5)
                
                Text("28.57% (+5 AP)", comment: "LDE Intensity 6")
                    .tag(6)
                
                Text("33.33% (+6 AP)", comment: "LDE Intensity 7")
                    .tag(7)
                
                Text("38.10% (+6 AP)", comment: "LDE Intensity 8")
                    .tag(8)
                
                Text("42.86% (+7 AP)", comment: "LDE Intensity 9")
                    .tag(9)
                
                Text("47.62% (+8 AP)", comment: "LDE Intensity 10")
                    .tag(10)
                
                Text("52.38% (+9 AP)", comment: "LDE Intensity 11")
                    .tag(11)
                
                Text("57.14% (+10 AP)", comment: "LDE Intensity 12")
                    .tag(12)
                
                Text("61.90% (+11 AP)", comment: "LDE Intensity 13")
                    .tag(13)
                
                Text("66.67% (+12 AP)", comment: "LDE Intensity 14")
                    .tag(14)
                
                Text("71.43% (+12 AP)", comment: "LDE Intensity 15")
                    .tag(15)
                
                Text("76.19% (+13 AP)", comment: "LDE Intensity 16")
                    .tag(16)
                
                Text("80.95% (+14 AP)", comment: "LDE Intensity 17")
                    .tag(17)
                
                Text("85.71% (+15 AP)", comment: "LDE Intensity 18")
                    .tag(18)
                
                Text("90.48% (+16 AP)", comment: "LDE Intensity 19")
                    .tag(19)
                
                Text("95.24% (+17 AP)", comment: "LDE Intensity 20")
                    .tag(20)
                
                Text("100% (+18 AP)", comment: "LDE Intensity 21")
                    .tag(21)
            }
            .disabled(!analyzer.gearBuild.hasAbility(.lastDitchEffort))
        }
        .onChange(of: analyzer.gearBuild.hasAbility(.lastDitchEffort)) { oldValue, newValue in
            if oldValue && !newValue {
                analyzer.ldeIntensity = 0
            }
        }
    }
}
