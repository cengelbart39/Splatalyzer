//
//  SplatlingDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

struct SplatlingDataTests {
    
    let service = JSONService()
    
    let mainInfo = try! JSONService().decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    
    @Test("Ballpoint Splatling Data", arguments: [
        WeaponKit(.ballpointSplatling, .fizzyBomb, .inkjet),
        WeaponKit(.ballpointSplatlingNouveau, .inkMine, .inkVac)
    ])
    func ballpointSplatling(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Splatling.self, from: kit.main.fileName)
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.moveSpeedCharge != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueMin != nil)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsumeFullChargeSplatling != nil)
    }
    
    @Test("Heavy Edit Splatling Data", arguments: [
        WeaponKit(.heavyEditSplatling, .curlingBomb, .tacticooler),
        WeaponKit(.heavyEditSplatlingNouveau, .splatBomb, .crabTank)
    ])
    func heavyEditSplatling(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Splatling.self, from: kit.main.fileName)
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .mid)
        #expect(data.moveSpeed != nil)
        #expect(data.moveSpeedCharge != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueMin != nil)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsumeFullChargeSplatling != nil)
    }
    
    @Test("Heavy Splatling Data", arguments: [
        WeaponKit(.heavySplatling, .sprinkler, .waveBreaker),
        WeaponKit(.heavySplatlingDeco, .pointSensor, .krakenRoyale),
        WeaponKit(.orderSplatlingReplica, .sprinkler, .waveBreaker)
    ])
    func heavySplatling(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Splatling.self, from: kit.main.fileName)
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueMin != nil)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsumeFullChargeSplatling != nil)
    }
    
    @Test("Hydra Splatling Data", arguments: [
        WeaponKit(.hydraSplatling, .autobomb, .booyahBomb),
        WeaponKit(.customHydraSplatling, .inkMine, .splattercolorScreen)
    ])
    func hydraSplatling(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Splatling.self, from: kit.main.fileName)
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .slow)
        #expect(data.moveSpeed != nil)
        #expect(data.moveSpeedCharge != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueMin != nil)
        #expect(data.damageValueFullChargeMax != nil)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsumeFullChargeSplatling != nil)
    }
    
    @Test("Mini Splatling Data", arguments: [
        WeaponKit(.miniSplatling, .burstBomb, .ultraStamp),
        WeaponKit(.zinkMiniSplatling, .toxicMist, .bigBubbler)
    ])
    func miniSplatling(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Splatling.self, from: kit.main.fileName)
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.moveSpeedCharge != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueMin != nil)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsumeFullChargeSplatling != nil)
    }
    
    @Test("Nautilus Data", arguments: [
        WeaponKit(.nautilus47, .pointSensor, .inkStorm),
        WeaponKit(.nautilus79, .suctionBomb, .tripleSplashdown)
    ])
    func nautilus(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Splatling.self, from: kit.main.fileName)
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.moveSpeedCharge != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueMin != nil)
        #expect(data.keepChargeFullFrame != nil)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsumeFullChargeSplatling != nil)
    }
}
