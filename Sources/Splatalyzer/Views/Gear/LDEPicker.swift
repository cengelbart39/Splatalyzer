//
//  LDEPicker.swift
//
//
//  Created by Christopher Engelbart on 1/19/24.
//

import SwiftUI

struct LDEPicker: View {
    
    @EnvironmentObject var analyzer: Splatalyzer
    
    var body: some View {
        HStack {
            #if os(macOS)
            Image(nsImage: Ability.lastDitchEffort.image ?? NSImage())
                .resizable()
                .scaledToFit()
                .padding(5)
                .abilityBackground()
                .frame(width: 60, height: 60)
            #else
            Image(uiImage: Ability.lastDitchEffort.image ?? UIImage())
                .resizable()
                .scaledToFit()
                .padding(5)
                .abilityBackground()
                .frame(width: 60, height: 60)
            #endif
            
            
            Picker("LDE Intensity", selection: $analyzer.ldeIntensity) {
                Text("0% (+0 AP)")
                    .tag(0)
                
                Text("4.76% (+0 AP)")
                    .tag(1)
                
                Text("9.52% (+1 AP)")
                    .tag(2)
                
                Text("14.29% (+2 AP)")
                    .tag(3)
                
                Text("19.05% (+3 AP)")
                    .tag(4)
                
                Text("23.81% (+4 AP)")
                    .tag(5)
                
                Text("28.57% (+5 AP)")
                    .tag(6)
                
                Text("33.33% (+6 AP)")
                    .tag(7)
                
                Text("38.10% (+6 AP)")
                    .tag(8)
                
                Text("42.86% (+7 AP)")
                    .tag(9)
                
                Text("47.62% (+8 AP)")
                    .tag(10)
                
                Text("52.38% (+9 AP)")
                    .tag(11)
                
                Text("57.14% (+10 AP)")
                    .tag(12)
                
                Text("61.90% (+11 AP)")
                    .tag(13)
                
                Text("66.67% (+12 AP)")
                    .tag(14)
                
                Text("71.43% (+12 AP)")
                    .tag(15)
                
                Text("76.19% (+13 AP)")
                    .tag(16)
                
                Text("80.95% (+14 AP)")
                    .tag(17)
                
                Text("85.71% (+15 AP)")
                    .tag(18)
                
                Text("90.48% (+16 AP)")
                    .tag(19)
                
                Text("95.24% (+17 AP)")
                    .tag(20)
                
                Text("100% (+18 AP)")
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
