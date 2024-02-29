//
//  GearPieceTests.swift
//  
//
//  Created by Christopher Engelbart on 2/18/24.
//

import XCTest
@testable import Splatalyzer

final class GearPieceTests: XCTestCase {

    // MARK: - init(for:)
    func test_GearPiece_init_slot_headgearOnly() {
        let head = GearPiece(for: .headgearOnly)
        XCTAssertEqual(head.main, .none)
        XCTAssertEqual(head.sub1, .none)
        XCTAssertEqual(head.sub2, .none)
        XCTAssertEqual(head.sub3, .none)
        XCTAssertEqual(head.slot, .headgearOnly)
    }

    func test_GearPiece_init_slot_clothesOnly() {
        let head = GearPiece(for: .clothesOnly)
        XCTAssertEqual(head.main, .none)
        XCTAssertEqual(head.sub1, .none)
        XCTAssertEqual(head.sub2, .none)
        XCTAssertEqual(head.sub3, .none)
        XCTAssertEqual(head.slot, .clothesOnly)
    }
    
    func test_GearPiece_init_slot_shoesOnly() {
        let head = GearPiece(for: .shoesOnly)
        XCTAssertEqual(head.main, .none)
        XCTAssertEqual(head.sub1, .none)
        XCTAssertEqual(head.sub2, .none)
        XCTAssertEqual(head.sub3, .none)
        XCTAssertEqual(head.slot, .shoesOnly)
    }
    
    func test_GearPiece_init_slot_none() {
        let head = GearPiece(for: .none)
        XCTAssertEqual(head.main, .none)
        XCTAssertEqual(head.sub1, .none)
        XCTAssertEqual(head.sub2, .none)
        XCTAssertEqual(head.sub3, .none)
        XCTAssertEqual(head.slot, .none)
    }
    
    // MARK: - isValid()
    func test_GearPiece_isValid_headgear_true() {
        var gearPiece = GearPiece(for: .headgearOnly)
        
        gearPiece.main = .comeback
        XCTAssertTrue(gearPiece.isValid(), "Comeback")
        
        gearPiece.main = .lastDitchEffort
        XCTAssertTrue(gearPiece.isValid(), "Last-Ditch Effort")
        
        gearPiece.main = .openingGambit
        XCTAssertTrue(gearPiece.isValid(), "Opening Gambit")

        gearPiece.main = .tenacity
        XCTAssertTrue(gearPiece.isValid(), "Tenacity")
        
        gearPiece.main = .inkRecoveryUp
        XCTAssertTrue(gearPiece.isValid(), "Ink Recovery Up")

        gearPiece.main = .inkResistanceUp
        XCTAssertTrue(gearPiece.isValid(), "Ink Resistance Up")

        gearPiece.main = .inkSaverMain
        XCTAssertTrue(gearPiece.isValid(), "Ink Saver Main")

        gearPiece.main = .inkSaverSub
        XCTAssertTrue(gearPiece.isValid(), "Ink Saver Sub")

        gearPiece.main = .intensifyAction
        XCTAssertTrue(gearPiece.isValid(), "Intensify Action")

        gearPiece.main = .runSpeedUp
        XCTAssertTrue(gearPiece.isValid(), "Run Speed Up")

        gearPiece.main = .subResistanceUp
        XCTAssertTrue(gearPiece.isValid(), "Sub Resistance Up")

        gearPiece.main = .subPowerUp
        XCTAssertTrue(gearPiece.isValid(), "Sub Power Up")

        gearPiece.main = .swimSpeedUp
        XCTAssertTrue(gearPiece.isValid(), "Swim Speed Up")

        gearPiece.main = .specialChargeUp
        XCTAssertTrue(gearPiece.isValid(), "Special Charge Up")

        gearPiece.main = .specialPowerUp
        XCTAssertTrue(gearPiece.isValid(), "Specail Power Up")

        gearPiece.main = .quickRespawn
        XCTAssertTrue(gearPiece.isValid(), "Quick Respawn")

        gearPiece.main = .quickSuperJump
        XCTAssertTrue(gearPiece.isValid(), "Quick Super Jump")
        
        gearPiece.main = .none
        XCTAssertTrue(gearPiece.isValid(), "None")
    }
    
