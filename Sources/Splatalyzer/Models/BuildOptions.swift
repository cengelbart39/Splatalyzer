//
//  BuildOptions.swift
//
//
//  Created by Christopher Engelbart on 2/14/24.
//

import Foundation

/// Structure that represents the user's build and selected options
public struct BuildOptions: Codable, Equatable, Identifiable, Sendable {
    public var id = UUID()
    public var mainWeapon: MainWeapon
    public var gear: GearBuild
    public var ldeIntensity: Int
    public var usingTacticooler: Bool
    public var usingFlowAura: Bool
    
    public func hasAbility(_ ability: Ability) -> Bool {
        return self.gear.hasAbility(ability)
    }
    
    /// Determines if the gear abilities are valid
    public func isGearValid() -> Bool {
        return self.gear.isValid()
    }
    
    /// Determines if ``ldeIntensity`` is valid
    public func isLDEIntensityValid() -> Bool {
        return (0...21).contains(self.ldeIntensity)
    }
    
    public init(id: UUID = UUID(), mainWeapon: MainWeapon, gearBuild: GearBuild, ldeIntensity: Int, usingTacticooler: Bool, usingFloodAura: Bool) {
        self.id = id
        self.mainWeapon = mainWeapon
        self.gear = gearBuild
        self.ldeIntensity = ldeIntensity
        self.usingTacticooler = usingTacticooler
        self.usingFlowAura = usingFloodAura
    }
    
    public init() {
        self.id = UUID()
        self.mainWeapon = MainWeapon.allCases.first!
        self.gear = GearBuild()
        self.ldeIntensity = 0
        self.usingTacticooler = false
        self.usingFlowAura = false
    }
}
