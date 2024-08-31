//
//  GearPieceTests.swift
//  
//
//  Created by Christopher Engelbart on 2/18/24.
//

import Testing
@testable import Splatalyzer

struct GearPieceTests {
    @Test("Default Values", arguments: [
        AbilityRestriction.none, .headgearOnly, .clothesOnly, .shoesOnly
    ])
    func defaultValues(_ restriction: AbilityRestriction) {
        let piece = GearPiece(for: restriction)
        #expect(piece.main == .none)
        #expect(piece.sub1 == .none)
        #expect(piece.sub2 == .none)
        #expect(piece.sub3 == .none)
        #expect(piece.slot == restriction)
    }
    
    @Test("Headgear is Valid", arguments: [
        Ability.comeback, .lastDitchEffort, .openingGambit, .tenacity, .inkRecoveryUp, .inkResistanceUp, .inkSaverMain, .inkSaverSub, .intensifyAction, .runSpeedUp, .subResistanceUp, .subPowerUp, .swimSpeedUp, .specialPowerUp, .quickRespawn, .quickSuperJump, .none
    ])
    func headgearIsValid(with ability: Ability) {
        var gearPiece = GearPiece(for: .headgearOnly)
        gearPiece.main = ability
        
        #expect(gearPiece.isValid())
    }
    
    @Test("Headgear is Invalid", arguments: [
        Ability.abilityDoubler, .haunt, .ninjaSquid, .respawnPunisher, .thermalInk, .dropRoller, .objectShredder, .stealthJump
    ])
    func headgearIsInvalid(with ability: Ability) {
        var gearPiece = GearPiece(for: .headgearOnly)
        gearPiece.main = ability
        
        #expect(!gearPiece.isValid())
    }
    
    @Test("Clothes is Valid", arguments: [
        Ability.abilityDoubler, .haunt, .ninjaSquid, .respawnPunisher, .thermalInk, .inkRecoveryUp, .inkResistanceUp, .inkSaverMain, .inkSaverSub, .intensifyAction, .runSpeedUp, .subResistanceUp, .subPowerUp, .swimSpeedUp, .specialPowerUp, .quickRespawn, .quickSuperJump, .none
    ])
    func clothesIsValid(with ability: Ability) {
        var gearPiece = GearPiece(for: .clothesOnly)
        gearPiece.main = ability
        
        #expect(gearPiece.isValid())
    }
    
    @Test("Clothes is Invalid", arguments: [
        Ability.comeback, .lastDitchEffort, .openingGambit, .tenacity, .dropRoller, .objectShredder, .stealthJump
    ])
    func clothesIsInvalid(with ability: Ability) {
        var gearPiece = GearPiece(for: .clothesOnly)
        gearPiece.main = ability
        
        #expect(!gearPiece.isValid())
    }
    
    @Test("Shoes is Valid", arguments: [
        Ability.dropRoller, .objectShredder, .stealthJump, .inkRecoveryUp, .inkResistanceUp, .inkSaverMain, .inkSaverSub, .intensifyAction, .runSpeedUp, .subResistanceUp, .subPowerUp, .swimSpeedUp, .specialPowerUp, .quickRespawn, .quickSuperJump, .none
    ])
    func shoesIsValid(with ability: Ability) {
        var gearPiece = GearPiece(for: .shoesOnly)
        gearPiece.main = ability
        
        #expect(gearPiece.isValid())
    }
    
    @Test("Shoes is Invalid", arguments: [
        Ability.comeback, .lastDitchEffort, .openingGambit, .tenacity, .abilityDoubler, .haunt, .ninjaSquid, .respawnPunisher, .thermalInk
    ])
    func shoesIsInvalid(with ability: Ability) {
        var gearPiece = GearPiece(for: .shoesOnly)
        gearPiece.main = ability
        
        #expect(!gearPiece.isValid())
    }
    
    @Test("None is Invalid", arguments: Ability.allCases)
    func noneIsInvalid(with ability: Ability) {
        var gearPiece = GearPiece(for: .none)
        gearPiece.main = ability
        
        #expect(!gearPiece.isValid())
    }
    
