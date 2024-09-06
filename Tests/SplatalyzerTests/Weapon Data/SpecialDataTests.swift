//
//  SpecialDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.weaponData))
struct SpecialDataTests {

    @Test("Big Bubbler Data")
    func bigBubbler() throws {

        let data = try SpecialWeaponData(for: .bigBubbler)
        let overwrites = data.overwrites

        #expect(data.id == .bigBubbler)
        #expect(overwrites.maxFieldHp != nil)
        #expect(overwrites.maxHp != nil)
    }
    
    @Test("Booyah Bomb Data")
    func booyahBomb() throws {
        let data = try SpecialWeaponData(for: .booyahBomb)
        let overwrites = data.overwrites

        #expect(data.id == .booyahBomb)
        #expect(data.tickDamage != nil)
        #expect(overwrites.chargeRateAutoPerFrame != nil)
    }
    
    @Test("Crab Tank Data")
    func crabTank() throws {
        let data = try SpecialWeaponData(for: .crabTank)
        let overwrites = data.overwrites

        #expect(data.id == .crabTank)
        #expect(data.armorHp != nil)
        #expect(data.bulletDamageMax != nil)
        #expect(data.bulletDamageMin != nil)
        #expect(data.bumpDamage != nil)
        #expect(!data.cannonDamage.isEmpty)
        #expect(overwrites.specialDurationFrame != nil)
    }
    
    @Test("Inkjet Data")
    func inkjet() throws {
        let data = try SpecialWeaponData(for: .inkjet)
        let overwrites = data.overwrites

        #expect(data.id == .inkjet)
        #expect(data.directDamage != nil)
        #expect(!data.distanceDamage.isEmpty)
        #expect(overwrites.distanceDamageDistanceRate != nil)
        #expect(overwrites.paintRadius != nil)
        #expect(overwrites.splashAroundVelocityMax != nil)
        #expect(overwrites.splashAroundVelocityMin != nil)
    }
    
    @Test("Ink Storm Data")
    func inkStorm() throws {
        let data = try SpecialWeaponData(for: .inkStorm)
        let overwrites = data.overwrites

        #expect(data.id == .inkStorm)
        #expect(data.tickDamage != nil)
        #expect(overwrites.spawnSpeedZSpecUp != nil)
        #expect(overwrites.specialDurationFrame != nil)
    }
    
    @Test("Ink Vac Data")
    func inkVac() throws {
        let data = try SpecialWeaponData(for: .inkVac)
        let overwrites = data.overwrites

        #expect(data.id == .inkVac)
        #expect(data.exhaleBlastParamMaxCharge != nil)
        #expect(data.exhaleBlastParamMinCharge != nil)
        #expect(overwrites.radiusMax != nil)
        #expect(overwrites.radiusMin != nil)
    }
    
    @Test("Killer Wail 5.1 Data")
    func killerWail51() throws {
        let data = try SpecialWeaponData(for: .killerWail51)
        let overwrites = data.overwrites

        #expect(data.id == .killerWail51)
        #expect(data.tickDamage != nil)
        #expect(overwrites.specialDurationFrame != nil)
    }
    
    @Test("Kraken Royale Data")
    func krakenRoyale() throws {
        let data = try SpecialWeaponData(for: .krakenRoyale)
        let overwrites = data.overwrites

        #expect(data.id == .krakenRoyale)
        #expect(data.directDamage != nil)
        #expect(data.jumpDamage != nil)
        #expect(overwrites.specialDurationFrame != nil)
    }
    
    @Test("Reefslider Data")
    func reefslider() throws {
        let data = try SpecialWeaponData(for: .reefslider)
        let overwrites = data.overwrites

        #expect(data.id == .reefslider)
        #expect(!data.distanceDamage.isEmpty)
        #expect(overwrites.distanceDamageDistanceRate != nil)
        #expect(overwrites.paintRadius != nil)
        #expect(overwrites.splashAroundVelocityMax != nil)
        #expect(overwrites.splashAroundVelocityMin != nil)
    }
    
