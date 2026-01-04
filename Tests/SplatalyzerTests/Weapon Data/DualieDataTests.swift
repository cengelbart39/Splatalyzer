//
//  DualieDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.weaponData))
struct DualieDataTests {

    @Test("Dapple Dualies Data", arguments: [
        WeaponKit(.dappleDualies, .squidBeakon, .tacticooler),
        WeaponKit(.dappleDualiesNouveau, .torpedo, .reefslider),
        WeaponKit(.dappleDualiesNOCT, .splatBomb, .killerWail51)
    ])
    func dappleDualies(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .fast)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueMin != nil)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkConsume != nil)
        #expect(data.inkConsumeSideStep != nil)
    }
    
    @Test("Douser Dualies FF Data", arguments: [
        WeaponKit(.douserDualiesFF, .inkMine, .killerWail51),
        WeaponKit(.customDouserDualiesFF, .burstBomb, .tripleInkstrike)
    ])
    func douserDualiesFF(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueMin != nil)
        #expect(data.damageLapOverValueMax != nil)
        #expect(data.damageLapOverValueMin != nil)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkConsume != nil)
        #expect(data.inkConsumeSideStep != nil)
    }
    
    @Test("Dualie Squelchers Data", arguments: [
        WeaponKit(.dualieSquelchers, .splatBomb, .waveBreaker),
        WeaponKit(.customDualieSquelchers, .squidBeakon, .superChump),
        WeaponKit(.hoofzDualieSquelchers, .pointSensor, .splattercolorScreen)
    ])
    func dualieSquelchers(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkConsume != nil)
        #expect(data.inkConsumeSideStep != nil)
    }
    
    @Test("Glooga Dualies Data", arguments: [
        WeaponKit(.gloogaDualies, .splashWall, .booyahBomb),
        WeaponKit(.gloogaDualiesDeco, .pointSensor, .trizooka)
    ])
    func gloogaDualies(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueMin != nil)
        #expect(data.damageLapOverValueMax != nil)
        #expect(data.damageLapOverValueMin != nil)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkConsume != nil)
        #expect(data.inkConsumeSideStep != nil)
    }
    
    @Test("Splat Dualies Data", arguments: [
        WeaponKit(.splatDualies, .suctionBomb, .crabTank),
        WeaponKit(.enperrySplatDualies, .curlingBomb, .tripleSplashdown),
        WeaponKit(.twinklezSplatDualies, .fizzyBomb, .bigBubbler),
        WeaponKit(.orderDualiesReplica, .suctionBomb, .crabTank)
    ])
    func splatDualies(_ kit: WeaponKit) throws {
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
        #expect(data.inkConsume != nil)
        #expect(data.inkConsumeSideStep != nil)
    }
    
    @Test("Tetra Dualies Data", arguments: [
        WeaponKit(.darkTetraDualies, .autobomb, .reefslider),
        WeaponKit(.lightTetraDualies, .sprinkler, .zipcaster)
    ])
    func tetraDualies(_ kit: WeaponKit) throws {
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
        #expect(data.inkConsume != nil)
        #expect(data.inkConsumeSideStep != nil)
    }
}
