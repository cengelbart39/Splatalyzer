//
//  ChargerDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

struct ChargerDataTests {
    let service = JSONService()
    
    var weaponInfo: WeaponInfoMain
    
    init() throws {
        self.weaponInfo = try service.decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    }
    
    private func makeFileName(with weapon: MainWeapon) -> String {
        return "Weapon\(weapon.fileName()).game__GameParameterTable"
    }
    
    @Test("Bamboozler 14", arguments: [
        WeaponKit(.bamboozler14MkI, .autobomb, .killerWail51),
        WeaponKit(.bamboozler14MkII, .fizzyBomb, .superChump)
    ])
    func bamboozler14(_ kit: WeaponKit) async throws {
        let gameParams = try service.decode(Charger.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
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
    
    @Test("E-liter 4K", arguments: [
        WeaponKit(.eliter4K, .inkMine, .waveBreaker),
        WeaponKit(.customEliter4K, .squidBeakon, .krakenRoyale)
    ])
    func eliter4K(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Charger.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
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
    
    @Test("E-liter 4K Scope", arguments: [
        WeaponKit(.eliter4KScope, .inkMine, .waveBreaker),
        WeaponKit(.customEliter4KScope, .squidBeakon, .krakenRoyale)
    ])
    func eliter4KScope(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Charger.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
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
    
    @Test("Goo Tuber", arguments: [
        WeaponKit(.gooTuber, .torpedo, .tentaMissiles),
        WeaponKit(.customGooTuber, .fizzyBomb, .ultraStamp)
    ])
    func gooTuber(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Charger.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
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
    
    @Test("Snipewriter", arguments: [
        WeaponKit(.snipewriter5H, .sprinkler, .tacticooler),
        WeaponKit(.snipewriter5B, .splashWall, .inkStorm)
    ])
    func snipewriter(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Charger.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
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
    
    @Test("Splat Charger", arguments: [
        WeaponKit(.splatCharger, .splatBomb, .inkVac),
        WeaponKit(.zfSplatCharger, .splashWall, .tripleInkstrike),
        WeaponKit(.orderChargerReplica, .splatBomb, .inkVac)
    ])
    func splatCharger(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Charger.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
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
    
    @Test("Splatterscope", arguments: [
        WeaponKit(.splatterscope, .splatBomb, .inkVac),
        WeaponKit(.zfSplatterscope, .splashWall, .tripleInkstrike),
    ])
    func splatterscope(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Charger.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
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
    
    @Test("Squiffer", arguments: [
        WeaponKit(.classicSquiffer, .pointSensor, .bigBubbler),
        WeaponKit(.newSquiffer, .autobomb, .zipcaster)
    ])
    func squiffer(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Charger.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
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