    func test_GearPiece_isValid_headgear_false() {
        var gearPiece = GearPiece(for: .headgearOnly)
        
        gearPiece.main = .abilityDoubler
        XCTAssertFalse(gearPiece.isValid(), "Ability Doubler")
        
        gearPiece.main = .haunt
        XCTAssertFalse(gearPiece.isValid(), "Haunt")
        
        gearPiece.main = .ninjaSquid
        XCTAssertFalse(gearPiece.isValid(), "Ninja Squid")

        gearPiece.main = .respawnPunisher
        XCTAssertFalse(gearPiece.isValid(), "Respawn Punisher")
        
        gearPiece.main = .thermalInk
        XCTAssertFalse(gearPiece.isValid(), "Thermal Ink")

        gearPiece.main = .dropRoller
        XCTAssertFalse(gearPiece.isValid(), "Drop Roller")

        gearPiece.main = .objectShredder
        XCTAssertFalse(gearPiece.isValid(), "Object Shredder")

        gearPiece.main = .stealthJump
        XCTAssertFalse(gearPiece.isValid(), "Stealth Jump")
    }

    func test_GearPiece_isValid_clothes_true() {
        var gearPiece = GearPiece(for: .clothesOnly)
        
        gearPiece.main = .abilityDoubler
        XCTAssertTrue(gearPiece.isValid(), "Ability Doubler")
        
        gearPiece.main = .haunt
        XCTAssertTrue(gearPiece.isValid(), "Haunt")
        
        gearPiece.main = .ninjaSquid
        XCTAssertTrue(gearPiece.isValid(), "Ninja Squid")

        gearPiece.main = .respawnPunisher
        XCTAssertTrue(gearPiece.isValid(), "Respawn Punisher")
        
        gearPiece.main = .thermalInk
        XCTAssertTrue(gearPiece.isValid(), "Thermal Ink")
        
        gearPiece.main = .inkRecoveryUp
        XCTAssertTrue(gearPiece.isValid(), "Ink Recovery Up")

        gearPiece.main = .inkResistanceUp
        XCTAssertTrue(gearPiece.isValid(), "Ink Resistance Up")

        gearPiece.main = .inkSaverMain
        XCTAssertTrue(gearPiece.isValid(), "Ink Saver Main")

        gearPiece.main = .inkSaverSub
        XCTAssertTrue(gearPiece.isValid(), "Ink Saver Sub")

        gearPiece.main = .intensifyAction
        XCTAssertTrue(gearPiece.isValid(), "Intensify Action")

        gearPiece.main = .runSpeedUp
        XCTAssertTrue(gearPiece.isValid(), "Run Speed Up")

        gearPiece.main = .subResistanceUp
        XCTAssertTrue(gearPiece.isValid(), "Sub Resistance Up")

        gearPiece.main = .subPowerUp
        XCTAssertTrue(gearPiece.isValid(), "Sub Power Up")

        gearPiece.main = .swimSpeedUp
        XCTAssertTrue(gearPiece.isValid(), "Swim Speed Up")

        gearPiece.main = .specialChargeUp
        XCTAssertTrue(gearPiece.isValid(), "Special Charge Up")

        gearPiece.main = .specialPowerUp
        XCTAssertTrue(gearPiece.isValid(), "Specail Power Up")

        gearPiece.main = .quickRespawn
        XCTAssertTrue(gearPiece.isValid(), "Quick Respawn")

        gearPiece.main = .quickSuperJump
        XCTAssertTrue(gearPiece.isValid(), "Quick Super Jump")
        
        gearPiece.main = .none
        XCTAssertTrue(gearPiece.isValid(), "None")
    }
    
    func test_GearPiece_isValid_clothes_false() {
        var gearPiece = GearPiece(for: .clothesOnly)
        
        gearPiece.main = .comeback
        XCTAssertFalse(gearPiece.isValid(), "Comeback")
        
        gearPiece.main = .lastDitchEffort
        XCTAssertFalse(gearPiece.isValid(), "Last-Ditch Effort")
        
        gearPiece.main = .openingGambit
        XCTAssertFalse(gearPiece.isValid(), "Opening Gambit")

        gearPiece.main = .tenacity
        XCTAssertFalse(gearPiece.isValid(), "Tenacity")

        gearPiece.main = .dropRoller
        XCTAssertFalse(gearPiece.isValid(), "Drop Roller")

        gearPiece.main = .objectShredder
        XCTAssertFalse(gearPiece.isValid(), "Object Shredder")

        gearPiece.main = .stealthJump
        XCTAssertFalse(gearPiece.isValid(), "Stealth Jump")
    }
    