    @Test func toArray() throws {
        let gearPiece = GearPiece(main: .swimSpeedUp, sub1: .specialPowerUp, sub2: .swimSpeedUp, sub3: .specialPowerUp, for: .headgearOnly)
        
        let array = gearPiece.toArray()
        try #require(array.count == 4)
        
        #expect(array[0] == .swimSpeedUp)
        #expect(array[1] == .specialPowerUp)
        #expect(array[2] == .swimSpeedUp)
        #expect(array[3] == .specialPowerUp)
    }
    
    @Test func pieceAPExclusive() throws {
        let piece = GearPiece(
            main: .ninjaSquid,
            sub1: .quickSuperJump,
            sub2: .swimSpeedUp,
            sub3: .swimSpeedUp,
            for: .clothesOnly)
        
        let ap = piece.toAbilityPoints()
        try #require(!ap.isEmpty)
        
        #expect(ap[.ninjaSquid] == nil)
        #expect(ap[.quickSuperJump] == 3)
        #expect(ap[.swimSpeedUp] == 6)
    }
    
    @Test func pieceAPNonExclusive() throws {
        let piece = GearPiece(
            main: .swimSpeedUp,
            sub1: .specialPowerUp,
            sub2: .swimSpeedUp,
            sub3: .specialPowerUp,
            for: .headgearOnly)
        
        let ap = piece.toAbilityPoints()
        try #require(!ap.isEmpty)
        
        #expect(ap[.specialPowerUp] == 6)
        #expect(ap[.swimSpeedUp] == 13)
    }
    
    @Test func pieceAPAbilityDoubler() throws {
        let piece = GearPiece(
            main: .abilityDoubler,
            sub1: .specialPowerUp,
            sub2: .swimSpeedUp,
            sub3: .specialPowerUp,
            for: .clothesOnly)
        
        let ap = piece.toAbilityPoints()
        try #require(!ap.isEmpty)
        
        #expect(ap[.specialPowerUp] == 12)
        #expect(ap[.swimSpeedUp] == 6)
    }
    
    @Test("Has Special Effect", arguments: zip(
        [Ability.dropRoller, .openingGambit, .comeback],
        [AbilitySpecialEffect.dropRoller, .openingGambit, .comeBack]
    ))
    func hasSpecialEffect(from ability: Ability, to effect: AbilitySpecialEffect) {
        var gearPiece = GearPiece(for: ability.restriction)
        gearPiece.main = ability
        
        let spEffect = gearPiece.specialEffect()
        #expect(spEffect == effect)
    }
    
    @Test("Has LDE Special Effect", arguments: [0, 21])
    func hasLDESpecialEffect(_ intensity: Int) {
        var gearPiece = GearPiece(for: .headgearOnly)
        gearPiece.main = .lastDitchEffort
        
        let spEffect = gearPiece.specialEffect(ldeIntensity: intensity)
        #expect(spEffect == .lastDitchEffort(intensity))
    }
    
    @Test("Has No Special Effect", arguments: [
        Ability.abilityDoubler, .haunt, .ninjaSquid, .respawnPunisher, .thermalInk, .objectShredder, .stealthJump, .inkRecoveryUp, .inkResistanceUp, .inkSaverMain, .inkSaverSub, .intensifyAction, .runSpeedUp, .subResistanceUp, .subPowerUp, .swimSpeedUp, .specialSaver, .specialChargeUp, .specialPowerUp, .quickRespawn, .quickSuperJump, .none
    ])
    func hasNoSpecialEffect(_ ablity: Ability) {
        var gearPiece = GearPiece(for: .none)
        gearPiece.main = ablity
        
        #expect(gearPiece.specialEffect() == nil)
    }
    
    @Test("Has Ability", arguments: [
        Ability.swimSpeedUp, .inkSaverMain, .runSpeedUp, .specialSaver
    ])
    func hasAbility(_ ability: Ability) {
        let gearPiece = GearPiece(main: .swimSpeedUp, sub1: .inkSaverMain, sub2: .runSpeedUp, sub3: .specialSaver, for: .shoesOnly)

        #expect(gearPiece.hasAbility(ability))
    }
    
    @Test("Not Have Ability", arguments: [
        Ability.comeback, .subPowerUp, .specialChargeUp, .inkRecoveryUp
    ])
    func notHaveAbility(_ ability: Ability) {
        let gearPiece = GearPiece(main: .swimSpeedUp, sub1: .inkSaverMain, sub2: .runSpeedUp, sub3: .specialSaver, for: .shoesOnly)

        #expect(!gearPiece.hasAbility(ability))
    }
}
