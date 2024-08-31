//
//  SpecialDamagesTests.swift
//  
//
//  Created by Christopher Engelbart on 2/27/24.
//

import Testing
@testable import Splatalyzer

struct SpecialDamagesTests {
    
    @Test("Bomb Normal", arguments: [
        SpecialWeapon.inkjet, .reefslider, .superChump, .tentaMissiles, .tripleSplashdown, .trizooka, .zipcaster
    ])
    func bombNormalDmgs(for weapon: SpecialWeapon) throws {
        let data = try TestHelper.getSpecialData(for: weapon)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .bombNormal))
    }
    
    @Test("Special Bullet")
    func specialBulletDmgs() throws {
        let data = try TestHelper.getSpecialData(for: .crabTank)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .specialBulletMax))
        #expect(dmgs.contains(type: .specialBulletMin))
    }
    
    @Test("Special Bump")
    func specialBumpDmgs() throws {
        let data = try TestHelper.getSpecialData(for: .crabTank)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .specialBump))
    }
    
    @Test("Special Cannon")
    func specialCannonDmgs() throws {
        let data = try TestHelper.getSpecialData(for: .crabTank)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .specialCannon))
    }
    
    @Test("Special Charge")
    func specialChargeDmgs() throws {
        let data = try TestHelper.getSpecialData(for: .inkVac)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .specialMaxCharge))
        #expect(dmgs.contains(type: .specialMinCharge))
    }
    
    @Test("Special Jump")
    func specialJumpDmgs() throws {
        let data = try TestHelper.getSpecialData(for: .krakenRoyale)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .specialJump))
    }
    
    @Test("Special Swing")
    func specialSwingDmgs() throws {
        let data = try TestHelper.getSpecialData(for: .ultraStamp)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .specialSwing))
    }
    
    @Test("Special Throw")
    func specialThrowDmgs() throws {
        let data = try TestHelper.getSpecialData(for: .ultraStamp)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .specialThrow))
    }
    
    @Test("Special Tick", arguments: [
        SpecialWeapon.booyahBomb, .inkStorm, .killerWail51
    ])
    func specialTickDmgs(for weapon: SpecialWeapon) throws {
        let data = try TestHelper.getSpecialData(for: weapon)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .specialTick))
    }

    @Test("Wave") func waveDmgs() throws {
        let data = try TestHelper.getSpecialData(for: .waveBreaker)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .wave))
    }
}