    func test_GearPiece_isValid_shoes_true() {
        var gearPiece = GearPiece(for: .shoesOnly)
        
        gearPiece.main = .dropRoller
        XCTAssertTrue(gearPiece.isValid(), "Drop Roller")

        gearPiece.main = .objectShredder
        XCTAssertTrue(gearPiece.isValid(), "Object Shredder")

        gearPiece.main = .stealthJump
        XCTAssertTrue(gearPiece.isValid(), "Stealth Jump")
        
        gearPiece.main = .inkRecoveryUp
        XCTAssertTrue(gearPiece.isValid(), "Ink Recovery Up")

        gearPiece.main = .inkResistanceUp
        XCTAssertTrue(gearPiece.isValid(), "Ink Resistance Up")

        gearPiece.main = .inkSaverMain
        XCTAssertTrue(gearPiece.isValid(), "Ink Saver Main")

        gearPiece.main = .inkSaverSub
        XCTAssertTrue(gearPiece.isValid(), "Ink Saver Sub")

        gearPiece.main = .intensifyAction
        XCTAssertTrue(gearPiece.isValid(), "Intensify Action")

        gearPiece.main = .runSpeedUp
        XCTAssertTrue(gearPiece.isValid(), "Run Speed Up")

        gearPiece.main = .subResistanceUp
        XCTAssertTrue(gearPiece.isValid(), "Sub Resistance Up")

        gearPiece.main = .subPowerUp
        XCTAssertTrue(gearPiece.isValid(), "Sub Power Up")

        gearPiece.main = .swimSpeedUp
        XCTAssertTrue(gearPiece.isValid(), "Swim Speed Up")

        gearPiece.main = .specialChargeUp
        XCTAssertTrue(gearPiece.isValid(), "Special Charge Up")

        gearPiece.main = .specialPowerUp
        XCTAssertTrue(gearPiece.isValid(), "Specail Power Up")

        gearPiece.main = .quickRespawn
        XCTAssertTrue(gearPiece.isValid(), "Quick Respawn")

        gearPiece.main = .quickSuperJump
        XCTAssertTrue(gearPiece.isValid(), "Quick Super Jump")
        
        gearPiece.main = .none
        XCTAssertTrue(gearPiece.isValid(), "None")
    }
    
    func test_GearPiece_isValid_shoes_false() {
        var gearPiece = GearPiece(for: .shoesOnly)
        
        gearPiece.main = .comeback
        XCTAssertFalse(gearPiece.isValid(), "Comeback")
        
        gearPiece.main = .lastDitchEffort
        XCTAssertFalse(gearPiece.isValid(), "Last-Ditch Effort")
        
        gearPiece.main = .openingGambit
        XCTAssertFalse(gearPiece.isValid(), "Opening Gambit")

        gearPiece.main = .tenacity
        XCTAssertFalse(gearPiece.isValid(), "Tenacity")
        
        gearPiece.main = .abilityDoubler
        XCTAssertFalse(gearPiece.isValid(), "Ability Doubler")
        
        gearPiece.main = .haunt
        XCTAssertFalse(gearPiece.isValid(), "Haunt")
        
        gearPiece.main = .ninjaSquid
        XCTAssertFalse(gearPiece.isValid(), "Ninja Squid")

        gearPiece.main = .respawnPunisher
        XCTAssertFalse(gearPiece.isValid(), "Respawn Punisher")
        
        gearPiece.main = .thermalInk
        XCTAssertFalse(gearPiece.isValid(), "Thermal Ink")
    }
    
