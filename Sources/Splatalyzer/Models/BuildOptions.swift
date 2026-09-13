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
    public var abilityOptions: BuildAbilityOptions
    public var usingTacticooler: Bool
    public var usingFlowAura: Bool
    
    public func hasAbility(_ ability: Ability) -> Bool {
        return self.gear.hasAbility(ability)
    }
    
    /// Determines if the gear abilities are valid
    public func isGearValid() -> Bool {
        return self.gear.isValid()
    }
    
    /// Determines if ``abilityOptions`` is valid for Last Ditch Effort itensity
    public func isLDEIntensityValid() -> Bool {
        return (0...21).contains(self.abilityOptions.lastDitchEffort)
    }
    
    public func getAbilityPoints(of ability: Ability) -> Int {
        let ap = self.gear.toAbilityPoints(abilityOptions: self.abilityOptions, usingTacticooler: self.usingTacticooler, usingFlowAura: self.usingFlowAura)
        return ap[ability] ?? 0
    }
    
    
    
    public init(
        id: UUID = UUID(),
        mainWeapon: MainWeapon,
        gearBuild: GearBuild,
        abilityState: BuildAbilityOptions,
        usingTacticooler: Bool,
        usingFlowAura: Bool
    ) {
        self.id = id
        self.mainWeapon = mainWeapon
        self.gear = gearBuild
        self.abilityOptions = abilityState
        self.usingTacticooler = usingTacticooler
        self.usingFlowAura = usingFlowAura
    }
    
    public init() {
        self.id = UUID()
        self.mainWeapon = MainWeapon.allCases.first!
        self.gear = GearBuild()
        self.abilityOptions = BuildAbilityOptions()
        self.usingTacticooler = false
        self.usingFlowAura = false
    }
}

public struct BuildAbilityOptions: Codable, Equatable, Identifiable, Sendable {
    public var id: UUID
    public var lastDitchEffort: Int
    public var useOpeningGambit: Bool
    public var useComeback: Bool
    public var useDropRoller: Bool
    
    public init(id: UUID = UUID(), lastDitchEffort: Int = 0, useOpeningGambit: Bool = false, useComeback: Bool = false, useDropRoller: Bool = false) {
        self.id = id
        self.lastDitchEffort = lastDitchEffort
        self.useOpeningGambit = useOpeningGambit
        self.useComeback = useComeback
        self.useDropRoller = useDropRoller
    }
    
    public func removableAbilities() -> [Ability] {
        var output = [Ability]()
        
        if !self.useOpeningGambit {
            output.append(.openingGambit)
        }
        
        if !self.useComeback {
            output.append(.comeback)
        }
        
        if !self.useDropRoller {
            output.append(.dropRoller)
        }
        
        return output
    }
}
