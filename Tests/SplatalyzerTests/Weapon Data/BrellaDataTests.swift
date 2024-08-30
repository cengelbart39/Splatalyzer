//
//  BrellaDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

struct BrellaDataTests {
    let service = JSONService()
    
    var weaponInfo: WeaponInfoMain
    
    init() throws {
        self.weaponInfo = try service.decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    }
    
    private func makeFileName(with weapon: MainWeapon) -> String {
        return "Weapon\(weapon.fileName()).game__GameParameterTable"
    }
    
    @Test("Recycled Brella 24", arguments: [
        WeaponKit(.recycledBrella24MkI, .angleShooter, .bigBubbler),
        WeaponKit(.recycledBrella24MkII, .toxicMist, .tripleSplashdown)
    ])
    func recycledBrella24(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Brella.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .mid)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.canopyHP != nil)
        #expect(data.inkConsumeUmbrellaShelterCanopy != nil)
        #expect(data.inkConsumeWeaponShelterShotgun != nil)
    }
    
    @Test("Splat Brella", arguments: [
        WeaponKit(.splatBrella, .sprinkler, .tripleInkstrike),
        WeaponKit(.sorellaBrella, .autobomb, .inkjet),
        WeaponKit(.orderBrellaReplica, .sprinkler, .tripleInkstrike)
    ])
    func splatBrella(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Brella.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.damageValueMax != nil)
        #expect(data.inkConsumeUmbrellaShelterCanopy != nil)
        #expect(data.inkConsumeWeaponShelterShotgun != nil)
    }
    
    @Test("Tenta Brella", arguments: [
        WeaponKit(.tentaBrella, .squidBeakon, .inkVac),
        WeaponKit(.tentaSorellaBrella, .inkMine, .trizooka)
    ])
    func tentaBrella(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Brella.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .slow)
        #expect(data.damageValueMax != nil)
        #expect(data.canopyHP != nil)
        #expect(data.inkConsumeUmbrellaShelterCanopy != nil)
        #expect(data.inkConsumeWeaponShelterShotgun != nil)
    }
    
    @Test("Undercover Brella", arguments: [
        WeaponKit(.undercoverBrella, .inkMine, .reefslider),
        WeaponKit(.undercoverSorellaBrella, .torpedo, .splattercolorScreen)
    ])
    func undercoverBrella(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Brella.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .fast)
        #expect(data.damageValueMax != nil)
        #expect(data.canopyHP != nil)
        #expect(data.inkConsumeWeaponShelterShotgun != nil)
    }
}
