//
//  GearBuildTests.swift
//  
//
//  Created by Christopher Engelbart on 2/18/24.
//

import XCTest
@testable import Splatalyzer

final class GearBuildTests: XCTestCase {

    func test_GearBuild_init_properties() {
        let build = GearBuild()
        
        XCTAssertEqual(build.headgear.slot, .headgearOnly)
        XCTAssertEqual(build.clothes.slot, .clothesOnly)
        XCTAssertEqual(build.shoes.slot, .shoesOnly)
        
        XCTAssertEqual(build.headgear.main, .none)
        XCTAssertEqual(build.headgear.sub1, .none)
        XCTAssertEqual(build.headgear.sub2, .none)
        XCTAssertEqual(build.headgear.sub3, .none)

        XCTAssertEqual(build.clothes.main, .none)
        XCTAssertEqual(build.clothes.sub1, .none)
        XCTAssertEqual(build.clothes.sub2, .none)
        XCTAssertEqual(build.clothes.sub3, .none)
        
        XCTAssertEqual(build.shoes.main, .none)
        XCTAssertEqual(build.shoes.sub1, .none)
        XCTAssertEqual(build.shoes.sub2, .none)
        XCTAssertEqual(build.shoes.sub3, .none)
    }
    
    // MARK: - isValid
    func test_GearBuild_isValid_true() {
        let empty = GearBuild()
        XCTAssertTrue(empty.isValid())
        
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
        
        XCTAssertTrue(build.isValid())
    }

    func test_GearBuild_isValid_false() {
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
        
        XCTAssertFalse(build.isValid())
    }

    // MARK: - toAbilityPoints(ldeIntensity:usingTacticooler:)
    func test_GearBuild_toAbilityPoints_emptyGear() {
        let build = GearBuild()
        
        let ap = build.toAbilityPoints(usingTacticooler: false)
                
        XCTAssertEqual(ap[.none], 57)
    }
    
    func test_GearBuild_toAbilityPoints_noLDE() {
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
        
        let ap = build.toAbilityPoints(usingTacticooler: false)
        
        XCTAssertEqual(ap[.swimSpeedUp], 52)
        XCTAssertEqual(ap[.specialPowerUp], 6)
        XCTAssertEqual(ap[.quickSuperJump], 3)
        XCTAssertEqual(ap[.inkSaverSub], 6)
        
        XCTAssertEqual(ap[.runSpeedUp], 30)
        XCTAssertEqual(ap[.inkResistanceUp], 30)
    }
    
    func test_GearBuild_toAbilityPoints_noLDE_tacticooler() {
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
        
        let ap = build.toAbilityPoints(usingTacticooler: true)
        
        XCTAssertEqual(ap[.swimSpeedUp], 52)
        XCTAssertEqual(ap[.specialPowerUp], 6)
        XCTAssertEqual(ap[.quickSuperJump], 57)
        XCTAssertEqual(ap[.inkSaverSub], 6)
        
        XCTAssertEqual(ap[.runSpeedUp], 30)
        XCTAssertEqual(ap[.inkResistanceUp], 57)
        XCTAssertEqual(ap[.specialSaver], 57)
        XCTAssertEqual(ap[.intensifyAction], 57)
    }

    func test_GearBuild_toAbilityPoints_LDE_0() {
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

        let ap = build.toAbilityPoints(usingTacticooler: false)
        
        XCTAssertEqual(ap[.inkSaverMain], 6)
        XCTAssertEqual(ap[.quickSuperJump], 3)
        XCTAssertEqual(ap[.swimSpeedUp], 9)
        XCTAssertEqual(ap[.inkResistanceUp], 3)
        XCTAssertEqual(ap[.subResistanceUp], 3)
        XCTAssertEqual(ap[.specialSaver], 3)
    }
    
    func test_GearBuild_toAbilityPoints_LDE_21() {
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

        let ap = build.toAbilityPoints(ldeIntensity: 21, usingTacticooler: false)
        
        XCTAssertEqual(ap[.inkSaverMain], 24)
        XCTAssertEqual(ap[.quickSuperJump], 3)
        XCTAssertEqual(ap[.swimSpeedUp], 9)
        XCTAssertEqual(ap[.inkResistanceUp], 3)
        XCTAssertEqual(ap[.subResistanceUp], 3)
        XCTAssertEqual(ap[.specialSaver], 3)
        
        XCTAssertEqual(ap[.inkSaverSub], 18)
        XCTAssertEqual(ap[.inkRecoveryUp], 18)
    }
    
    // MARK: - hasAbility(_:)
    func test_GearBuild_hasAbility_true() {
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

        XCTAssertTrue(build.hasAbility(.lastDitchEffort))
        XCTAssertTrue(build.hasAbility(.inkSaverMain))
        XCTAssertTrue(build.hasAbility(.quickSuperJump))
        
        XCTAssertTrue(build.hasAbility(.ninjaSquid))
        XCTAssertTrue(build.hasAbility(.swimSpeedUp))

        XCTAssertTrue(build.hasAbility(.stealthJump))
        XCTAssertTrue(build.hasAbility(.inkResistanceUp))
        XCTAssertTrue(build.hasAbility(.subResistanceUp))
        XCTAssertTrue(build.hasAbility(.specialSaver))
    }

    func test_GearBuild_hasAbility_false() {
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
        
        XCTAssertFalse(build.hasAbility(.inkRecoveryUp))
        XCTAssertFalse(build.hasAbility(.inkSaverSub))
        XCTAssertFalse(build.hasAbility(.intensifyAction))
        XCTAssertFalse(build.hasAbility(.runSpeedUp))
        XCTAssertFalse(build.hasAbility(.subPowerUp))
        XCTAssertFalse(build.hasAbility(.specialChargeUp))
        XCTAssertFalse(build.hasAbility(.specialPowerUp))
        XCTAssertFalse(build.hasAbility(.quickRespawn))
        
        XCTAssertFalse(build.hasAbility(.comeback))
        XCTAssertFalse(build.hasAbility(.openingGambit))
        XCTAssertFalse(build.hasAbility(.tenacity))
        
        XCTAssertFalse(build.hasAbility(.abilityDoubler))
        XCTAssertFalse(build.hasAbility(.haunt))
        XCTAssertFalse(build.hasAbility(.respawnPunisher))
        XCTAssertFalse(build.hasAbility(.thermalInk))
        
        XCTAssertFalse(build.hasAbility(.dropRoller))
        XCTAssertFalse(build.hasAbility(.objectShredder))
    }

}
