//
//  SpecialDamagesTests.swift
//  
//
//  Created by Christopher Engelbart on 2/27/24.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.buildStats))
struct SpecialDamagesTests {
    
    @Test("Bomb Normal Sp.Dmg.", arguments: [
        SpecialWeapon.inkjet, .reefslider, .superChump, .tentaMissiles, .tripleSplashdown, .trizooka, .zipcaster
    ])
    func bombNormalDmgs(for weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .bombNormal))
    }
    
    @Test("Special Bullet Sp.Dmg.")
    func specialBulletDmgs() throws {
        let data = try SpecialWeaponData(for: .crabTank)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .specialBulletMax))
        #expect(dmgs.contains(type: .specialBulletMin))
    }
    
    @Test("Special Bump Sp.Dmg.")
    func specialBumpDmgs() throws {
        let data = try SpecialWeaponData(for: .crabTank)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .specialBump))
    }
    
    @Test("Special Cannon Sp.Dmg.")
    func specialCannonDmgs() throws {
        let data = try SpecialWeaponData(for: .crabTank)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .specialCannon))
    }
    
    @Test("Special Charge Sp.Dmg.")
    func specialChargeDmgs() throws {
        let data = try SpecialWeaponData(for: .inkVac)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .specialMaxCharge))
        #expect(dmgs.contains(type: .specialMinCharge))
    }
    
    @Test("Special Jump Sp.Dmg.")
    func specialJumpDmgs() throws {
        let data = try SpecialWeaponData(for: .krakenRoyale)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .specialJump))
    }
    
    @Test("Special Swing Sp.Dmg.")
    func specialSwingDmgs() throws {
        let data = try SpecialWeaponData(for: .ultraStamp)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .specialSwing))
    }
    
    @Test("Special Throw Sp.Dmg.")
    func specialThrowDmgs() throws {
        let data = try SpecialWeaponData(for: .ultraStamp)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .specialThrow))
    }
    
    @Test("Special Tick Sp.Dmg.", arguments: [
        SpecialWeapon.booyahBomb, .inkStorm, .killerWail51
    ])
    func specialTickDmgs(for weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .specialTick))
    }

    @Test("Wave Sp.Dmg.") func waveDmgs() throws {
        let data = try SpecialWeaponData(for: .waveBreaker)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .wave))
    }
}
