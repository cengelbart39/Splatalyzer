//
//  BrellaDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.weaponData))
struct BrellaDataTests {
    
    @Test("Recycled Brella 24 Data", arguments: [
        WeaponKit(.recycledBrella24MkI, .angleShooter, .bigBubbler),
        WeaponKit(.recycledBrella24MkII, .toxicMist, .tripleSplashdown)
    ])
    func recycledBrella24(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)
        
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
    
    @Test("Splat Brella Data", arguments: [
        WeaponKit(.splatBrella, .sprinkler, .tripleInkstrike),
        WeaponKit(.sorellaBrella, .autobomb, .inkjet),
        WeaponKit(.orderBrellaReplica, .sprinkler, .tripleInkstrike)
    ])
    func splatBrella(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.damageValueMax != nil)
        #expect(data.inkConsumeUmbrellaShelterCanopy != nil)
        #expect(data.inkConsumeWeaponShelterShotgun != nil)
    }
    
    @Test("Tenta Brella Data", arguments: [
        WeaponKit(.tentaBrella, .squidBeakon, .inkVac),
        WeaponKit(.tentaSorellaBrella, .inkMine, .trizooka),
        WeaponKit(.tentaBrellaCREM, .toxicMist, .superChump)
    ])
    func tentaBrella(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .slow)
        #expect(data.damageValueMax != nil)
        #expect(data.canopyHP != nil)
        #expect(data.inkConsumeUmbrellaShelterCanopy != nil)
        #expect(data.inkConsumeWeaponShelterShotgun != nil)
    }
    
    @Test("Undercover Brella Data", arguments: [
        WeaponKit(.undercoverBrella, .inkMine, .reefslider),
        WeaponKit(.undercoverSorellaBrella, .torpedo, .splattercolorScreen),
        WeaponKit(.patternzUndercoverBrella, .curlingBomb, .killerWail51)
    ])
    func undercoverBrella(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .fast)
        #expect(data.damageValueMax != nil)
        #expect(data.canopyHP != nil)
        #expect(data.inkConsumeWeaponShelterShotgun != nil)
    }
}
