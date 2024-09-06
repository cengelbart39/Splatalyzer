//
//  SubDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.weaponData))
struct SubDataTests {

    @Test("Angle Shooter Data")
    func angleShooterData() throws {
        let data = try SubWeaponData(for: .angleShooter)
        let overwrites = data.overwrites
        
        #expect(data.id == .angleShooter)
        #expect(data.directDamage != nil)
        #expect(overwrites.markingFrameSubSpec != nil)
    }
    
    @Test("Autobomb Data")
    func autobombData() throws {
        let data = try SubWeaponData(for: .autobomb)
        
        #expect(data.id == .autobomb)
        #expect(!data.distanceDamage.isEmpty)
    }
    
    @Test("Burst Bomb Data")
    func burstBombData() throws {
        let data = try SubWeaponData(for: .burstBomb)
        
        #expect(data.id == .burstBomb)
        #expect(!data.distanceDamage.isEmpty)
    }
    
    @Test("Curling Bomb Data")
    func curlingBombData() throws {
        let data = try SubWeaponData(for: .curlingBomb)
        
        #expect(data.id == .curlingBomb)
        #expect(!data.distanceDamage.isEmpty)
        #expect(data.directDamage != nil)
    }
    
    @Test("Fizzy Bomb Data")
    func fizzyBombData() throws {
        let data = try SubWeaponData(for: .fizzyBomb)
        
        #expect(data.id == .fizzyBomb)
        #expect(!data.blastParam.isEmpty)
    }
    
    @Test("Ink Mine Data")
    func inkMineData() throws {
        let data = try SubWeaponData(for: .inkMine)
        let overwrites = data.overwrites

        #expect(data.id == .inkMine)
        #expect(!data.distanceDamage.isEmpty)
        #expect(overwrites.markingFrameSubSpec != nil)
        #expect(overwrites.sensorRadius != nil)
        #expect(overwrites.explosionRadius != nil)
    }
    
    @Test("Point Sensor Data")
    func pointSensorData() throws {
        let data = try SubWeaponData(for: .pointSensor)
        let overwrites = data.overwrites

        #expect(data.id == .pointSensor)
        #expect(overwrites.markingFrameSubSpec != nil)
        #expect(overwrites.explosionRadius != nil)
    }
    
    @Test("Splash Wall Data")
    func splashWallData() throws {
        let data = try SubWeaponData(for: .splashWall)
        let overwrites = data.overwrites

        #expect(data.id == .splashWall)
        #expect(overwrites.maxHp != nil)
    }
    
    @Test("Splat Bomb Data")
    func splatBombData() throws {
        let data = try SubWeaponData(for: .splatBomb)
        
        #expect(data.id == .splatBomb)
        #expect(!data.distanceDamage.isEmpty)
    }
    
    @Test("Sprinkler Data")
    func sprinklerData() throws {
        let data = try SubWeaponData(for: .sprinkler)
        let overwrites = data.overwrites

        #expect(data.id == .sprinkler)
        #expect(overwrites.periodFirst != nil)
        #expect(overwrites.periodSecond != nil)
    }
    
    @Test("Squid Beakon Data")
    func squidBeakonData() throws {
        let data = try SubWeaponData(for: .squidBeakon)
        let overwrites = data.overwrites

        #expect(data.id == .squidBeakon)
        #expect(overwrites.subSpecUpParam != nil)
    }
    
    @Test("Suction Bomb Data")
    func suctionBombData() throws {
        let data = try SubWeaponData(for: .suctionBomb)
        
        #expect(data.id == .suctionBomb)
        #expect(!data.distanceDamage.isEmpty)
    }
    
    @Test("Torpedo Data")
    func torpedoData() throws {
        let data = try SubWeaponData(for: .torpedo)
        
        #expect(data.id == .torpedo)
        #expect(!data.blastParamChase.isEmpty)
        #expect(!data.splashBlastParam.isEmpty)
    }
    
    @Test("Toxic Mist Data")
    func toxicMistData() throws {
        let data = try SubWeaponData(for: .toxicMist)
        
        #expect(data.id == .toxicMist)
    }
}
