//
//  AbilitySelector.swift
//
//
//  Created by Christopher Engelbart on 1/13/24.
//

import SwiftUI

public struct AbilitySelector: View {
    
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
                    #if os(macOS)
                    Image(nsImage: SpecialWeapon.tacticooler.image ?? NSImage())
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                    #else
                    Image(uiImage: SpecialWeapon.tacticooler.image ?? UIImage())
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                    #endif
                    
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
    AbilitySelector()
        .environmentObject(Splatalyzer())
}
