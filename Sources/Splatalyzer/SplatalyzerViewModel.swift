//
//  SplatalyzerViewModel.swift
//
//
//  Created by Christopher Engelbart on 2/4/24.
//

import Foundation

/// A ViewModel for ``Splatalyzer``
public final class SplatalyzerViewModel: ObservableObject {
    /// The stats produced by the class
    @Published public var stats: BuildStats? = nil
    
    /// The user's gear build
    @Published public var gearBuild = GearBuild()
    
    /// The selected main weapon
    @Published public var mainWeapon = MainWeapon.allCases.first!
    
    /// The selected Last-Ditch Effort Intensity
    @Published public var ldeIntensity = 0
    
    /// Whether Tacticooler effects should be considered in statistics
    @Published public var usingTacticooler = false
    
    private var splatalyzer = Splatalyzer()
    private var weaponInfoMain: WeaponInfoMain? = nil
    private var playerParams: Player? = nil
    private var subData = [SubWeapon : SubWeaponData]()
    
    public init() { }
    
    /// Update statstics after a change in ``MainWeapon``
    public func updateStats(for weapon: MainWeapon) throws {
        DispatchQueue.main.async {
            self.mainWeapon = weapon
        }
        
        try self.analyze()
    }
    
    /// Update statstics after a change in ``GearBuild``
    public func updateStats(for gearBuild: GearBuild) throws {
        DispatchQueue.main.async {
            self.gearBuild = gearBuild
        }
        
        try self.analyze()
    }
    
    /// Update statstics after a change in LDE intensity
    public func updateStats(for ldeIntensity: Int) throws {
        DispatchQueue.main.async {
            self.ldeIntensity = ldeIntensity
        }
        
        try self.analyze()
    }
    
    /// Update statstics after a change in Tacticooler statis
    public func updateStats(for tacticooler: Bool) throws {
        DispatchQueue.main.async {
            self.usingTacticooler = tacticooler
        }
        
        try self.analyze()
    }
    
    /// Build analysis from class properties
    /// - SeeAlso: This function pass its properties to ``Splatalyzer`` to perform analysis
    /// - Throws: Can throw ``SplatalyzerError`` or ``JSONError``
    public func analyze() throws {
        let stats = try splatalyzer.analyze(
            mainWeapon: self.mainWeapon,
            gearBuild: self.gearBuild,
            ldeIntensity: self.ldeIntensity,
            usingTacticooler: self.usingTacticooler)
        
        DispatchQueue.main.async {
            self.stats = stats
        }
    }
}
