//
//  ChargerDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.weaponData))
struct ChargerDataTests {

    @Test("Bamboozler 14 Data", arguments: [
        WeaponKit(.bamboozler14MkI, .autobomb, .killerWail51),
        WeaponKit(.bamboozler14MkII, .fizzyBomb, .superChump)
    ])
    func bamboozler14(_ kit: WeaponKit) async throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .fast)
        #expect(data.moveSpeedFullCharge != nil)
        #expect(data.damageValueFullCharge != nil)
        #expect(data.damageValueMaxCharge != nil)
        #expect(data.damageValueMinCharge != nil)
        #expect(data.inkConsumeFullCharge != nil)
    }
    
    @Test("E-liter 4K Data", arguments: [
        WeaponKit(.eliter4K, .inkMine, .waveBreaker),
        WeaponKit(.customEliter4K, .squidBeakon, .krakenRoyale)
    ])
    func eliter4K(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .slow)
        #expect(data.moveSpeedFullCharge != nil)
        #expect(data.damageValueFullCharge != nil)
        #expect(data.damageValueMaxCharge != nil)
        #expect(data.damageValueMinCharge != nil)
        #expect(data.chargeFrameFullCharge != nil)
        #expect(data.keepChargeFullFrame != nil)
        #expect(data.inkConsumeFullCharge != nil)
        #expect(data.inkConsumeMinCharge != nil)
    }
    
    @Test("E-liter 4K Scope Data", arguments: [
        WeaponKit(.eliter4KScope, .inkMine, .waveBreaker),
        WeaponKit(.customEliter4KScope, .squidBeakon, .krakenRoyale)
    ])
    func eliter4KScope(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .slow)
        #expect(data.moveSpeedFullCharge != nil)
        #expect(data.damageValueFullCharge != nil)
        #expect(data.damageValueMaxCharge != nil)
        #expect(data.damageValueMinCharge != nil)
        #expect(data.chargeFrameFullCharge != nil)
        #expect(data.inkConsumeFullCharge != nil)
        #expect(data.inkConsumeMinCharge != nil)
    }
    
    @Test("Goo Tuber Data", arguments: [
        WeaponKit(.gooTuber, .torpedo, .tentaMissiles),
        WeaponKit(.customGooTuber, .fizzyBomb, .ultraStamp)
    ])
    func gooTuber(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeedFullCharge != nil)
        #expect(data.damageValueFullCharge != nil)
        #expect(data.damageValueMaxCharge != nil)
        #expect(data.damageValueMinCharge != nil)
        #expect(data.chargeFrameFullCharge != nil)
        #expect(data.keepChargeFullFrame != nil)
        #expect(data.inkConsumeFullCharge != nil)
        #expect(data.inkConsumeMinCharge != nil)
    }
    
    @Test("Snipewriter Data", arguments: [
        WeaponKit(.snipewriter5H, .sprinkler, .tacticooler),
        WeaponKit(.snipewriter5B, .splashWall, .inkStorm)
    ])
    func snipewriter(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeedFullCharge != nil)
        #expect(data.damageValueFullCharge != nil)
        #expect(data.damageValueMaxCharge != nil)
        #expect(data.damageValueMinCharge != nil)
        #expect(data.chargeFrameFullCharge != nil)
        #expect(data.inkConsumeFullCharge != nil)
        #expect(data.inkConsumeMinCharge != nil)
    }
    
    @Test("Splat Charger Data", arguments: [
        WeaponKit(.splatCharger, .splatBomb, .inkVac),
        WeaponKit(.zfSplatCharger, .splashWall, .tripleInkstrike),
        WeaponKit(.orderChargerReplica, .splatBomb, .inkVac)
    ])
    func splatCharger(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeedFullCharge != nil)
        #expect(data.damageValueFullCharge != nil)
        #expect(data.damageValueMaxCharge != nil)
        #expect(data.damageValueMinCharge != nil)
        #expect(data.keepChargeFullFrame != nil)
        #expect(data.inkConsumeFullCharge != nil)
        #expect(data.inkConsumeMinCharge != nil)
    }
    
    @Test("Splatterscope Data", arguments: [
        WeaponKit(.splatterscope, .splatBomb, .inkVac),
        WeaponKit(.zfSplatterscope, .splashWall, .tripleInkstrike),
    ])
    func splatterscope(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeedFullCharge != nil)
        #expect(data.damageValueFullCharge != nil)
        #expect(data.damageValueMaxCharge != nil)
        #expect(data.damageValueMinCharge != nil)
        #expect(data.inkConsumeFullCharge != nil)
        #expect(data.inkConsumeMinCharge != nil)
    }
    
    @Test("Squiffer Data", arguments: [
        WeaponKit(.classicSquiffer, .pointSensor, .bigBubbler),
        WeaponKit(.newSquiffer, .autobomb, .zipcaster)
    ])
    func squiffer(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeedFullCharge != nil)
        #expect(data.damageValueFullCharge != nil)
        #expect(data.damageValueMaxCharge != nil)
        #expect(data.damageValueMinCharge != nil)
        #expect(data.chargeFrameFullCharge != nil)
        #expect(data.keepChargeFullFrame != nil)
        #expect(data.inkConsumeFullCharge != nil)
        #expect(data.inkConsumeMinCharge != nil)
    }
}
