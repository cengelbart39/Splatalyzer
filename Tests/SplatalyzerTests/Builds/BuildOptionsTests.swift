//
//  BuildOptionsTests.swift
//  
//
//  Created by Christopher Engelbart on 2/19/24.
//

import Testing
@testable import Splatalyzer

struct BuildOptionsTests {
    
    var options: BuildOptions
    
    init() {
        self.options = BuildOptions()
    }
    
    @Test("BuildOptions Default Values")
    func defaultValues() {
        #expect(options.mainWeapon == .rapidBlasterPro)
        #expect(options.gear.headgear.toArray() == [.none, .none, .none, .none])
        #expect(options.gear.clothes.toArray() == [.none, .none, .none, .none])
        #expect(options.gear.shoes.toArray() == [.none, .none, .none, .none])
        #expect(options.ldeIntensity == 0)
        #expect(!options.usingTacticooler)
    }
    
    @Test("Is LDE Intensity Valid", arguments: [0, 4, 10, 13, 18, 21])
    mutating func isLDEValid(_ intensity: Int) {
        options.ldeIntensity = intensity
        #expect(options.isLDEIntensityValid())
    }
    
    @Test("Is LDE Intensity Invalid", arguments: [-1, 22])
    mutating func isLDEInvalid(_ intensity: Int) {
        options.ldeIntensity = intensity
        #expect(!options.isLDEIntensityValid())
    }
    
    
    @Test("BuildOptions Is Gear Valid")
    mutating func isGearValid() {
        self.options.gear = GearBuild(
            headgear: GearPiece(
                main: .swimSpeedUp,
                sub1: .specialPowerUp,
                sub2: .swimSpeedUp,
                sub3: .specialSaver,
                for: .headgearOnly),
            
            clothes: GearPiece(
                main: .ninjaSquid,
                sub1: .quickSuperJump,
                sub2: .swimSpeedUp,
                sub3: .swimSpeedUp,
                for: .clothesOnly),
            
            shoes: GearPiece(
                main: .dropRoller,
                sub1: .inkSaverSub,
                sub2: .swimSpeedUp,
                sub3: .inkSaverSub,
                for: .shoesOnly)
        )

        #expect(self.options.isGearValid())
    }
    
    @Test("BuildOptions Is Gear Invalid")
    mutating func isGearInvalid() {
        options.gear = GearBuild(
            headgear: GearPiece(
                main: .swimSpeedUp,
                sub1: .specialPowerUp,
                sub2: .swimSpeedUp,
                sub3: .specialSaver,
                for: .headgearOnly),
            
            clothes: GearPiece(
                main: .dropRoller,
                sub1: .quickSuperJump,
                sub2: .swimSpeedUp,
                sub3: .swimSpeedUp,
                for: .clothesOnly),
            
            shoes: GearPiece(
                main: .ninjaSquid,
                sub1: .inkSaverSub,
                sub2: .swimSpeedUp,
                sub3: .inkSaverSub,
                for: .shoesOnly)
        )
        
        #expect(!options.isGearValid())
    }
    
    @Test("Build Has Ability")
    mutating func buildHasAbility() {
        options.gear = GearBuild(
            headgear: GearPiece(
                main: .swimSpeedUp,
                sub1: .specialPowerUp,
                sub2: .swimSpeedUp,
                sub3: .specialSaver,
                for: .headgearOnly),
            
            clothes: GearPiece(
                main: .ninjaSquid,
                sub1: .quickSuperJump,
                sub2: .swimSpeedUp,
                sub3: .swimSpeedUp,
                for: .clothesOnly),
            
            shoes: GearPiece(
                main: .dropRoller,
                sub1: .inkSaverSub,
                sub2: .swimSpeedUp,
                sub3: .inkSaverSub,
                for: .shoesOnly)
        )
        
        #expect(options.hasAbility(.swimSpeedUp))
        #expect(options.hasAbility(.specialPowerUp))
        #expect(options.hasAbility(.specialSaver))
        #expect(options.hasAbility(.ninjaSquid))
        #expect(options.hasAbility(.quickSuperJump))
        #expect(options.hasAbility(.dropRoller))
        #expect(options.hasAbility(.inkSaverSub))
    }
    
    @Test("Build Doesn't Have Ability")
    mutating func buildDoesNotHaveAbility() {
        options.gear = GearBuild(
            headgear: GearPiece(
                main: .swimSpeedUp,
                sub1: .specialPowerUp,
                sub2: .swimSpeedUp,
                sub3: .specialSaver,
                for: .headgearOnly),
            
            clothes: GearPiece(
                main: .ninjaSquid,
                sub1: .quickSuperJump,
                sub2: .swimSpeedUp,
                sub3: .swimSpeedUp,
                for: .clothesOnly),
            
            shoes: GearPiece(
                main: .dropRoller,
                sub1: .inkSaverSub,
                sub2: .swimSpeedUp,
                sub3: .inkSaverSub,
                for: .shoesOnly)
        )
        
        #expect(!options.hasAbility(.none))
        #expect(!options.hasAbility(.inkRecoveryUp))
        #expect(!options.hasAbility(.inkResistanceUp))
        #expect(!options.hasAbility(.inkSaverMain))
        #expect(!options.hasAbility(.intensifyAction))
        #expect(!options.hasAbility(.runSpeedUp))
        #expect(!options.hasAbility(.subResistanceUp))
        #expect(!options.hasAbility(.subPowerUp))
        #expect(!options.hasAbility(.specialChargeUp))
        #expect(!options.hasAbility(.quickRespawn))
        #expect(!options.hasAbility(.comeback))
        #expect(!options.hasAbility(.lastDitchEffort))
        #expect(!options.hasAbility(.openingGambit))
        #expect(!options.hasAbility(.tenacity))
        #expect(!options.hasAbility(.abilityDoubler))
        #expect(!options.hasAbility(.haunt))
        #expect(!options.hasAbility(.respawnPunisher))
        #expect(!options.hasAbility(.thermalInk))
        #expect(!options.hasAbility(.objectShredder))
        #expect(!options.hasAbility(.stealthJump))
    }
}
