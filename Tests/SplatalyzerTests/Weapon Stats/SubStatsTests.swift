//
//  SubStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 2/29/24.
//

import Testing
@testable import Splatalyzer

struct SubStatsTests {
    
    let ap = AbilityPoints()

    @Test("Velocity Not Nil Sub Stats", arguments: [
        SubWeapon.angleShooter, .autobomb, .burstBomb, .curlingBomb, .fizzyBomb, .pointSensor, .splatBomb, .squidBeakon, .torpedo, .toxicMist
    ])
    func velocityNotNil(for sub: SubWeapon) throws {
        let data = try TestHelper.getSubData(for: sub)
        let velocity = StatHelper.subVelocity(ap: self.ap, subInfo: data)
        
        #expect(velocity != nil)
    }
    
    @Test("Velocity Nil Sub Stats", arguments: [
        SubWeapon.inkMine, .splashWall, .sprinkler
    ])
    func velocityNil(for sub: SubWeapon) throws {
        let data = try TestHelper.getSubData(for: sub)
        let velocity = StatHelper.subVelocity(ap: self.ap, subInfo: data)
        
        #expect(velocity == nil)
    }
    
    @Test("1st Phase Duration Not Nil Sub Stats")
    func firstPhaseDurationNotNil() async throws {
        let data = try TestHelper.getSubData(for: .sprinkler)
        let duration = StatHelper.subPhaseDuration(ap: self.ap, subInfo: data, first: true)
        
        #expect(duration != nil)
    }
    
    @Test("1st Phase Duration Nil Sub Stats", arguments: [
        SubWeapon.angleShooter, .autobomb, .burstBomb, .curlingBomb, .fizzyBomb, .inkMine, .pointSensor, .splashWall, .splatBomb, .squidBeakon, .torpedo, .toxicMist
    ])
    func firstPhaseDurationNil(for sub: SubWeapon) throws {
        let data = try TestHelper.getSubData(for: sub)
        let duration = StatHelper.subPhaseDuration(ap: self.ap, subInfo: data, first: true)

        #expect(duration == nil)
    }
    
    @Test("2nd Phase Duration Not Nil Sub Stats")
    func secondPhaseDurationNotNil() async throws {
        let data = try TestHelper.getSubData(for: .sprinkler)
        let duration = StatHelper.subPhaseDuration(ap: self.ap, subInfo: data, first: false)
        
        #expect(duration != nil)
    }
    
    @Test("2nd Phase Duration Nil Sub Stats", arguments: [
        SubWeapon.angleShooter, .autobomb, .burstBomb, .curlingBomb, .fizzyBomb, .inkMine, .pointSensor, .splashWall, .splatBomb, .squidBeakon, .torpedo, .toxicMist
    ])
    func secondPhaseDurationNil(for sub: SubWeapon) throws {
        let data = try TestHelper.getSubData(for: sub)
        let duration = StatHelper.subPhaseDuration(ap: self.ap, subInfo: data, first: false)

        #expect(duration == nil)
    }
    
    @Test("Marking Seconds Not Nil Sub Stats", arguments: [
        SubWeapon.angleShooter, .inkMine, .pointSensor
    ])
    func markingSecondsNotNil(for sub: SubWeapon) throws {
        let data = try TestHelper.getSubData(for: sub)
        let markingSec = StatHelper.subMarkingSeconds(ap: self.ap, subInfo: data)
        
        #expect(markingSec != nil)
    }
    
    @Test("Marking Seconds Nil Sub Stats", arguments: [
        SubWeapon.autobomb, .burstBomb, .curlingBomb, .fizzyBomb, .splashWall, .splatBomb, .sprinkler, .squidBeakon, .torpedo, .toxicMist
    ])
    func markingSecondsNil(for sub: SubWeapon) throws {
        let data = try TestHelper.getSubData(for: sub)
        let markingSec = StatHelper.subMarkingSeconds(ap: self.ap, subInfo: data)
        
        #expect(markingSec == nil)
    }
    
    @Test("Marking Radius Not Nil Sub Stats")
    func markingRadiusNotNil() async throws {
        let data = try TestHelper.getSubData(for: .inkMine)
        let radius = StatHelper.subMarkingRadius(ap: self.ap, subInfo: data)
        
        #expect(radius != nil)
    }
    
    @Test("Marking Radius Nil Sub Stats", arguments: [
        SubWeapon.angleShooter, .autobomb, .burstBomb, .curlingBomb, .fizzyBomb, .pointSensor, .splashWall, .splatBomb, .sprinkler, .squidBeakon, .torpedo, .toxicMist
    ])
    func markingRadiusNil(for sub: SubWeapon) throws {
        let data = try TestHelper.getSubData(for: sub)
        let radius = StatHelper.subMarkingRadius(ap: self.ap, subInfo: data)

        #expect(radius == nil)
    }
    
    @Test("Explosion Radius Not Nil Sub Stats")
    func explosionRadiusNotNil() async throws {
        let data = try TestHelper.getSubData(for: .inkMine)
        let radius = StatHelper.subExplosionRadius(ap: self.ap, subInfo: data)
        
        #expect(radius != nil)
    }
    
    @Test("Explosion Radius Nil Sub Stats", arguments: [
        SubWeapon.angleShooter, .autobomb, .burstBomb, .curlingBomb, .fizzyBomb, .pointSensor, .splashWall, .splatBomb, .sprinkler, .squidBeakon, .torpedo, .toxicMist
    ])
    func explosionRadiusNil(for sub: SubWeapon) throws {
        let data = try TestHelper.getSubData(for: sub)
        let radius = StatHelper.subExplosionRadius(ap: self.ap, subInfo: data)

        #expect(radius == nil)
    }
    
    @Test("HP Not Nil Sub Stats")
    func hpNotNil() async throws {
        let data = try TestHelper.getSubData(for: .splashWall)
        let hp = StatHelper.subHp(ap: self.ap, subInfo: data)
        
        #expect(hp != nil)
    }
    
    @Test("HP Nil Sub Stats", arguments: [
        SubWeapon.angleShooter, .autobomb, .burstBomb, .curlingBomb, .inkMine, .fizzyBomb, .pointSensor, .splatBomb, .sprinkler, .squidBeakon, .torpedo, .toxicMist
    ])
    func hpNil(for sub: SubWeapon) throws {
        let data = try TestHelper.getSubData(for: sub)
        let hp = StatHelper.subHp(ap: self.ap, subInfo: data)

        #expect(hp == nil)
    }
    
    @Test("QSJ Boost Not Nil Sub Stats", arguments: [
        SubWeapon.angleShooter, .autobomb, .burstBomb, .curlingBomb, .fizzyBomb, .pointSensor, .splatBomb, .squidBeakon, .torpedo, .toxicMist
    ])
    func quickSuperJumpBoostNotNil(for sub: SubWeapon) throws {
        let data = try TestHelper.getSubData(for: sub)
        let qsjBoost = StatHelper.subVelocity(ap: self.ap, subInfo: data)
        
        #expect(qsjBoost != nil)
    }
    
    @Test("QSJ Boost Nil Sub Stats", arguments: [
        SubWeapon.inkMine, .splashWall, .sprinkler
    ])
    func quickSuperJumpBoostNil(for sub: SubWeapon) throws {
        let data = try TestHelper.getSubData(for: sub)
        let qsjBoost = StatHelper.subVelocity(ap: self.ap, subInfo: data)
        
        #expect(qsjBoost == nil)
    }
}
