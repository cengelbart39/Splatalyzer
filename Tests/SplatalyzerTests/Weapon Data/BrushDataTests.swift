//
//  BrushDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

struct BrushDataTests {
    
    let service = JSONService()
    
    var weaponInfo: WeaponInfoMain
    
    init() throws {
        self.weaponInfo = try service.decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    }
    @Test("Inkbrush Data", arguments: [
        WeaponKit(.inkbrush, .splatBomb, .killerWail51),
        WeaponKit(.inkbrushNouveau, .inkMine, .ultraStamp)
    ])
    func inkbrush(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Brush.self, from: kit.main.fileName)
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .fast)
        #expect(data.bodyDamage != nil)
        #expect(data.swingUnitGroupDamageMin != nil)
        #expect(data.swingUnitGroupDamageMax != nil)
        #expect(data.inkConsumeWeaponSwing != nil)
    }
    
    @Test("Octobrush Data", arguments: [
        WeaponKit(.octobrush, .suctionBomb, .zipcaster),
        WeaponKit(.octobrushNouveau, .squidBeakon, .inkStorm),
        WeaponKit(.orderbrushReplica, .suctionBomb, .zipcaster)
    ])
    func octobrush(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Brush.self, from: kit.main.fileName)
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.bodyDamage != nil)
        #expect(data.swingUnitGroupDamageMin != nil)
        #expect(data.swingUnitGroupDamageMax != nil)
        #expect(data.inkConsumeWeaponSwing != nil)
    }
    
    @Test("Painbrush Data", arguments: [
        WeaponKit(.painbrush, .curlingBomb, .waveBreaker),
        WeaponKit(.painbrushNouveau, .pointSensor, .tentaMissiles)
    ])
    func painbrush(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Brush.self, from: kit.main.fileName)
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .mid)
        #expect(data.bodyDamage != nil)
        #expect(data.swingUnitGroupDamageMin != nil)
        #expect(data.swingUnitGroupDamageMax != nil)
        #expect(data.inkConsumeWeaponSwing != nil)
    }
}
