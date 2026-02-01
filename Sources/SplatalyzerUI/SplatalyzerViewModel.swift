//
//  SplatalyzerViewModel.swift
//
//
//  Created by Christopher Engelbart on 2/4/24.
//

import Foundation
import Splatalyzer

/// A ViewModel for `Splatalyzer`
public final class SplatalyzerViewModel: ObservableObject {
    /// The stats produced by the class
    @Published public var stats: BuildStats? = nil
    
    /// The current build options (main weapon, gear, LDE Intensity, tacticooler, etc.)
    @Published public var build = BuildOptions()
    
    private var splatalyzer = Splatalyzer()
    private var weaponInfoMain: WeaponInfoMain? = nil
    private var playerParams: Player? = nil
    private var subData = [SubWeapon : SubWeaponData]()
    
    public init() { }
    
    /// Update statstics after a change in `MainWeapon`
    @MainActor public func updateStats(for weapon: MainWeapon) throws {
        DispatchQueue.main.async {
            self.build.mainWeapon = weapon
        }
        
        try self.analyze()
    }
    
    /// Update statstics after a change in `GearBuild`
    @MainActor public func updateStats(for gearBuild: GearBuild) throws {
        DispatchQueue.main.async {
            self.build.gear = gearBuild
        }
        
        try self.analyze()
    }
    
    /// Update statstics after a change in LDE intensity
    @MainActor public func updateStats(for ldeIntensity: Int) throws {
        DispatchQueue.main.async {
            self.build.ldeIntensity = ldeIntensity
        }
        
        try self.analyze()
    }
    
    /// Update statstics after a change in Tacticooler statis
    @MainActor public func updateStats(tacticooler: Bool) throws {
        DispatchQueue.main.async {
            self.build.usingTacticooler = tacticooler
        }
        
        try self.analyze()
    }
    
    @MainActor public func updateStats(flowAura: Bool) throws {
        DispatchQueue.main.async {
            self.build.usingFlowAura = flowAura
        }
        
        try self.analyze()
    }
    
    /// Build analysis from class properties
    /// - SeeAlso: This function pass its properties to `Splatalyzer` to perform analysis
    /// - Throws: Can throw `SplatalyzerError` or `JSONError`
    @MainActor public func analyze() throws {
        let stats = try splatalyzer.analyze(self.build)
        
        DispatchQueue.main.async {
            self.stats = stats
        }
    }
}
