//
//  AbilitySelector.swift
//  
//
//  Created by Christopher Engelbart on 1/13/24.
//

import SwiftUI

public struct AbilitySelector: View {
    
    @State public var mainWeapon = MainWeapon.allCases.first!
    
    @State public var build = GearBuild()
    
    @State public var ldeIntensity = 0
    
    @State public var usingTacticooler = false
    
    @Binding public var stats: BuildStats?
    
    public init(stats: Binding<BuildStats?>) {
        self._stats = stats
    }
    
    public var body: some View {
        VStack {
            MainWeaponPicker(mainWeapon: $mainWeapon)
            
            GearBuildView(gearBuild: $build)
            
            HStack {
                Image(uiImage: Ability.lastDitchEffort.image ?? UIImage())
                    .resizable()
                    .scaledToFit()
                    .padding(5)
                    .background(.regularMaterial, in: Circle())
                    .frame(width: 60, height: 60)
                
                
                Picker("LDE Intensity", selection: $ldeIntensity) {
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
                .disabled(!build.hasAbility(.lastDitchEffort))
            }
            .onChange(of: build.hasAbility(.lastDitchEffort)) { oldValue, newValue in
                if oldValue && !newValue {
                    ldeIntensity = 0
                }
            }
            
            HStack {
                Image(uiImage: SpecialWeapon.tacticooler.image ?? UIImage())
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                
                Toggle("", isOn: $usingTacticooler)
                    .labelsHidden()
            }
        }
        .onAppear {
            self.stats = try? Splatalyzer().analyze(
                mainWeapon: mainWeapon,
                gearBuild: build,
                ldeIntensity: ldeIntensity,
                usingTacticooler: usingTacticooler)
            print(self.stats)
        }
        .onChange(of: build) { _, newValue in
            self.stats = try? Splatalyzer().analyze(
                    mainWeapon: mainWeapon,
                    gearBuild: newValue,
                    ldeIntensity: ldeIntensity,
                    usingTacticooler: usingTacticooler)
            print(self.stats)
        }
        .onChange(of: mainWeapon) { _, newValue in
            self.stats = try? Splatalyzer().analyze(
                    mainWeapon: newValue,
                    gearBuild: build,
                    ldeIntensity: ldeIntensity,
                    usingTacticooler: usingTacticooler)
            print(self.stats)
        }
        .onChange(of: ldeIntensity) { _, newValue in
            self.stats = try? Splatalyzer().analyze(
                    mainWeapon: mainWeapon,
                    gearBuild: build,
                    ldeIntensity: newValue,
                    usingTacticooler: usingTacticooler)
            print(self.stats)
        }
        .onChange(of: usingTacticooler) { _, newValue in
            self.stats = try? Splatalyzer().analyze(
                    mainWeapon: mainWeapon,
                    gearBuild: build,
                    ldeIntensity: ldeIntensity,
                    usingTacticooler: newValue)
            print(self.stats)
        }
    }
}

#Preview {
    AbilitySelector(stats: .constant(nil))
}
