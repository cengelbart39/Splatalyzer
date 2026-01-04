//
//  ShooterDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.weaponData))
struct ShooterDataTests {

    @Test(".52 Gal Data", arguments: [
        WeaponKit(.gal52, .splashWall, .killerWail51),
        WeaponKit(.gal52Deco, .curlingBomb, .splattercolorScreen)
    ])
    func gal52(_ kit: WeaponKit) async throws {
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
    }
    
    @Test(".96 Gal Data", arguments: [
        WeaponKit(.gal96, .sprinkler, .inkVac),
        WeaponKit(.gal96Deco, .splashWall, .krakenRoyale),
        WeaponKit(.clawz96Gal, .angleShooter, .tacticooler)
    ])
    func gal96(_ kit: WeaponKit) async throws {
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
    }
    
    @Test("Aerospray Data", arguments: [
        WeaponKit(.aerosprayMG, .fizzyBomb, .reefslider),
        WeaponKit(.aerosprayRG, .sprinkler, .booyahBomb),
        WeaponKit(.colorzAerospray, .burstBomb, .splattercolorScreen)
    ])
    func aerospray(_ kit: WeaponKit) async throws {
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
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
    
    @Test("H-3 Nozzlenose Data", arguments: [
        WeaponKit(.h3Nozzlenose, .pointSensor, .tacticooler),
        WeaponKit(.h3NozzlenoseD, .splashWall, .bigBubbler),
        WeaponKit(.h3NozzlenoseVIPR, .suctionBomb, .tripleInkstrike)
    ])
    func h3Nozzlenose(_ kit: WeaponKit) async throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.tripleShotSpanFrame != nil)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueMin != nil)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
    
    @Test("Jet Squelcher Data", arguments: [
        WeaponKit(.jetSquelcher, .angleShooter, .inkVac),
        WeaponKit(.customJetSquelcher, .toxicMist, .inkStorm),
        WeaponKit(.jetSquelcherCOBR, .burstBomb, .tripleSplashdown)
    ])
    func jetSquelcher(_ kit: WeaponKit) async throws {
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
    }
    
    @Test("L-3 Nozzlenose Data", arguments: [
        WeaponKit(.l3Nozzlenose, .curlingBomb, .crabTank),
        WeaponKit(.l3NozzlenoseD, .burstBomb, .ultraStamp),
        WeaponKit(.glitterzL3Nozzlenose, .splatBomb, .inkjet)
    ])
    func l3Nozzlenose(_ kit: WeaponKit) async throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.tripleShotSpanFrame != nil)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueMin != nil)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
    
    @Test("N-ZAP Data", arguments: [
        WeaponKit(.nzap85, .suctionBomb, .tacticooler),
        WeaponKit(.nzap89, .autobomb, .superChump)
    ])
    func nzap(_ kit: WeaponKit) async throws {
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
    }
    
    @Test("Splash-o-matic Data", arguments: [
        WeaponKit(.splashomatic, .burstBomb, .crabTank),
        WeaponKit(.neoSplashomatic, .suctionBomb, .tripleInkstrike),
        WeaponKit(.splashomaticGCKO, .toxicMist, .inkStorm)
    ])
    func splashomatic(_ kit: WeaponKit) async throws {
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
    }
    
    @Test("Splattershot Data", arguments: [
        WeaponKit(.splattershot, .suctionBomb, .trizooka),
        WeaponKit(.tentatekSplattershot, .splatBomb, .tripleInkstrike),
        WeaponKit(.glamorzSplattershot, .burstBomb, .krakenRoyale),
        WeaponKit(.heroShotReplica, .suctionBomb, .trizooka),
        WeaponKit(.orderShotReplica, .suctionBomb, .trizooka),
        WeaponKit(.octoShotReplica, .splatBomb, .tripleInkstrike)
    ])
    func splattershot(_ kit: WeaponKit) async throws {
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
    }
    
    @Test("Splattershot Jr. Data", arguments: [
        WeaponKit(.splattershotJr, .splatBomb, .bigBubbler),
        WeaponKit(.customSplattershotJr, .torpedo, .waveBreaker)
    ])
    func splattershotJr(_ kit: WeaponKit) async throws {
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
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
    
    @Test("Splattershot Nova Data", arguments: [
        WeaponKit(.splattershotNova, .pointSensor, .killerWail51),
        WeaponKit(.annakiSplattershotNova, .inkMine, .inkjet)
    ])
    func splattershotNova(_ kit: WeaponKit) async throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .mid)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueMin != nil)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkConsume != nil)
    }
    
    @Test("Splattershot Pro Data", arguments: [
        WeaponKit(.splattershotPro, .angleShooter, .crabTank),
        WeaponKit(.forgeSplattershotPro, .suctionBomb, .booyahBomb),
        WeaponKit(.splattershotProFRZN, .splatBomb, .tentaMissiles)
    ])
    func splattershotPro(_ kit: WeaponKit) async throws {
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
    }
    
    @Test("Sploosh-o-matic Data", arguments: [
        WeaponKit(.splooshomatic, .curlingBomb, .ultraStamp),
        WeaponKit(.neoSplooshomatic, .squidBeakon, .killerWail51)
    ])
    func splooshomatic(_ kit: WeaponKit) async throws {
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
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
    
    @Test("Squeezer Data", arguments: [
        WeaponKit(.squeezer, .splashWall, .trizooka),
        WeaponKit(.foilSqueezer, .autobomb, .splattercolorScreen)
    ])
    func squeezer(_ kit: WeaponKit) async throws {
        let data = try MainWeaponData(for: kit.main)

        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueMin != nil)
        #expect(data.variableDamageMax != nil)
        #expect(data.variableDamageMin != nil)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.variableJumpDegSwerve != nil)
        #expect(data.variableStandDegSwerve != nil)
        #expect(data.inkConsume != nil)
    }
}