    func test_GearPiece_isValid_none_false() {
        var gearPiece = GearPiece(for: .none)
        
        gearPiece.main = .comeback
        XCTAssertFalse(gearPiece.isValid(), "Comeback")
        
        gearPiece.main = .lastDitchEffort
        XCTAssertFalse(gearPiece.isValid(), "Last-Ditch Effort")
        
        gearPiece.main = .openingGambit
        XCTAssertFalse(gearPiece.isValid(), "Opening Gambit")

        gearPiece.main = .tenacity
        XCTAssertFalse(gearPiece.isValid(), "Tenacity")
        
        gearPiece.main = .abilityDoubler
        XCTAssertFalse(gearPiece.isValid(), "Ability Doubler")
        
        gearPiece.main = .haunt
        XCTAssertFalse(gearPiece.isValid(), "Haunt")
        
        gearPiece.main = .ninjaSquid
        XCTAssertFalse(gearPiece.isValid(), "Ninja Squid")

        gearPiece.main = .respawnPunisher
        XCTAssertFalse(gearPiece.isValid(), "Respawn Punisher")
        
        gearPiece.main = .thermalInk
        XCTAssertFalse(gearPiece.isValid(), "Thermal Ink")
        
        gearPiece.main = .dropRoller
        XCTAssertFalse(gearPiece.isValid(), "Drop Roller")

        gearPiece.main = .objectShredder
        XCTAssertFalse(gearPiece.isValid(), "Object Shredder")

        gearPiece.main = .stealthJump
        XCTAssertFalse(gearPiece.isValid(), "Stealth Jump")
        
        gearPiece.main = .inkRecoveryUp
        XCTAssertFalse(gearPiece.isValid(), "Ink Recovery Up")

        gearPiece.main = .inkResistanceUp
        XCTAssertFalse(gearPiece.isValid(), "Ink Resistance Up")

        gearPiece.main = .inkSaverMain
        XCTAssertFalse(gearPiece.isValid(), "Ink Saver Main")

        gearPiece.main = .inkSaverSub
        XCTAssertFalse(gearPiece.isValid(), "Ink Saver Sub")

        gearPiece.main = .intensifyAction
        XCTAssertFalse(gearPiece.isValid(), "Intensify Action")

        gearPiece.main = .runSpeedUp
        XCTAssertFalse(gearPiece.isValid(), "Run Speed Up")

        gearPiece.main = .subResistanceUp
        XCTAssertFalse(gearPiece.isValid(), "Sub Resistance Up")

        gearPiece.main = .subPowerUp
        XCTAssertFalse(gearPiece.isValid(), "Sub Power Up")

        gearPiece.main = .swimSpeedUp
        XCTAssertFalse(gearPiece.isValid(), "Swim Speed Up")

        gearPiece.main = .specialChargeUp
        XCTAssertFalse(gearPiece.isValid(), "Special Charge Up")

        gearPiece.main = .specialPowerUp
        XCTAssertFalse(gearPiece.isValid(), "Specail Power Up")

        gearPiece.main = .quickRespawn
        XCTAssertFalse(gearPiece.isValid(), "Quick Respawn")

        gearPiece.main = .quickSuperJump
        XCTAssertFalse(gearPiece.isValid(), "Quick Super Jump")
        
        gearPiece.main = .none
        XCTAssertFalse(gearPiece.isValid(), "None")
    }
    
    // MARK: - toArray()
    func test_GearPiece_toArray() {
        let gearPiece = GearPiece(main: .swimSpeedUp, sub1: .specialPowerUp, sub2: .swimSpeedUp, sub3: .specialPowerUp, for: .headgearOnly)
        
        let array = gearPiece.toArray()
        
        XCTAssertEqual(array.count, 4)
        XCTAssertEqual(array[0], .swimSpeedUp)
        XCTAssertEqual(array[1], .specialPowerUp)
        XCTAssertEqual(array[2], .swimSpeedUp)
        XCTAssertEqual(array[3], .specialPowerUp)
    }
    
    // MARK: - toAbilityPoints()
    func test_GearPiece_toAbilityPoints_exclusive() {
        let gearPiece = GearPiece(
            main: .ninjaSquid,
            sub1: .quickSuperJump,
            sub2: .swimSpeedUp,
            sub3: .swimSpeedUp,
            for: .clothesOnly)
        
        let ap = gearPiece.toAbilityPoints()

        XCTAssertNil(ap[.ninjaSquid])
        XCTAssertEqual(ap[.quickSuperJump], 3)
        XCTAssertEqual(ap[.swimSpeedUp], 6)
    }
    
