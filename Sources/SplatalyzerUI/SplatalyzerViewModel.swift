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
    public func updateStats(for weapon: MainWeapon) throws {
        DispatchQueue.main.async {
            self.build.mainWeapon = weapon
        }
        
        try self.analyze()
    }
    
    /// Update statstics after a change in `GearBuild`
    public func updateStats(for gearBuild: GearBuild) throws {
        DispatchQueue.main.async {
            self.build.gear = gearBuild
        }
        
        try self.analyze()
    }
    
    /// Update statstics after a change in LDE intensity
    public func updateStats(for ldeIntensity: Int) throws {
        DispatchQueue.main.async {
            self.build.ldeIntensity = ldeIntensity
        }
        
        try self.analyze()
    }
    
    /// Update statstics after a change in Tacticooler statis
    public func updateStats(for tacticooler: Bool) throws {
        DispatchQueue.main.async {
            self.build.usingTacticooler = tacticooler
        }
        
        try self.analyze()
    }
    
    /// Build analysis from class properties
    /// - SeeAlso: This function pass its properties to `Splatalyzer` to perform analysis
    /// - Throws: Can throw `SplatalyzerError` or `JSONError`
    public func analyze() throws {
        let stats = try splatalyzer.analyze(self.build)
        
        DispatchQueue.main.async {
            self.stats = stats
        }
    }
}
