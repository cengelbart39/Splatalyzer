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
        var data = try TestHelper.getSubData(for: .angleShooter)
        var velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
                
        // Autobomb
        data = try TestHelper.getSubData(for: .autobomb)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Burst Bomb
        data = try TestHelper.getSubData(for: .burstBomb)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Curling Bomb
        data = try TestHelper.getSubData(for: .curlingBomb)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Fizzy Bomb
        data = try TestHelper.getSubData(for: .fizzyBomb)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Point Sensor
        data = try TestHelper.getSubData(for: .pointSensor)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Splat Bomb
        data = try TestHelper.getSubData(for: .splatBomb)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Squid Beakon
        data = try TestHelper.getSubData(for: .squidBeakon)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Torpedo
        data = try TestHelper.getSubData(for: .torpedo)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Toxic Mist
        data = try TestHelper.getSubData(for: .toxicMist)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
    }
    
    func test_StatHelper_subVelocity_nil() throws {
                
        // Ink Mine
        var data = try TestHelper.getSubData(for: .inkMine)
        var velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(velocity)
                
        // Splash Wall
        data = try TestHelper.getSubData(for: .splashWall)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(velocity)

        // Sprinkler
        data = try TestHelper.getSubData(for: .sprinkler)
        velocity = StatHelper.subVelocity(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(velocity)
    }

    // MARK: - Phase Duration (First)
    func test_StatHelper_subPhaseDuration_true_notNil() throws {
                
        // Sprinkler
        let data = try TestHelper.getSubData(for: .sprinkler)
        let duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNotNil(duration)
    }
    
    func test_StatHelper_subPhaseDuration_true_nil() throws {

        // Angle Shooter
        var data = try TestHelper.getSubData(for: .angleShooter)
        var duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
                
        // Autobomb
        data = try TestHelper.getSubData(for: .autobomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // Burst Bomb
        data = try TestHelper.getSubData(for: .burstBomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // Curling Bomb
        data = try TestHelper.getSubData(for: .curlingBomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // Fizzy Bomb
        data = try TestHelper.getSubData(for: .fizzyBomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // InkMine
        data = try TestHelper.getSubData(for: .inkMine)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // Point Sensor
        data = try TestHelper.getSubData(for: .pointSensor)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // Splash Wall
        data = try TestHelper.getSubData(for: .splashWall)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // Splat Bomb
        data = try TestHelper.getSubData(for: .splatBomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // Squid Beakon
        data = try TestHelper.getSubData(for: .squidBeakon)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // Torpedo
        data = try TestHelper.getSubData(for: .torpedo)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
        
        // Toxic Mist
        data = try TestHelper.getSubData(for: .toxicMist)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: true)
        XCTAssertNil(duration)
    }

    // MARK: - Phase Duration (Second)
    func test_StatHelper_subPhaseDuration_false_notNil() throws {
                
        // Sprinkler
        let data = try TestHelper.getSubData(for: .sprinkler)
        let duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNotNil(duration)
    }
    
    func test_StatHelper_subPhaseDuration_false_nil() throws {

        // Angle Shooter
        var data = try TestHelper.getSubData(for: .angleShooter)
        var duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
                
        // Autobomb
        data = try TestHelper.getSubData(for: .autobomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // Burst Bomb
        data = try TestHelper.getSubData(for: .burstBomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // Curling Bomb
        data = try TestHelper.getSubData(for: .curlingBomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // Fizzy Bomb
        data = try TestHelper.getSubData(for: .fizzyBomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // InkMine
        data = try TestHelper.getSubData(for: .inkMine)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // Point Sensor
        data = try TestHelper.getSubData(for: .pointSensor)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // Splash Wall
        data = try TestHelper.getSubData(for: .splashWall)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // Splat Bomb
        data = try TestHelper.getSubData(for: .splatBomb)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // Squid Beakon
        data = try TestHelper.getSubData(for: .squidBeakon)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // Torpedo
        data = try TestHelper.getSubData(for: .torpedo)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
        
        // Toxic Mist
        data = try TestHelper.getSubData(for: .toxicMist)
        duration = StatHelper.subPhaseDuration(ap: self.ap, values: self.values, subInfo: data, first: false)
        XCTAssertNil(duration)
    }
    
    // MARK: - Sub Marking Seconds
    func test_StatHelper_subMarkingSeconds_notNil() throws {
        
        // Angle Shooter
        var data = try TestHelper.getSubData(for: .angleShooter)
        var seconds = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(seconds)
        
        // Ink Mine
        data = try TestHelper.getSubData(for: .inkMine)
        seconds = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(seconds)
                
        // Point Sensor
        data = try TestHelper.getSubData(for: .pointSensor)
        seconds = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(seconds)
    }
    
    func test_StatHelper_subMarkingSeconds_nil() throws {
                
        // Autobomb
        var data = try TestHelper.getSubData(for: .autobomb)
        var duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
        
        // Burst Bomb
        data = try TestHelper.getSubData(for: .burstBomb)
        duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
        
        // Curling Bomb
        data = try TestHelper.getSubData(for: .curlingBomb)
        duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
        
        // Fizzy Bomb
        data = try TestHelper.getSubData(for: .fizzyBomb)
        duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
        
        // Splash Wall
        data = try TestHelper.getSubData(for: .splashWall)
        duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
        
        // Splat Bomb
        data = try TestHelper.getSubData(for: .splatBomb)
        duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
        
        // Sprinkler
        data = try TestHelper.getSubData(for: .sprinkler)
        duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
        
        // Squid Beakon
        data = try TestHelper.getSubData(for: .squidBeakon)
        duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
        
        // Torpedo
        data = try TestHelper.getSubData(for: .torpedo)
        duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
        
        // Toxic Mist
        data = try TestHelper.getSubData(for: .toxicMist)
        duration = StatHelper.subMarkingSeconds(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(duration)
    }

    // MARK: - Marking Radius
    func test_StatHelper_subMarkingRadius_notNil() throws {
        
        // Ink Mine
        let data = try TestHelper.getSubData(for: .inkMine)
        let radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(radius)
    }
    
    func test_StatHelper_subMarkingRadius_nil() throws {
                
        // Angle Shooter
        var data = try TestHelper.getSubData(for: .angleShooter)
        var radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Autobomb
        data = try TestHelper.getSubData(for: .autobomb)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Burst Bomb
        data = try TestHelper.getSubData(for: .burstBomb)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Curling Bomb
        data = try TestHelper.getSubData(for: .curlingBomb)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Fizzy Bomb
        data = try TestHelper.getSubData(for: .fizzyBomb)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Point Sensor
        data = try TestHelper.getSubData(for: .pointSensor)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Splash Wall
        data = try TestHelper.getSubData(for: .splashWall)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Splat Bomb
        data = try TestHelper.getSubData(for: .splatBomb)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Sprinkler
        data = try TestHelper.getSubData(for: .sprinkler)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Squid Beakon
        data = try TestHelper.getSubData(for: .squidBeakon)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Torpedo
        data = try TestHelper.getSubData(for: .torpedo)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Toxic Mist
        data = try TestHelper.getSubData(for: .toxicMist)
        radius = StatHelper.subMarkingRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
    }

    // MARK: - Explosion Radius
    func test_StatHelper_subExplosionRadius_notNil() throws {
        
        // Ink Mine
        let data = try TestHelper.getSubData(for: .inkMine)
        let radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(radius)
    }
    
    func test_StatHelper_subExplosionRadius_nil() throws {
                
        // Angle Shooter
        var data = try TestHelper.getSubData(for: .angleShooter)
        var radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Autobomb
        data = try TestHelper.getSubData(for: .autobomb)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Burst Bomb
        data = try TestHelper.getSubData(for: .burstBomb)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Curling Bomb
        data = try TestHelper.getSubData(for: .curlingBomb)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Fizzy Bomb
        data = try TestHelper.getSubData(for: .fizzyBomb)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Point Sensor
        data = try TestHelper.getSubData(for: .pointSensor)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Splash Wall
        data = try TestHelper.getSubData(for: .splashWall)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Splat Bomb
        data = try TestHelper.getSubData(for: .splatBomb)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Sprinkler
        data = try TestHelper.getSubData(for: .sprinkler)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Squid Beakon
        data = try TestHelper.getSubData(for: .squidBeakon)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Torpedo
        data = try TestHelper.getSubData(for: .torpedo)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
        
        // Toxic Mist
        data = try TestHelper.getSubData(for: .toxicMist)
        radius = StatHelper.subExplosionRadius(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(radius)
    }

    // MARK: Durability
    func test_StatHelper_subHp_notNil() throws {
        
        // Splash Wall
        let data = try TestHelper.getSubData(for: .splashWall)
        let hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(hp)
    }
    
    func test_StatHelper_subHp_nil() throws {
                
        // Angle Shooter
        var data = try TestHelper.getSubData(for: .angleShooter)
        var hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Autobomb
        data = try TestHelper.getSubData(for: .autobomb)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Burst Bomb
        data = try TestHelper.getSubData(for: .burstBomb)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Curling Bomb
        data = try TestHelper.getSubData(for: .curlingBomb)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Fizzy Bomb
        data = try TestHelper.getSubData(for: .fizzyBomb)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Ink Mine
        data = try TestHelper.getSubData(for: .inkMine)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Point Sensor
        data = try TestHelper.getSubData(for: .pointSensor)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Splat Bomb
        data = try TestHelper.getSubData(for: .splatBomb)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Sprinkler
        data = try TestHelper.getSubData(for: .sprinkler)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Squid Beakon
        data = try TestHelper.getSubData(for: .squidBeakon)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Torpedo
        data = try TestHelper.getSubData(for: .torpedo)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
        
        // Toxic Mist
        data = try TestHelper.getSubData(for: .toxicMist)
        hp = StatHelper.subHp(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(hp)
    }

    // MARK: Quick Super Jump Boost
    func test_StatHelper_quickSuperJumpBoost_notNil() throws {
                
        // Angle Shooter
        var data = try TestHelper.getSubData(for: .angleShooter)
        var velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
                
        // Autobomb
        data = try TestHelper.getSubData(for: .autobomb)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Burst Bomb
        data = try TestHelper.getSubData(for: .burstBomb)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Curling Bomb
        data = try TestHelper.getSubData(for: .curlingBomb)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Fizzy Bomb
        data = try TestHelper.getSubData(for: .fizzyBomb)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Point Sensor
        data = try TestHelper.getSubData(for: .pointSensor)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Splat Bomb
        data = try TestHelper.getSubData(for: .splatBomb)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Squid Beakon
        data = try TestHelper.getSubData(for: .squidBeakon)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Suction Bomb
        data = try TestHelper.getSubData(for: .suctionBomb)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Torpedo
        data = try TestHelper.getSubData(for: .torpedo)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
        
        // Toxic Mist
        data = try TestHelper.getSubData(for: .toxicMist)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNotNil(velocity)
    }

    func test_StatHelper_quickSuperJumpBoost_nil() throws {
        
        // Ink Mine
        var data = try TestHelper.getSubData(for: .inkMine)
        var velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(velocity)
        
        // Splash Wall
        data = try TestHelper.getSubData(for: .splashWall)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(velocity)
        
        // Sprinkler
        data = try TestHelper.getSubData(for: .sprinkler)
        velocity = StatHelper.quickSuperJumpBoost(ap: self.ap, values: self.values, subInfo: data)
        XCTAssertNil(velocity)
    }
}
