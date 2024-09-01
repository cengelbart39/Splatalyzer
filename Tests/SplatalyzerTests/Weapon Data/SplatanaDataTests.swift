//
//  SplatanaDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

struct SplatanaDataTests {
    
    let service = JSONService()
    
    let mainInfo = try! JSONService().decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    
    @Test("Decavitator Data", arguments: [
        WeaponKit(.mintDecavitator, .suctionBomb, .bigBubbler),
        WeaponKit(.charcoalDecavitator, .splashWall, .inkjet)
    ])
    func decavitator(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Splatana.self, from: kit.main.fileName)
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .mid)
        #expect(data.damageSplatanaVertical != nil)
        #expect(data.damageSplatanaVerticalDirect != nil)
        #expect(data.damageSplatanaHorizontal != nil)
        #expect(data.damageSplatanaHorizontalDirect != nil)
        #expect(data.inkConsumeSwing != nil)
        #expect(data.inkConsumeChargeFullCharge != nil)
    }
    
    @Test("Splatana Stamper Data", arguments: [
        WeaponKit(.splatanaStamper, .burstBomb, .zipcaster),
        WeaponKit(.splatanaStamperNouveau, .toxicMist, .crabTank),
        WeaponKit(.orderSplatanaReplica, .burstBomb, .zipcaster)
    ])
    func splatanaStamper(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Splatana.self, from: kit.main.fileName)
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.damageSplatanaVertical != nil)
        #expect(data.damageSplatanaVerticalDirect != nil)
        #expect(data.damageSplatanaHorizontal != nil)
        #expect(data.damageSplatanaHorizontalDirect != nil)
        #expect(data.inkConsumeSwing != nil)
        #expect(data.inkConsumeChargeFullCharge != nil)
    }
    
    @Test("Splatana Wiper Data", arguments: [
        WeaponKit(.splatanaWiper, .torpedo, .ultraStamp),
        WeaponKit(.splatanaWiperDeco, .squidBeakon, .tentaMissiles)
    ])
    func splatanaWiper(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Splatana.self, from: kit.main.fileName)
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .fast)
        #expect(data.damageSplatanaVertical != nil)
        #expect(data.damageSplatanaVerticalDirect != nil)
        #expect(data.damageSplatanaHorizontal != nil)
        #expect(data.damageSplatanaHorizontalDirect != nil)
        #expect(data.inkConsumeSwing != nil)
        #expect(data.inkConsumeChargeFullCharge != nil)
    }
}
