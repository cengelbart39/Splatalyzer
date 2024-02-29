//
//  SubStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 2/29/24.
//

import XCTest
@testable import Splatalyzer

final class SubStatsTests: XCTestCase {

    let service = JSONService()
    let ap = AbilityPoints()
    var values: AbilityValues!
    
    override func setUpWithError() throws {
        self.values = try self.service.decode(AbilityValues.self, from: "ability-values")
    }
    
    override func tearDown() {
        self.values = nil
    }
    
    // MARK: - Velocity
    func test_StatHelper_subVelocity_notNil() throws {
                
        // Angle Shooter
        var data = try self.getData(for: .angleShooter)
        var velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
                
        // Autobomb
        data = try self.getData(for: .autobomb)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Burst Bomb
        data = try self.getData(for: .burstBomb)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Curling Bomb
        data = try self.getData(for: .curlingBomb)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Fizzy Bomb
        data = try self.getData(for: .fizzyBomb)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Point Sensor
        data = try self.getData(for: .pointSensor)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Splat Bomb
        data = try self.getData(for: .splatBomb)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Squid Beakon
        data = try self.getData(for: .squidBeakon)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Torpedo
        data = try self.getData(for: .torpedo)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Toxic Mist
        data = try self.getData(for: .toxicMist)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
    }
    
    func test_StatHelper_subVelocity_nil() throws {
                
        // Ink Mine
        var data = try self.getData(for: .inkMine)
        var velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(velocity)
                
        // Splash Wall
        data = try self.getData(for: .splashWall)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(velocity)

        // Sprinkler
        data = try self.getData(for: .sprinkler)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(velocity)
    }

    // MARK: - Phase Duration (First)
    func test_StatHelper_subPhaseDuration_true_notNil() throws {
                
        // Sprinkler
        let data = try self.getData(for: .sprinkler)
        let duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNotNil(duration)
    }
    
