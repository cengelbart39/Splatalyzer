//
//  MainDamagesTests.swift
//  
//
//  Created by Christopher Engelbart on 3/2/24.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.buildStats))
struct MainDamagesTests {
    
    @Test("Blaster Main Dmg.", arguments: MainWeapon.blasters)
    func blasterDamages(_ blaster: MainWeapon) throws {
        let data = try MainWeaponData(for: blaster)
        
        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .direct))
        #expect(dmgs.contains(type: .splash))
    }
    
    @Test("Brella Main Dmg.", arguments: MainWeapon.brellas)
    func brellaDamages(_ brella: MainWeapon) throws {
        let data = try MainWeaponData(for: brella)

        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .normalMax))
    }
    
    @Test("Brush Main Dmg.", arguments: MainWeapon.brushes)
    func brushDamages(_ brush: MainWeapon) throws {
        let data = try MainWeaponData(for: brush)

        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .splashMax))
        #expect(dmgs.contains(type: .splashMin))
        #expect(dmgs.contains(type: .rollOver))
    }
    
    @Test("Charger Main Dmg.", arguments: MainWeapon.chargers)
    func chargerDamages(_ charger: MainWeapon) throws {
        let data = try MainWeaponData(for: charger)

        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .fullCharge))
        #expect(dmgs.contains(type: .maxCharge))
        #expect(dmgs.contains(type: .tapShot))
    }
    
    @Test("Dualie (Normal) Main Dmg.", arguments: MainWeapon.dualies)
    func dualieDamages(_ dualie: MainWeapon) throws {
        let data = try MainWeaponData(for: dualie)

        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .normalMax))
        #expect(dmgs.contains(type: .normalMin))
    }
    
    @Test("Dualie (Turret) Main Dmg.", arguments: [
        MainWeapon.douserDualiesFF, .customDouserDualiesFF, .gloogaDualies, .gloogaDualiesDeco
    ])
    func dualieDamagesTurret(_ dualie: MainWeapon) throws {
        let data = try MainWeaponData(for: dualie)

        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .turretMax))
        #expect(dmgs.contains(type: .turretMin))
    }
    
    @Test("Roller Main Dmg.", arguments: MainWeapon.rollers)
    func rollerDamages(_ roller: MainWeapon) throws {
        let data = try MainWeaponData(for: roller)

        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .splashVerticalMax))
        #expect(dmgs.contains(type: .splashVerticalMin))
        #expect(dmgs.contains(type: .splashHorizontalMax))
        #expect(dmgs.contains(type: .splashHorizontalMin))
        #expect(dmgs.contains(type: .rollOver))
    }
    
    @Test("Shooter Main Dmg.", arguments: MainWeapon.shooters)
    func shooterDamages(_ shooter: MainWeapon) throws {
        let data = try MainWeaponData(for: shooter)

        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .normalMax))
        #expect(dmgs.contains(type: .normalMin))
    }
    
    @Test("Slosher (Direct) Main Dmg.", arguments: [
        MainWeapon.bloblobber, .bloblobberDeco, .explosher, .customExplosher
    ])
    func slosherDirectDamages(_ slosher: MainWeapon) throws {
        let data = try MainWeaponData(for: slosher)

        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .direct))
    }
    
    @Test("Slosher (Direct Range) Main Dmg.", arguments: [
        MainWeapon.dreadWringer, .dreadWringerD, .slosher, .slosherDeco, .orderSlosherReplica, .sloshingMachine, .sloshingMachineNeo, .triSlosher, .triSlosherNouveau
    ])
    func slosherDirectRangeDamages(_ slosher: MainWeapon) throws {
        let data = try MainWeaponData(for: slosher)

        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .directMax))
        #expect(dmgs.contains(type: .directMin))
    }
    
    @Test("Slosher (Splash) Main Dmg.", arguments: [
        MainWeapon.explosher, .customExplosher, .sloshingMachine, .sloshingMachineNeo
    ])
    func slosherSplashDamages(_ slosher: MainWeapon) throws {
        let data = try MainWeaponData(for: slosher)

        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .splash))
    }
    
    @Test("Splatana Main Dmg.", arguments: MainWeapon.splatanas)
    func splatanaDamages(_ splatana: MainWeapon) throws {
        let data = try MainWeaponData(for: splatana)

        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .splatanaVertical))
        #expect(dmgs.contains(type: .splatanaVerticalDirect))
        #expect(dmgs.contains(type: .splatanaHorizontal))
        #expect(dmgs.contains(type: .splatanaHorizontalDirect))
    }
    
    @Test("Splatling Main Dmg.", arguments: MainWeapon.splatlings)
    func splatlingDamages(_ splatling: MainWeapon) throws {
        let data = try MainWeaponData(for: splatling)

        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .normalMax))
        #expect(dmgs.contains(type: .normalMin))
    }
    
    @Test("Stringer (Normal) Main Dmg.", arguments: MainWeapon.stringers)
    func stringerNormalDamages(_ stringer: MainWeapon) throws {
        let data = try MainWeaponData(for: stringer)

        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .normalMax))
        #expect(dmgs.contains(type: .normalMin))
    }
    
    @Test("Stringer (Splash) Main Dmg.", arguments: [
        MainWeapon.triStringer, .inklineTriStringer, .orderStringerReplica, .wellspringV, .customWellspringV
    ])
    func stringerSplashDamages(_ stringer: MainWeapon) throws {
        let data = try MainWeaponData(for: stringer)

        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .splash))
    }
}
