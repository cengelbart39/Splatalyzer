//
//  BuildSelectorLandscape.swift
//
//
//  Created by Christopher Engelbart on 3/26/24.
//

import SwiftUI

public struct BuildSelectorLandscape: View {
    
    @EnvironmentObject public var analyzer: SplatalyzerViewModel
    
    public init() { }
    
    public var body: some View {
        
        HStack {
            Spacer()
            
            GearBuildView(gearBuild: $analyzer.build.gear)
                .padding(.leading, 10)
            
            Spacer()

            VStack {
                MainWeaponPicker(mainWeapon: $analyzer.build.mainWeapon)
                
                LDEPicker()
                
                TacticoolerToggle()
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
    BuildSelectorLandscape()
        .environmentObject(SplatalyzerViewModel())
}