    func test_StatHelper_subPhaseDuration_true_nil() throws {

        // Angle Shooter
        var data = try self.getData(for: .angleShooter)
        var duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
                
        // Autobomb
        data = try self.getData(for: .autobomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // Burst Bomb
        data = try self.getData(for: .burstBomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // Curling Bomb
        data = try self.getData(for: .curlingBomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // Fizzy Bomb
        data = try self.getData(for: .fizzyBomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // InkMine
        data = try self.getData(for: .inkMine)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // Point Sensor
        data = try self.getData(for: .pointSensor)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // Splash Wall
        data = try self.getData(for: .splashWall)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // Splat Bomb
        data = try self.getData(for: .splatBomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // Squid Beakon
        data = try self.getData(for: .squidBeakon)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // Torpedo
        data = try self.getData(for: .torpedo)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // Toxic Mist
        data = try self.getData(for: .toxicMist)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
    }

    // MARK: - Phase Duration (Second)
    func test_StatHelper_subPhaseDuration_false_notNil() throws {
                
        // Sprinkler
        let data = try self.getData(for: .sprinkler)
        let duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNotNil(duration)
    }
    
    func test_StatHelper_subPhaseDuration_false_nil() throws {

        // Angle Shooter
        var data = try self.getData(for: .angleShooter)
        var duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
                
        // Autobomb
        data = try self.getData(for: .autobomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // Burst Bomb
        data = try self.getData(for: .burstBomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // Curling Bomb
        data = try self.getData(for: .curlingBomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // Fizzy Bomb
        data = try self.getData(for: .fizzyBomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // InkMine
        data = try self.getData(for: .inkMine)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // Point Sensor
        data = try self.getData(for: .pointSensor)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // Splash Wall
        data = try self.getData(for: .splashWall)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // Splat Bomb
        data = try self.getData(for: .splatBomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // Squid Beakon
        data = try self.getData(for: .squidBeakon)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // Torpedo
        data = try self.getData(for: .torpedo)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // Toxic Mist
        data = try self.getData(for: .toxicMist)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
    }
    
    // MARK: - Sub Marking Seconds
    func test_StatHelper_subMarkingSeconds_notNil() throws {
        
        // Angle Shooter
        var data = try self.getData(for: .angleShooter)
        var seconds = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(seconds)
        
        // Ink Mine
        data = try self.getData(for: .inkMine)
        seconds = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(seconds)
                
        // Point Sensor
        data = try self.getData(for: .pointSensor)
        seconds = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(seconds)
    }
    
    func test_StatHelper_subMarkingSeconds_nil() throws {
                
        // Autobomb
        var data = try self.getData(for: .autobomb)
        var duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
        
        // Burst Bomb
        data = try self.getData(for: .burstBomb)
        duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
        
        // Curling Bomb
        data = try self.getData(for: .curlingBomb)
        duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
        
        // Fizzy Bomb
        data = try self.getData(for: .fizzyBomb)
        duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
        
        // Splash Wall
        data = try self.getData(for: .splashWall)
        duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
        
        // Splat Bomb
        data = try self.getData(for: .splatBomb)
        duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
        
        // Sprinkler
        data = try self.getData(for: .sprinkler)
        duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
        
        // Squid Beakon
        data = try self.getData(for: .squidBeakon)
        duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
        
        // Torpedo
        data = try self.getData(for: .torpedo)
        duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
        
        // Toxic Mist
        data = try self.getData(for: .toxicMist)
        duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
    }

    // MARK: - Marking Radius
    func test_StatHelper_subMarkingRadius_notNil() throws {
        
        // Ink Mine
        let data = try self.getData(for: .inkMine)
        let radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(radius)
    }
    
    func test_StatHelper_subMarkingRadius_nil() throws {
                
        // Angle Shooter
        var data = try self.getData(for: .angleShooter)
        var radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Autobomb
        data = try self.getData(for: .autobomb)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Burst Bomb
        data = try self.getData(for: .burstBomb)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Curling Bomb
        data = try self.getData(for: .curlingBomb)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Fizzy Bomb
        data = try self.getData(for: .fizzyBomb)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Point Sensor
        data = try self.getData(for: .pointSensor)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Splash Wall
        data = try self.getData(for: .splashWall)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Splat Bomb
        data = try self.getData(for: .splatBomb)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Sprinkler
        data = try self.getData(for: .sprinkler)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Squid Beakon
        data = try self.getData(for: .squidBeakon)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Torpedo
        data = try self.getData(for: .torpedo)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Toxic Mist
        data = try self.getData(for: .toxicMist)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
    }

    // MARK: - Explosion Radius
    func test_StatHelper_subExplosionRadius_notNil() throws {
        
        // Ink Mine
        let data = try self.getData(for: .inkMine)
        let radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(radius)
    }
    
    func test_StatHelper_subExplosionRadius_nil() throws {
                
        // Angle Shooter
        var data = try self.getData(for: .angleShooter)
        var radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Autobomb
        data = try self.getData(for: .autobomb)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Burst Bomb
        data = try self.getData(for: .burstBomb)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Curling Bomb
        data = try self.getData(for: .curlingBomb)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Fizzy Bomb
        data = try self.getData(for: .fizzyBomb)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Point Sensor
        data = try self.getData(for: .pointSensor)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Splash Wall
        data = try self.getData(for: .splashWall)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Splat Bomb
        data = try self.getData(for: .splatBomb)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Sprinkler
        data = try self.getData(for: .sprinkler)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Squid Beakon
        data = try self.getData(for: .squidBeakon)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Torpedo
        data = try self.getData(for: .torpedo)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Toxic Mist
        data = try self.getData(for: .toxicMist)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
    }

    // MARK: Durability
    func test_StatHelper_subHp_notNil() throws {
        
        // Splash Wall
        let data = try self.getData(for: .splashWall)
        let hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(hp)
    }
    
    func test_StatHelper_subHp_nil() throws {
                
        // Angle Shooter
        var data = try self.getData(for: .angleShooter)
        var hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Autobomb
        data = try self.getData(for: .autobomb)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Burst Bomb
        data = try self.getData(for: .burstBomb)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Curling Bomb
        data = try self.getData(for: .curlingBomb)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Fizzy Bomb
        data = try self.getData(for: .fizzyBomb)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Ink Mine
        data = try self.getData(for: .inkMine)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Point Sensor
        data = try self.getData(for: .pointSensor)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Splat Bomb
        data = try self.getData(for: .splatBomb)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Sprinkler
        data = try self.getData(for: .sprinkler)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Squid Beakon
        data = try self.getData(for: .squidBeakon)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Torpedo
        data = try self.getData(for: .torpedo)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Toxic Mist
        data = try self.getData(for: .toxicMist)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
    }

    // MARK: Quick Super Jump Boost
    func test_StatHelper_quickSuperJumpBoost_notNil() throws {
                
        // Angle Shooter
        var data = try self.getData(for: .angleShooter)
        var velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
                
        // Autobomb
        data = try self.getData(for: .autobomb)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Burst Bomb
        data = try self.getData(for: .burstBomb)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Curling Bomb
        data = try self.getData(for: .curlingBomb)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Fizzy Bomb
        data = try self.getData(for: .fizzyBomb)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Point Sensor
        data = try self.getData(for: .pointSensor)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Splat Bomb
        data = try self.getData(for: .splatBomb)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Squid Beakon
        data = try self.getData(for: .squidBeakon)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Suction Bomb
        data = try self.getData(for: .suctionBomb)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Torpedo
        data = try self.getData(for: .torpedo)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Toxic Mist
        data = try self.getData(for: .toxicMist)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
    }

    func test_StatHelper_quickSuperJumpBoost_nil() throws {
        
        // Ink Mine
        var data = try self.getData(for: .inkMine)
        var velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(velocity)
        
        // Splash Wall
        data = try self.getData(for: .splashWall)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(velocity)
        
        // Sprinkler
        data = try self.getData(for: .sprinkler)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(velocity)
    }
    
    func getData(for weapon: SubWeapon) throws -> SubWeaponData {
        switch weapon {
        case .angleShooter:
            let angleShooter = try service.decode(
                AngleShooter.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: angleShooter)
            
            return subData
            
        case .autobomb:
            let autobomb = try service.decode(
                Autobomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: autobomb)
            
            return subData
            
        case .burstBomb:
            let burstBomb = try service.decode(
                BurstBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: burstBomb)
            
            return subData
            
        case .curlingBomb:
            let curlingBomb = try service.decode(
                CurlingBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: curlingBomb)
            
            return subData
            
        case .fizzyBomb:
            let fizzyBomb = try service.decode(
                FizzyBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: fizzyBomb)
            
            return subData
            
        case .inkMine:
            let inkMine = try service.decode(
                InkMine.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: inkMine)
            
            return subData
            
        case .pointSensor:
            let pointSensor = try service.decode(
                PointSensor.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: pointSensor)
            
            return subData
            
        case .splashWall:
            let splashWall = try service.decode(
                SplashWall.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: splashWall)
            
            return subData
            
        case .splatBomb:
            let splatBomb = try service.decode(
                SplatBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: splatBomb)
            
            return subData
            
        case .sprinkler:
            let sprinkler = try service.decode(
                Sprinkler.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: sprinkler)
            
            return subData
            
        case .squidBeakon:
            let squidBeakon = try service.decode(
                SquidBeakon.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let playerInfo = try service.decode(Player.self, from: "SplPlayer.game__GameParameterTable")
            
            let subData = SubWeaponData(container: squidBeakon, playerInfo: playerInfo)
            
            return subData
            
        case .suctionBomb:
            let suctionBomb = try service.decode(
                SuctionBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: suctionBomb)
            
            return subData
            
        case .torpedo:
            let torpedo = try service.decode(
                Torpedo.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: torpedo)
            
            return subData
            
        case .toxicMist:
            let toxicMist = try service.decode(
                ToxicMist.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: toxicMist)
            
            return subData
        }
    }

}
