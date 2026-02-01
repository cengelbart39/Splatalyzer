//
//  GearBuildTests.swift
//  
//
//  Created by Christopher Engelbart on 2/18/24.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.gearBuild))
struct GearBuildTests {
    
    @Test("GearBuild Default Values")
    func defaultProperties() {
        let build = GearBuild()
        
        #expect(build.headgear.slot == .headgearOnly)
        #expect(build.clothes.slot == .clothesOnly)
        #expect(build.shoes.slot == .shoesOnly)
        
        #expect(build.headgear.main == .none)
        #expect(build.headgear.sub1 == .none)
        #expect(build.headgear.sub2 == .none)
        #expect(build.headgear.sub3 == .none)

        #expect(build.clothes.main == .none)
        #expect(build.clothes.sub1 == .none)
        #expect(build.clothes.sub2 == .none)
        #expect(build.clothes.sub3 == .none)
        
        #expect(build.shoes.main == .none)
        #expect(build.shoes.sub1 == .none)
        #expect(build.shoes.sub2 == .none)
        #expect(build.shoes.sub3 == .none)
    }
    
    @Test("GearBuild is Valid")
    func gearIsValid() {
        let empty = GearBuild()
        #expect(empty.isValid())
        
        let build = GearBuild(
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
        
        #expect(build.isValid())
    }
    
    @Test("GearBuild is Invalid")
    func gearIsNotValid() {
        let build = GearBuild(
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
        
        #expect(!build.isValid())
    }
    
    @Test("Empty Build AP")
    func emptyBuildAP() throws {
        let build = GearBuild()
        
        let ap = build.toAbilityPoints(usingTacticooler: false, usingFlowAura: false)
        try #require(!ap.isEmpty)
        
        #expect(ap[.none] == 57)
    }
    
    @Test("Build AP")
    func buildAP() throws {
        let build = GearBuild(
            headgear: GearPiece(
                main: .swimSpeedUp,
                sub1: .specialPowerUp,
                sub2: .swimSpeedUp,
                sub3: .specialPowerUp,
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
        
        let ap = build.toAbilityPoints(usingTacticooler: false, usingFlowAura: false)
        try #require(!ap.isEmpty)
        
        #expect(ap[.swimSpeedUp] == 52)
        #expect(ap[.specialPowerUp] == 6)
        #expect(ap[.quickSuperJump] == 3)
        #expect(ap[.inkSaverSub] == 6)
        
        #expect(ap[.runSpeedUp] == 30)
        #expect(ap[.inkResistanceUp] == 30)
    }
    
    @Test("Build AP + Tacticooler")
    func buildAPTacticooler() throws {
        let build = GearBuild(
            headgear: GearPiece(
                main: .swimSpeedUp,
                sub1: .specialPowerUp,
                sub2: .swimSpeedUp,
                sub3: .specialPowerUp,
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
        
        let ap = build.toAbilityPoints(usingTacticooler: true, usingFlowAura: false)
        try #require(!ap.isEmpty)
        
        #expect(ap[.swimSpeedUp] == 52)
        #expect(ap[.specialPowerUp] == 6)
        #expect(ap[.quickSuperJump] == 57)
        #expect(ap[.inkSaverSub] == 6)
        
        #expect(ap[.runSpeedUp] == 30)
        #expect(ap[.inkResistanceUp] == 57)
        #expect(ap[.specialSaver] == 57)
        #expect(ap[.intensifyAction] == 57)
    }
    
    @Test("Build AP + Flow Aura")
    func buildAPFlowAura() throws {
        let build = GearBuild(
            headgear: GearPiece(
                main: .swimSpeedUp,
                sub1: .specialPowerUp,
                sub2: .swimSpeedUp,
                sub3: .specialPowerUp,
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
        
        let ap = build.toAbilityPoints(usingTacticooler: false, usingFlowAura: true)
        try #require(!ap.isEmpty)
        
        #expect(ap[.swimSpeedUp] == 52)
        #expect(ap[.specialPowerUp] == 6)
        #expect(ap[.quickSuperJump] == 3)
        #expect(ap[.inkSaverSub] == 6)
        
        #expect(ap[.runSpeedUp] == 30)
        #expect(ap[.inkResistanceUp] == 30)
        #expect(ap[.intensifyAction] == 30)
    }
    
    @Test("Build AP + LDE 0")
    func buildAPWithNoLDE() throws {
        let build = GearBuild(
            headgear: GearPiece(
                main: .lastDitchEffort,
                sub1: .inkSaverMain,
                sub2: .inkSaverMain,
                sub3: .quickSuperJump,
                for: .headgearOnly),
            
            clothes: GearPiece(
                main: .ninjaSquid,
                sub1: .swimSpeedUp,
                sub2: .swimSpeedUp,
                sub3: .swimSpeedUp,
                for: .clothesOnly),
            
            shoes: GearPiece(
                main: .stealthJump,
                sub1: .inkResistanceUp,
                sub2: .subResistanceUp,
                sub3: .specialSaver,
                for: .shoesOnly)
        )

        let ap = build.toAbilityPoints(ldeIntensity: 0, usingTacticooler: false, usingFlowAura: false)
        try #require(!ap.isEmpty)
        
        #expect(ap[.inkSaverMain] == 6)
        #expect(ap[.quickSuperJump] == 3)
        #expect(ap[.swimSpeedUp] == 9)
        #expect(ap[.inkResistanceUp] == 3)
        #expect(ap[.subResistanceUp] == 3)
        #expect(ap[.specialSaver] == 3)
    }
    
    @Test("Build AP + LDE 21")
    func buildAPWithMaxLDE() throws {
        let build = GearBuild(
            headgear: GearPiece(
                main: .lastDitchEffort,
                sub1: .inkSaverMain,
                sub2: .inkSaverMain,
                sub3: .quickSuperJump,
                for: .headgearOnly),
            
            clothes: GearPiece(
                main: .ninjaSquid,
                sub1: .swimSpeedUp,
                sub2: .swimSpeedUp,
                sub3: .swimSpeedUp,
                for: .clothesOnly),
            
            shoes: GearPiece(
                main: .stealthJump,
                sub1: .inkResistanceUp,
                sub2: .subResistanceUp,
                sub3: .specialSaver,
                for: .shoesOnly)
        )

        let ap = build.toAbilityPoints(ldeIntensity: 21, usingTacticooler: false, usingFlowAura: false)
        try #require(!ap.isEmpty)
        
        #expect(ap[.inkSaverMain] == 24)
        #expect(ap[.quickSuperJump] == 3)
        #expect(ap[.swimSpeedUp] == 9)
        #expect(ap[.inkResistanceUp] == 3)
        #expect(ap[.subResistanceUp] == 3)
        #expect(ap[.specialSaver] == 3)
        
        #expect(ap[.inkSaverSub] == 18)
        #expect(ap[.inkRecoveryUp] == 18)
    }
    
    @Test("Build Has Ability", arguments: [
        Ability.lastDitchEffort, .inkSaverMain, .quickSuperJump, .ninjaSquid, .swimSpeedUp, .stealthJump, .inkResistanceUp, .subResistanceUp, .specialSaver
    ])
    func buildHasAbility(_ ability: Ability) {
        let build = GearBuild(
            headgear: GearPiece(
                main: .lastDitchEffort,
                sub1: .inkSaverMain,
                sub2: .inkSaverMain,
                sub3: .quickSuperJump,
                for: .headgearOnly),
            
            clothes: GearPiece(
                main: .ninjaSquid,
                sub1: .swimSpeedUp,
                sub2: .swimSpeedUp,
                sub3: .swimSpeedUp,
                for: .clothesOnly),
            
            shoes: GearPiece(
                main: .stealthJump,
                sub1: .inkResistanceUp,
                sub2: .subResistanceUp,
                sub3: .specialSaver,
                for: .shoesOnly)
        )
        
        #expect(build.hasAbility(ability))
    }
    
    @Test("Build Doesn't Have Ability", arguments: [
        Ability.inkRecoveryUp, .inkSaverSub, .intensifyAction, .runSpeedUp, .subPowerUp, .specialChargeUp, .specialPowerUp, .quickRespawn, .comeback, .openingGambit, .tenacity, .abilityDoubler, .haunt, .respawnPunisher, .thermalInk, .dropRoller, .objectShredder
    ])
    func buildNotHaveAbility(_ ability: Ability) {
        let build = GearBuild(
            headgear: GearPiece(
                main: .lastDitchEffort,
                sub1: .inkSaverMain,
                sub2: .inkSaverMain,
                sub3: .quickSuperJump,
                for: .headgearOnly),
            
            clothes: GearPiece(
                main: .ninjaSquid,
                sub1: .swimSpeedUp,
                sub2: .swimSpeedUp,
                sub3: .swimSpeedUp,
                for: .clothesOnly),
            
            shoes: GearPiece(
                main: .stealthJump,
                sub1: .inkResistanceUp,
                sub2: .subResistanceUp,
                sub3: .specialSaver,
                for: .shoesOnly)
        )

        #expect(!build.hasAbility(ability))
    }
}