    @Test("Splattercolor Screen Data")
    func splattercolorScreen() throws {
        let data = try SpecialWeaponData(for: .splattercolorScreen)
        let overwrites = data.overwrites

        #expect(data.id == .splattercolorScreen)
        #expect(overwrites.moveSpeed != nil)
        #expect(overwrites.spawnSpeedZSpecUp != nil)
    }
    
    @Test("Super Chump Data")
    func superChump() throws {
        let data = try SpecialWeaponData(for: .superChump)
        let overwrites = data.overwrites

        #expect(data.id == .superChump)
        #expect(!data.distanceDamage.isEmpty)
        #expect(overwrites.crossPaintCheckLength != nil)
        #expect(overwrites.crossPaintRadius != nil)
        #expect(overwrites.distanceDamageDistanceRate != nil)
    }
    
    @Test("Tacticooler Data")
    func tacticooler() throws {
        let data = try SpecialWeaponData(for: .tacticooler)
        let overwrites = data.overwrites

        #expect(data.id == .tacticooler)
        #expect(overwrites.powerUpFrame != nil)
    }
    
    @Test("Tenta Missiles Data")
    func tentaMissiles() throws {
        let data = try SpecialWeaponData(for: .tentaMissiles)
        let overwrites = data.overwrites

        #expect(data.id == .tentaMissiles)
        #expect(!data.distanceDamage.isEmpty)
        #expect(overwrites.targetInCircleRadius != nil)
    }
    
    @Test("Triple Inkstrike Data")
    func tripleInkstrike() throws {
        let data = try SpecialWeaponData(for: .tripleInkstrike)
        let overwrites = data.overwrites

        #expect(data.id == .tripleInkstrike)
        #expect(overwrites.spawnSpeedZSpecUp != nil)
    }
    
    @Test("Triple Splashdown Data")
    func tripleSplashdown() throws {
        let data = try SpecialWeaponData(for: .tripleSplashdown)
        let overwrites = data.overwrites

        #expect(data.id == .tripleSplashdown)
        #expect(!data.distanceDamage.isEmpty)
        #expect(overwrites.distanceDamageDistanceRate != nil)
        #expect(overwrites.paintRadius != nil)
    }
    
    @Test("Trizooka Data")
    func trizooka() throws {
        let data = try SpecialWeaponData(for: .trizooka)
        let overwrites = data.overwrites

        #expect(data.id == .trizooka)
        #expect(data.directDamage != nil)
        #expect(!data.distanceDamage.isEmpty)
        #expect(overwrites.distanceDamageDistanceRate != nil)
        #expect(overwrites.paintRadius != nil)
        #expect(overwrites.specialDurationFrame != nil)
    }
    
    @Test("Ultra Stamp Data")
    func ultraStamp() throws {
        let data = try SpecialWeaponData(for: .ultraStamp)

        #expect(data.id == .ultraStamp)
        #expect(!data.swingDamage.isEmpty)
        #expect(!data.throwDamage.isEmpty)
    }
    
    @Test("Wave Breaker Data")
    func waveBreaker() throws {
        let data = try SpecialWeaponData(for: .waveBreaker)
        let overwrites = data.overwrites

        #expect(data.id == .waveBreaker)
        #expect(data.directDamage != nil)
        #expect(data.waveDamage != nil)
        #expect(overwrites.maxFrame != nil)
        #expect(overwrites.maxRadius != nil)
    }
    
    @Test("Zipcaster Data")
    func zipcaster() throws {
        let data = try SpecialWeaponData(for: .zipcaster)
        let overwrites = data.overwrites

        #expect(data.id == .zipcaster)
        #expect(!data.distanceDamage.isEmpty)
        #expect(overwrites.inkConsumeHook != nil)
        #expect(overwrites.inkConsumePerSec != nil)
    }
}
