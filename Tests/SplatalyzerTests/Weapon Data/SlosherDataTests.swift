//
//  SlosherDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.weaponData))
struct SlosherDataTests {

    @Test("Bloblobber Data", arguments: [
        WeaponKit(.bloblobber, .sprinkler, .inkStorm),
        WeaponKit(.bloblobberDeco, .angleShooter, .krakenRoyale)
    ])
    func bloblobber(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueDirect != nil)
        #expect(data.damageSecondaryValueDirectMax != nil)
        #expect(data.damageSecondaryValueDirectMin != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsumeSlosher != nil)
    }
    
    @Test("Dread Wringer Data", arguments: [
        WeaponKit(.dreadWringer, .suctionBomb, .reefslider),
        WeaponKit(.dreadWringerD, .squidBeakon, .waveBreaker)
    ])
    func dreadWringer(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueDirectMax != nil)
        #expect(data.damageValueDirectMin != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsumeSlosher != nil)
    }
    
    @Test("Explosher Data", arguments: [
        WeaponKit(.explosher, .pointSensor, .inkStorm),
        WeaponKit(.customExplosher, .splashWall, .tripleSplashdown)
    ])
    func explosher(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .slow)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueDirect != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsumeSlosher != nil)
    }
    
    @Test("Slosher Data", arguments: [
        WeaponKit(.slosher, .splatBomb, .tripleInkstrike),
        WeaponKit(.slosherDeco, .angleShooter, .zipcaster),
        WeaponKit(.orderSlosherReplica, .splatBomb, .tripleInkstrike)
    ])
    func slosher(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueDirectMax != nil)
        #expect(data.damageValueDirectMin != nil)
        #expect(data.damageSecondaryValueDirectMax != nil)
        #expect(data.damageSecondaryValueDirectMin != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsumeSlosher != nil)
    }
    
    @Test("Sloshing Machine Data", arguments: [
        WeaponKit(.sloshingMachine, .fizzyBomb, .booyahBomb),
        WeaponKit(.sloshingMachineNeo, .pointSensor, .trizooka)
    ])
    func sloshingMachine(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueDirectMax != nil)
        #expect(data.damageValueDirectMin != nil)
        #expect(data.damageSecondaryValueDirectMax != nil)
        #expect(data.damageSecondaryValueDirectMin != nil)
        #expect(data.blastSplashDamage != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsumeSlosher != nil)
    }
    
    @Test("Tri-Slosher Data", arguments: [
        WeaponKit(.triSlosher, .toxicMist, .inkjet),
        WeaponKit(.triSlosherNouveau, .fizzyBomb, .tacticooler)
    ])
    func triSlosher(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .fast)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueDirectMax != nil)
        #expect(data.damageValueDirectMin != nil)
        #expect(data.damageSecondaryValueDirectMax != nil)
        #expect(data.damageSecondaryValueDirectMin != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsumeSlosher != nil)
    }
}
