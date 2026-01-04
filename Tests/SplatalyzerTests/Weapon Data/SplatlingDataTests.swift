//
//  SplatlingDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.weaponData))
struct SplatlingDataTests {
    
    let service = JSONService()
        
    @Test("Ballpoint Splatling Data", arguments: [
        WeaponKit(.ballpointSplatling, .fizzyBomb, .inkjet),
        WeaponKit(.ballpointSplatlingNouveau, .inkMine, .inkVac)
    ])
    func ballpointSplatling(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)
        
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
        let data = try MainWeaponData(for: kit.main)

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
        let data = try MainWeaponData(for: kit.main)

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
        WeaponKit(.customHydraSplatling, .inkMine, .splattercolorScreen),
        WeaponKit(.torrentzHydraSplattling, .sprinkler, .bigBubbler)
    ])
    func hydraSplatling(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

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
        WeaponKit(.zinkMiniSplatling, .toxicMist, .bigBubbler),
        WeaponKit(.miniSplatlingRTLR, .squidBeakon, .trizooka)
    ])
    func miniSplatling(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

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
        let data = try MainWeaponData(for: kit.main)

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
