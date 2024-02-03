//
//  BuildSelector.swift
//
//
//  Created by Christopher Engelbart on 1/13/24.
//

import SwiftUI

/// Enables selection of main weapon, gear abilities, Last-Ditch Effort AP, and
/// Tacticooler status.
public struct BuildSelector: View {
    
    @EnvironmentObject public var analyzer: Splatalyzer
    
    public init() { }
    
    public var body: some View {
        HStack {
            Spacer()
            
            VStack {
                Spacer()
                
                MainWeaponPicker(mainWeapon: $analyzer.mainWeapon)
                
                GearBuildView(gearBuild: $analyzer.gearBuild)
                
                LDEPicker()
                
                HStack {
                    ImageView(image: SpecialWeapon.tacticooler.image)
                        .frame(width: 60, height: 60)
                    
                    Toggle("", isOn: $analyzer.usingTacticooler)
                        .labelsHidden()
                }
                
                Spacer()
            }
            
            Spacer()
        }
        .onAppear {
            try? analyzer.analyze()
        }
        .onChange(of: analyzer.gearBuild) { _, newValue in
            try? analyzer.updateStats(for: newValue)
        }
        .onChange(of: analyzer.mainWeapon) { _, newValue in
            try? analyzer.updateStats(for: newValue)
        }
        .onChange(of: analyzer.ldeIntensity) { _, newValue in
            try? analyzer.updateStats(for: newValue)
        }
        .onChange(of: analyzer.usingTacticooler) { _, newValue in
            try? analyzer.updateStats(for: newValue)
        }
    }
}

#Preview {
    BuildSelector()
        .environmentObject(Splatalyzer())
}
