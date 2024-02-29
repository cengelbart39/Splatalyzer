//
//  BuildOptionsTests.swift
//  
//
//  Created by Christopher Engelbart on 2/19/24.
//

import XCTest
@testable import Splatalyzer

final class BuildOptionsTests: XCTestCase {

    // MARK: init()
    func test_BuildOptions_init_defaultValues() {
        let options = BuildOptions()
        
        XCTAssertEqual(options.mainWeapon, .rapidBlasterPro)
        XCTAssertEqual(options.gear.headgear.toArray(), [.none, .none, .none, .none])
        XCTAssertEqual(options.gear.clothes.toArray(), [.none, .none, .none, .none])
        XCTAssertEqual(options.gear.shoes.toArray(), [.none, .none, .none, .none])
        XCTAssertEqual(options.ldeIntensity, 0)
        XCTAssertFalse(options.usingTacticooler)
    }
    
    // MARK: - isLDEIntensityValid()
    func test_BuildOptions_isLDEIntensityValid_true() {
        var options = BuildOptions()
        
        options.ldeIntensity = 0
        XCTAssertTrue(options.isLDEIntensityValid())
        
        options.ldeIntensity = 4
        XCTAssertTrue(options.isLDEIntensityValid())
        
        options.ldeIntensity = 10
        XCTAssertTrue(options.isLDEIntensityValid())
        
        options.ldeIntensity = 13
        XCTAssertTrue(options.isLDEIntensityValid())
        
        options.ldeIntensity = 18
        XCTAssertTrue(options.isLDEIntensityValid())
        
        options.ldeIntensity = 21
        XCTAssertTrue(options.isLDEIntensityValid())
    }
    
    func test_BuildOptions_isLDEIntensityValid_false() {
        var options = BuildOptions()
        
        options.ldeIntensity = -1
        XCTAssertFalse(options.isLDEIntensityValid())
        
        options.ldeIntensity = 22
        XCTAssertFalse(options.isLDEIntensityValid())
    }
    
    // MARK: - isGearValid()
    func test_BuildOptions_isGearValid_true() {
        var options = BuildOptions()
        
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

        XCTAssertTrue(options.isGearValid())
    }
    
    func test_BuildOptions_isGearValid_false() {
        var options = BuildOptions()
        
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

        XCTAssertFalse(options.isGearValid())
    }
    
    // MARK: - hasAbility(_:)
    func test_BuildOptions_hasAbility_true() {
        var options = BuildOptions()
        
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

        XCTAssertTrue(options.hasAbility(.swimSpeedUp))
        XCTAssertTrue(options.hasAbility(.specialPowerUp))
        XCTAssertTrue(options.hasAbility(.specialSaver))
        XCTAssertTrue(options.hasAbility(.ninjaSquid))
        XCTAssertTrue(options.hasAbility(.quickSuperJump))
        XCTAssertTrue(options.hasAbility(.dropRoller))
        XCTAssertTrue(options.hasAbility(.inkSaverSub))
    }
    
    func test_BuildOptions_hasAbility_false() {
        var options = BuildOptions()
        
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
        
        XCTAssertFalse(options.hasAbility(.none))
        XCTAssertFalse(options.hasAbility(.inkRecoveryUp))
        XCTAssertFalse(options.hasAbility(.inkResistanceUp))
        XCTAssertFalse(options.hasAbility(.inkSaverMain))
        XCTAssertFalse(options.hasAbility(.intensifyAction))
        XCTAssertFalse(options.hasAbility(.runSpeedUp))
        XCTAssertFalse(options.hasAbility(.subResistanceUp))
        XCTAssertFalse(options.hasAbility(.subPowerUp))
        XCTAssertFalse(options.hasAbility(.specialChargeUp))
        XCTAssertFalse(options.hasAbility(.quickRespawn))
        XCTAssertFalse(options.hasAbility(.comeback))
        XCTAssertFalse(options.hasAbility(.lastDitchEffort))
        XCTAssertFalse(options.hasAbility(.openingGambit))
        XCTAssertFalse(options.hasAbility(.tenacity))
        XCTAssertFalse(options.hasAbility(.abilityDoubler))
        XCTAssertFalse(options.hasAbility(.haunt))
        XCTAssertFalse(options.hasAbility(.respawnPunisher))
        XCTAssertFalse(options.hasAbility(.thermalInk))
        XCTAssertFalse(options.hasAbility(.objectShredder))
        XCTAssertFalse(options.hasAbility(.stealthJump))
    }

}
