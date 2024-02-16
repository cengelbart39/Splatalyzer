//
//  BuildSelector.swift
//
//
//  Created by Christopher Engelbart on 1/13/24.
//

import Splatalyzer
import SwiftUI

/// Enables selection of main weapon, gear abilities, Last-Ditch Effort AP, and
/// Tacticooler status.
public struct BuildSelector: View {
    
    @EnvironmentObject public var analyzer: SplatalyzerViewModel
    
    public init() { }
    
    public var body: some View {
        HStack {
            Spacer()
            
            VStack {
                Spacer()
                
                MainWeaponPicker(mainWeapon: $analyzer.build.mainWeapon)
                
                GearBuildView(gearBuild: $analyzer.build.gear)
                
                LDEPicker()
                
                HStack {
                    ImageView(image: SpecialWeapon.tacticooler.image)
                        .frame(width: 60, height: 60)
                    
                    Toggle("", isOn: $analyzer.build.usingTacticooler)
                        .labelsHidden()
                }
                
                Spacer()
            }
            
            Spacer()
        }
        .onAppear {
            try? analyzer.analyze()
        }
        .onChange(of: analyzer.build.gear) { _, newValue in
            try? analyzer.updateStats(for: newValue)
        }
        .onChange(of: analyzer.build.mainWeapon) { _, newValue in
            try? analyzer.updateStats(for: newValue)
        }
        .onChange(of: analyzer.build.ldeIntensity) { _, newValue in
            try? analyzer.updateStats(for: newValue)
        }
        .onChange(of: analyzer.build.usingTacticooler) { _, newValue in
            try? analyzer.updateStats(for: newValue)
        }
    }
}

#Preview {
    BuildSelector()
        .environmentObject(SplatalyzerViewModel())
}
