//
//  SplatanaDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.weaponData))
struct SplatanaDataTests {
    
    let service = JSONService()
    
    @Test("Decavitator Data", arguments: [
        WeaponKit(.mintDecavitator, .suctionBomb, .bigBubbler),
        WeaponKit(.charcoalDecavitator, .splashWall, .inkjet)
    ])
    func decavitator(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)
        
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
        WeaponKit(.stickerzSplatanaStamper, .autobomb, .booyahBomb),
        WeaponKit(.orderSplatanaReplica, .burstBomb, .zipcaster)
    ])
    func splatanaStamper(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)
        
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
        WeaponKit(.splatanaWiperDeco, .squidBeakon, .tentaMissiles),
        WeaponKit(.splatanaWiperRUST, .curlingBomb, .trizooka)
    ])
    func splatanaWiper(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)
        
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
