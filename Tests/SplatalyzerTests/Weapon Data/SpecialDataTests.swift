//
//  SpecialDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

struct SpecialDataTests {
    let service = JSONService()
    
    
    @Test("Big Bubbler Data")
    func bigBubbler() throws {
        let gameParams = try service.decode(BigBubbler.self, from: SpecialWeapon.bigBubbler.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SpecialOverwrites)

        #expect(data.id == .bigBubbler)
        #expect(overwrites.maxFieldHp != nil)
        #expect(overwrites.maxHp != nil)
    }
    
    @Test("Booyah Bomb Data")
    func booyahBomb() throws {
        let gameParams = try service.decode(BooyahBomb.self, from: SpecialWeapon.booyahBomb.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SpecialOverwrites)

        #expect(data.id == .booyahBomb)
        #expect(data.tickDamage != nil)
        #expect(overwrites.chargeRateAutoPerFrame != nil)
    }
    
    @Test("Crab Tank Data")
    func crabTank() throws {
        let gameParams = try service.decode(CrabTank.self, from: SpecialWeapon.crabTank.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SpecialOverwrites)

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
        let gameParams = try service.decode(Inkjet.self, from: SpecialWeapon.inkjet.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SpecialOverwrites)

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
        let gameParams = try service.decode(InkStorm.self, from: SpecialWeapon.inkStorm.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SpecialOverwrites)

        #expect(data.id == .inkStorm)
        #expect(data.tickDamage != nil)
        #expect(overwrites.spawnSpeedZSpecUp != nil)
        #expect(overwrites.specialDurationFrame != nil)
    }
    
    @Test("Ink Vac Data")
    func inkVac() throws {
        let gameParams = try service.decode(InkVac.self, from: SpecialWeapon.inkVac.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SpecialOverwrites)

        #expect(data.id == .inkVac)
        #expect(data.exhaleBlastParamMaxCharge != nil)
        #expect(data.exhaleBlastParamMinCharge != nil)
        #expect(overwrites.radiusMax != nil)
        #expect(overwrites.radiusMin != nil)
    }
    
    @Test("Killer Wail 5.1 Data")
    func killerWail51() throws {
        let gameParams = try service.decode(KillerWail51.self, from: SpecialWeapon.killerWail51.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SpecialOverwrites)

        #expect(data.id == .killerWail51)
        #expect(data.tickDamage != nil)
        #expect(overwrites.specialDurationFrame != nil)
    }
    
    @Test("Kraken Royale Data")
    func krakenRoyale() throws {
        let gameParams = try service.decode(KrakenRoyale.self, from: SpecialWeapon.krakenRoyale.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SpecialOverwrites)

        #expect(data.id == .krakenRoyale)
        #expect(data.directDamage != nil)
        #expect(data.jumpDamage != nil)
        #expect(overwrites.specialDurationFrame != nil)
    }
    
    @Test("Reefslider Data")
    func reefslider() throws {
        let gameParams = try service.decode(Reefslider.self, from: SpecialWeapon.reefslider.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SpecialOverwrites)

        #expect(data.id == .reefslider)
        #expect(!data.distanceDamage.isEmpty)
        #expect(overwrites.distanceDamageDistanceRate != nil)
        #expect(overwrites.paintRadius != nil)
        #expect(overwrites.splashAroundVelocityMax != nil)
        #expect(overwrites.splashAroundVelocityMin != nil)
    }
    
    @Test("Splattercolor Screen Data")
    func splattercolorScreen() throws {
        let gameParams = try service.decode(SplattercolorScreen.self, from: SpecialWeapon.splattercolorScreen.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SpecialOverwrites)

        #expect(data.id == .splattercolorScreen)
        #expect(overwrites.moveSpeed != nil)
        #expect(overwrites.spawnSpeedZSpecUp != nil)
    }
    
    @Test("Super Chump Data")
    func superChump() throws {
        let gameParams = try service.decode(SuperChump.self, from: SpecialWeapon.superChump.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SpecialOverwrites)

        #expect(data.id == .superChump)
        #expect(!data.distanceDamage.isEmpty)
        #expect(overwrites.crossPaintCheckLength != nil)
        #expect(overwrites.crossPaintRadius != nil)
        #expect(overwrites.distanceDamageDistanceRate != nil)
    }
    
    @Test("Tacticooler Data")
    func tacticooler() throws {
        let gameParams = try service.decode(Tacticooler.self, from: SpecialWeapon.tacticooler.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SpecialOverwrites)

        #expect(data.id == .tacticooler)
        #expect(overwrites.powerUpFrame != nil)
    }
    
    @Test("Tenta Missiles Data")
    func tentaMissiles() throws {
        let gameParams = try service.decode(TentaMissiles.self, from: SpecialWeapon.tentaMissiles.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SpecialOverwrites)

        #expect(data.id == .tentaMissiles)
        #expect(!data.distanceDamage.isEmpty)
        #expect(overwrites.targetInCircleRadius != nil)
    }
    
    @Test("Triple Inkstrike Data")
    func tripleInkstrike() throws {
        let gameParams = try service.decode(TripleInkstrike.self, from: SpecialWeapon.tripleInkstrike.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SpecialOverwrites)

        #expect(data.id == .tripleInkstrike)
        #expect(overwrites.spawnSpeedZSpecUp != nil)
    }
    
    @Test("Triple Splashdown Data")
    func tripleSplashdown() throws {
        let gameParams = try service.decode(TripleSplashdown.self, from: SpecialWeapon.tripleSplashdown.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SpecialOverwrites)
        
        #expect(data.id == .tripleSplashdown)
        #expect(!data.distanceDamage.isEmpty)
        #expect(overwrites.distanceDamageDistanceRate != nil)
        #expect(overwrites.paintRadius != nil)
    }
    
    @Test("Trizooka Data")
    func trizooka() throws {
        let gameParams = try service.decode(Trizooka.self, from: SpecialWeapon.trizooka.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SpecialOverwrites)
        
        #expect(data.id == .trizooka)
        #expect(data.directDamage != nil)
        #expect(!data.distanceDamage.isEmpty)
        #expect(overwrites.distanceDamageDistanceRate != nil)
        #expect(overwrites.paintRadius != nil)
        #expect(overwrites.specialDurationFrame != nil)
    }
    
    @Test("Ultra Stamp Data")
    func ultraStamp() throws {
        let gameParams = try service.decode(UltraStamp.self, from: SpecialWeapon.ultraStamp.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        _ = try #require(data.overwrites as? SpecialOverwrites)
        
        #expect(data.id == .ultraStamp)
        #expect(!data.swingDamage.isEmpty)
        #expect(!data.throwDamage.isEmpty)
    }
    
    @Test("Wave Breaker Data")
    func waveBreaker() throws {
        let gameParams = try service.decode(WaveBreaker.self, from: SpecialWeapon.waveBreaker.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SpecialOverwrites)
        
        #expect(data.id == .waveBreaker)
        #expect(data.directDamage != nil)
        #expect(data.waveDamage != nil)
        #expect(overwrites.maxFrame != nil)
        #expect(overwrites.maxRadius != nil)
    }
    
    @Test("Zipcaster Data")
    func zipcaster() throws {
        let gameParams = try service.decode(Zipcaster.self, from: SpecialWeapon.zipcaster.fileName)
        
        let data = SpecialWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SpecialOverwrites)
        
        #expect(data.id == .zipcaster)
        #expect(!data.distanceDamage.isEmpty)
        #expect(overwrites.inkConsumeHook != nil)
        #expect(overwrites.inkConsumePerSec != nil)
    }
}