    func test_GearPiece_toAbilityPoints_nonExclusive() {
        let gearPiece = GearPiece(
            main: .swimSpeedUp,
            sub1: .specialPowerUp,
            sub2: .swimSpeedUp,
            sub3: .specialPowerUp,
            for: .headgearOnly)
        
        let ap = gearPiece.toAbilityPoints()

        XCTAssertEqual(ap[.swimSpeedUp], 13)
        XCTAssertEqual(ap[.specialPowerUp], 6)
    }
    
    func test_GearPiece_toAbilityPoints_abilityDoubler() {
        let gearPiece = GearPiece(
            main: .abilityDoubler,
            sub1: .specialPowerUp,
            sub2: .swimSpeedUp,
            sub3: .specialPowerUp,
            for: .headgearOnly)
        
        let ap = gearPiece.toAbilityPoints()

        XCTAssertEqual(ap[.swimSpeedUp], 6)
        XCTAssertEqual(ap[.specialPowerUp], 12)
    }
    
    // MARK: - specialEffect(ldeIntensity:)
    func test_GearPiece_specialEffect_dropRoller() {
        var gearPiece = GearPiece(for: .shoesOnly)
        gearPiece.main = .dropRoller
        
        let effect = gearPiece.specialEffect()
        XCTAssertEqual(effect, .dropRoller)
    }
    
    func test_GearPiece_specialEffect_openingGambit() {
        var gearPiece = GearPiece(for: .headgearOnly)
        gearPiece.main = .openingGambit
        
        let effect = gearPiece.specialEffect()
        XCTAssertEqual(effect, .openingGambit)
    }
    
    func test_GearPiece_specialEffect_comeBack() {
        var gearPiece = GearPiece(for: .headgearOnly)
        gearPiece.main = .comeback
        
        let effect = gearPiece.specialEffect()
        XCTAssertEqual(effect, .comeBack)
    }
    
    func test_GearPiece_specialEffect_lastDitchEffort() {
        var gearPiece = GearPiece(for: .headgearOnly)
        gearPiece.main = .lastDitchEffort
        
        let effect0 = gearPiece.specialEffect()
        XCTAssertEqual(effect0, .lastDitchEffort(0))
        
        let effect21 = gearPiece.specialEffect(ldeIntensity: 21)
        XCTAssertEqual(effect21, .lastDitchEffort(21))
    }
    
    func test_GearPiece_specialEffect_nil() {
        var gearPiece = GearPiece(for: .none)
        
        gearPiece.main = .tenacity
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .abilityDoubler
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .haunt
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .ninjaSquid
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .respawnPunisher
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .thermalInk
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .objectShredder
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .stealthJump
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .none
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .inkRecoveryUp
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .inkResistanceUp
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .inkSaverMain
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .inkSaverSub
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .intensifyAction
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .runSpeedUp
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .subResistanceUp
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .subPowerUp
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .swimSpeedUp
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .specialSaver
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .specialChargeUp
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .specialPowerUp
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .quickRespawn
        XCTAssertNil(gearPiece.specialEffect())
        
        gearPiece.main = .quickSuperJump
        XCTAssertNil(gearPiece.specialEffect())
    }
    
    // MARK: - hasAbility()
    func test_GearPiece_hasAbility_true() {
        let gearPiece = GearPiece(main: .swimSpeedUp, sub1: .inkSaverMain, sub2: .runSpeedUp, sub3: .specialSaver, for: .shoesOnly)
        
        XCTAssertTrue(gearPiece.hasAbility(.swimSpeedUp))
        XCTAssertTrue(gearPiece.hasAbility(.inkSaverMain))
        XCTAssertTrue(gearPiece.hasAbility(.runSpeedUp))
        XCTAssertTrue(gearPiece.hasAbility(.specialSaver))
    }
    
    func test_GearPiece_hasAbility_false() {
        let gearPiece = GearPiece(main: .swimSpeedUp, sub1: .inkSaverMain, sub2: .runSpeedUp, sub3: .specialSaver, for: .shoesOnly)
        
        XCTAssertFalse(gearPiece.hasAbility(.comeback))
        XCTAssertFalse(gearPiece.hasAbility(.subPowerUp))
        XCTAssertFalse(gearPiece.hasAbility(.specialChargeUp))
        XCTAssertFalse(gearPiece.hasAbility(.inkRecoveryUp))
    }
}
