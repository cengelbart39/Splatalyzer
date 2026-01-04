//
//  BlasterDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.weaponData))
struct BlasterDataTests {
    
    @Test("Blaster Data", arguments: [
        WeaponKit(.blaster, .autobomb, .bigBubbler),
        WeaponKit(.customBlaster, .pointSensor, .tripleSplashdown),
        WeaponKit(.gleamzBlaster, .squidBeakon, .crabTank)
    ])
    func blaster(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueDirect != nil)
        #expect(data.blastDamageDistance.count == 2)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
    
    @Test("Clash Blaster Data", arguments: [
        WeaponKit(.clashBlaster, .splatBomb, .trizooka),
        WeaponKit(.clashBlasterNeo, .curlingBomb, .superChump)
    ])
    func clashBlaster(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .fast)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueDirect != nil)
        #expect(data.blastDamageDistance.count == 2)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
    
    @Test("Luna Blaster Data", arguments: [
        WeaponKit(.lunaBlaster, .splatBomb, .zipcaster),
        WeaponKit(.lunaBlasterNeo, .fizzyBomb, .ultraStamp),
        WeaponKit(.orderBlasterReplica, .splatBomb, .zipcaster)
    ])
    func lunaBlaster(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .fast)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueDirect != nil)
        #expect(data.blastDamageDistance.count == 2)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
    
    @Test("Range Blaster Data", arguments: [
        WeaponKit(.rangeBlaster, .suctionBomb, .waveBreaker),
        WeaponKit(.customRangeBlaster, .splatBomb, .krakenRoyale)
    ])
    func rangeBlaster(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueDirect != nil)
        #expect(data.blastDamageDistance.count == 2)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
    
    @Test("Rapid Blaster Data", arguments: [
        WeaponKit(.rapidBlaster, .inkMine, .tripleInkstrike),
        WeaponKit(.rapidBlasterDeco, .torpedo, .inkjet)
    ])
    func rapidBlaster(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueDirect != nil)
        #expect(data.blastDamageDistance.count == 2)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
    
    @Test("Rapid Blaster Pro Data", arguments: [
        WeaponKit(.rapidBlasterPro, .toxicMist, .inkVac),
        WeaponKit(.rapidBlasterProDeco, .angleShooter, .killerWail51),
        WeaponKit(.rapidBlasterProWNTR, .suctionBomb, .tacticooler)
    ])
    func rapidBlasterPro(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueDirect != nil)
        #expect(data.blastDamageDistance.count == 2)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
    
    @Test("S-BLAST Data", arguments: [
        WeaponKit(.sblast92, .sprinkler, .reefslider),
        WeaponKit(.sblast91, .burstBomb, .booyahBomb)
    ])
    func sblast(_ kit: WeaponKit) throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .mid)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueDirect != nil)
        #expect(data.blastDamageDistance.count == 2)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
}
