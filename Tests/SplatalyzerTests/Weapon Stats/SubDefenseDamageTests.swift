//
//  SubDefenseDamageTests.swift
//  
//
//  Created by Christopher Engelbart on 2/29/24.
//

import Testing
@testable import Splatalyzer

struct SubDefenseDamageTests {
    
    let ap = AbilityPoints()
    
    @Test("Bomb Normal Def.Dmg.", arguments: [
        SubWeapon.autobomb, .burstBomb, .curlingBomb, .inkMine, .splatBomb, .suctionBomb
    ])
    func bombNormalDefDmg(for sub: SubWeapon) throws {
        let data = try TestHelper.getSubData(for: sub)
        let subData = [sub : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, subData: subData)

        let info = try #require(defDmg[sub])
        try #require(!info.isEmpty)
        #expect(info.contains(type: .bombNormal))
    }
    
    @Test("Bomb Direct Def.Dmg.")
    func bombDirectDefDmg() throws {
        let data = try TestHelper.getSubData(for: .torpedo)
        let subData = [SubWeapon.torpedo : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, subData: subData)

        let info = try #require(defDmg[.torpedo])
        try #require(!info.isEmpty)
        #expect(info.contains(type: .bombDirect))
    }
    
    @Test("Direct Def.Dmg.")
    func directDefDmg() throws {
        let data = try TestHelper.getSubData(for: .angleShooter)
        let subData = [SubWeapon.angleShooter : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, subData: subData)

        let info = try #require(defDmg[.angleShooter])
        try #require(!info.isEmpty)
        #expect(info.contains(type: .direct))
    }
    
    @Test("Distance Def.Dmg.")
    func distanceDefDmg() throws {
        let data = try TestHelper.getSubData(for: .fizzyBomb)
        let subData = [SubWeapon.fizzyBomb : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, subData: subData)

        let info = try #require(defDmg[.fizzyBomb])
        try #require(!info.isEmpty)
        #expect(info.contains(type: .distance))
    }
    
    @Test("Splash Def.Dmg.")
    func splsashDefDmg() throws {
        let data = try TestHelper.getSubData(for: .torpedo)
        let subData = [SubWeapon.torpedo : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, subData: subData)

        let info = try #require(defDmg[.torpedo])
        try #require(!info.isEmpty)
        #expect(info.contains(type: .splash))
    }
    
    @Test("Empty Def.Dmg.", arguments: [
        SubWeapon.pointSensor, .splashWall, .sprinkler, .squidBeakon, .toxicMist
    ])
    func emptyDefDmg(for sub: SubWeapon) throws {
        let data = try TestHelper.getSubData(for: sub)
        let subData = [sub : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, subData: subData)

        let info = try #require(defDmg[sub])
        #expect(info.isEmpty)
    }
}
