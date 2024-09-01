//
//  StringerDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

struct StringerDataTests {
    
    let service = JSONService()
    
    let mainInfo = try! JSONService().decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    
    
    @Test("REEF-LUX 450 Data", arguments: [
        WeaponKit(.reeflux450, .curlingBomb, .tentaMissiles),
        WeaponKit(.reeflux450Deco, .splashWall, .reefslider)
    ])
    func reeflux450(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Stringer.self, from: kit.main.fileName)
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .fast)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueMin != nil)
        #expect(data.chargeFrameFullCharge != nil)
        #expect(data.keepChargeFullFrame != nil)
        #expect(data.inkConsumeChargeFullCharge != nil)
    }
    
    @Test("Tri-Stringer Data", arguments: [
        WeaponKit(.triStringer, .toxicMist, .killerWail51),
        WeaponKit(.inklineTriStringer, .sprinkler, .superChump),
        WeaponKit(.orderStringerReplica, .toxicMist, .killerWail51)
    ])
    func triStringer(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Stringer.self, from: kit.main.fileName)
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeedFullCharge != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueMin != nil)
        #expect(data.chargeFrameFullCharge != nil)
        #expect(data.keepChargeFullFrame != nil)
        #expect(data.inkConsumeChargeFullCharge != nil)
    }
    
    @Test("Wellspring V Data", arguments: [
        WeaponKit(.wellspringV, .autobomb, .ultraStamp),
        WeaponKit(.customWellspringV, .pointSensor, .waveBreaker)
    ])
    func wellspringV(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Stringer.self, from: kit.main.fileName)
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .slow)
        #expect(data.moveSpeedFullCharge != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueMin != nil)
        #expect(!data.blastDamageDistance.isEmpty)
        #expect(data.chargeFrameFullCharge != nil)
        #expect(data.keepChargeFullFrame != nil)
        #expect(data.inkConsumeChargeFullCharge != nil)
    }
}
