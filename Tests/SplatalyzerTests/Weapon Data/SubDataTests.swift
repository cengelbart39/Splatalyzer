//
//  SubDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

struct SubDataTests {
    
    let service = JSONService()

    @Test("Angle Shooter Data")
    func angleShooterData() throws {
        let gameParams = try service.decode(
            AngleShooter.self,
            from: SubWeapon.angleShooter.fileName)
        
        let data = SubWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SubOverwrites)
        
        #expect(data.id == .angleShooter)
        #expect(data.directDamage != nil)
        #expect(overwrites.markingFrameSubSpec != nil)
    }
    
    @Test("Autobomb Data")
    func autobombData() throws {
        let gameParams = try service.decode(
            Autobomb.self, from: SubWeapon.autobomb.fileName)
        
        let data = SubWeaponData(container: gameParams)
        _ = try #require(data.overwrites as? SubOverwrites)
        
        #expect(data.id == .autobomb)
        #expect(!data.distanceDamage.isEmpty)
    }
    
    @Test("Burst Bomb Data")
    func burstBombData() throws {
        let gameParams = try service.decode(
            BurstBomb.self,
            from: SubWeapon.burstBomb.fileName)
        
        let data = SubWeaponData(container: gameParams)
        _ = try #require(data.overwrites as? SubOverwrites)
        
        #expect(data.id == .burstBomb)
        #expect(!data.distanceDamage.isEmpty)
    }
    
    @Test("Curling Bomb Data")
    func curlingBombData() throws {
        let gameParams = try service.decode(
            CurlingBomb.self,
            from: SubWeapon.curlingBomb.fileName)
        
        let data = SubWeaponData(container: gameParams)
        _ = try #require(data.overwrites as? SubOverwrites)
        
        #expect(data.id == .curlingBomb)
        #expect(!data.distanceDamage.isEmpty)
        #expect(data.directDamage != nil)
    }
    
    @Test("Fizzy Bomb Data")
    func fizzyBombData() throws {
        let gameParams = try service.decode(
            FizzyBomb.self,
            from: SubWeapon.fizzyBomb.fileName)
        
        let data = SubWeaponData(container: gameParams)
        _ = try #require(data.overwrites as? SubOverwrites)
        
        #expect(data.id == .fizzyBomb)
        #expect(!data.blastParam.isEmpty)
    }
    
    @Test("Ink Mine Data")
    func inkMineData() throws {
        let gameParams = try service.decode(
            InkMine.self,
            from: SubWeapon.inkMine.fileName)
        
        let data = SubWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SubOverwrites)
        
        #expect(data.id == .inkMine)
        #expect(!data.distanceDamage.isEmpty)
        #expect(overwrites.markingFrameSubSpec != nil)
        #expect(overwrites.sensorRadius != nil)
        #expect(overwrites.explosionRadius != nil)
    }
    
    @Test("Point Sensor Data")
    func pointSensorData() throws {
        let gameParams = try service.decode(
            PointSensor.self,
            from: SubWeapon.pointSensor.fileName)
        
        let data = SubWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SubOverwrites)
        
        #expect(data.id == .pointSensor)
        #expect(overwrites.markingFrameSubSpec != nil)
        #expect(overwrites.explosionRadius != nil)
    }
    
    @Test("Splash Wall Data")
    func splashWallData() throws {
        let gameParams = try service.decode(
            SplashWall.self,
            from: SubWeapon.splashWall.fileName)
        
        let data = SubWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SubOverwrites)
        
        #expect(data.id == .splashWall)
        #expect(overwrites.maxHp != nil)
    }
    
    @Test("Splat Bomb Data")
    func splatBombData() throws {
        let gameParams = try service.decode(
            SplatBomb.self,
            from: SubWeapon.splatBomb.fileName)
        
        let data = SubWeaponData(container: gameParams)
        _ = try #require(data.overwrites as? SubOverwrites)
        
        #expect(data.id == .splatBomb)
        #expect(!data.distanceDamage.isEmpty)
    }
    
    @Test("Sprinkler Data")
    func sprinklerData() throws {
        let gameParams = try service.decode(
            Sprinkler.self,
            from: SubWeapon.sprinkler.fileName)
        
        let data = SubWeaponData(container: gameParams)
        let overwrites = try #require(data.overwrites as? SubOverwrites)
        
        #expect(data.id == .sprinkler)
        #expect(overwrites.periodFirst != nil)
        #expect(overwrites.periodSecond != nil)
    }
    
    @Test("Squid Beakon Data")
    func squidBeakonData() throws {
        let gameParams = try service.decode(
            SquidBeakon.self,
            from: SubWeapon.squidBeakon.fileName)
        
        let player = try service.decode(Player.self, from: "SplPlayer.game__GameParameterTable")
        
        let data = SubWeaponData(container: gameParams, playerInfo: player)
        let overwrites = try #require(data.overwrites as? SubOverwrites)
        
        #expect(data.id == .squidBeakon)
        #expect(overwrites.subSpecUpParam != nil)
    }
    
    @Test("Suction Bomb Data")
    func suctionBombData() throws {
        let gameParams = try service.decode(
            SuctionBomb.self,
            from: SubWeapon.suctionBomb.fileName)
        
        let data = SubWeaponData(container: gameParams)
        _ = try #require(data.overwrites as? SubOverwrites)
        
        #expect(data.id == .suctionBomb)
        #expect(!data.distanceDamage.isEmpty)
    }
    
    @Test("Torpedo Data")
    func torpedoData() throws {
        let gameParams = try service.decode(
            Torpedo.self,
            from: SubWeapon.torpedo.fileName)
        
        let data = SubWeaponData(container: gameParams)
        _ = try #require(data.overwrites as? SubOverwrites)
        
        #expect(data.id == .torpedo)
        #expect(!data.blastParamChase.isEmpty)
        #expect(!data.splashBlastParam.isEmpty)
    }
    
    @Test("Toxic Mist Data")
    func toxicMistData() throws {
        let gameParams = try service.decode(
            ToxicMist.self,
            from: SubWeapon.toxicMist.fileName)
        
        let data = SubWeaponData(container: gameParams)
        _ = try #require(data.overwrites as? SubOverwrites)
        
        #expect(data.id == .toxicMist)
    }
}
