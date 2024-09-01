//
//  MainDamagesTests.swift
//  
//
//  Created by Christopher Engelbart on 3/2/24.
//

import Testing
@testable import Splatalyzer

struct MainDamagesTests {
    
    let mainInfo = try! JSONService().decode(WeaponInfoMain.self, from: "WeaponInfoMain")

    @Test("Blaster Main Dmg.", arguments: MainWeapon.getWeapons(of: .blaster))
    func blasterDamages(_ blaster: MainWeapon) throws {
        let data = try TestHelper.getMainData(for: blaster, with: mainInfo)
        
        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .direct))
        #expect(dmgs.contains(type: .splash))
    }
    
    @Test("Brella Main Dmg.", arguments: MainWeapon.getWeapons(of: .brella))
    func brellaDamages(_ brella: MainWeapon) throws {
        let data = try TestHelper.getMainData(for: brella, with: mainInfo)
        
        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .normalMax))
    }
    
    @Test("Brush Main Dmg.", arguments: MainWeapon.getWeapons(of: .brush))
    func brushDamages(_ brush: MainWeapon) throws {
        let data = try TestHelper.getMainData(for: brush, with: mainInfo)
        
        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .splashMax))
        #expect(dmgs.contains(type: .splashMin))
        #expect(dmgs.contains(type: .rollOver))
    }
    
    @Test("Charger Main Dmg.", arguments: MainWeapon.getWeapons(of: .charger))
    func chargerDamages(_ charger: MainWeapon) throws {
        let data = try TestHelper.getMainData(for: charger, with: mainInfo)
        
        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .fullCharge))
        #expect(dmgs.contains(type: .maxCharge))
        #expect(dmgs.contains(type: .tapShot))
    }
    
    @Test("Dualie (Normal) Main Dmg.", arguments: MainWeapon.getWeapons(of: .dualie))
    func dualieDamages(_ dualie: MainWeapon) throws {
        let data = try TestHelper.getMainData(for: dualie, with: mainInfo)
        
        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .normalMax))
        #expect(dmgs.contains(type: .normalMin))
    }
    
    @Test("Dualie (Turret) Main Dmg.", arguments: [
        MainWeapon.douserDualiesFF, .customDouserDualiesFF, .gloogaDualies, .gloogaDualiesDeco
    ])
    func dualieDamagesTurret(_ dualie: MainWeapon) throws {
        let data = try TestHelper.getMainData(for: dualie, with: mainInfo)
        
        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .turretMax))
        #expect(dmgs.contains(type: .turretMin))
    }
    
    @Test("Roller Main Dmg.", arguments: MainWeapon.getWeapons(of: .roller))
    func rollerDamages(_ roller: MainWeapon) throws {
        let data = try TestHelper.getMainData(for: roller, with: mainInfo)
        
        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .splashVerticalMax))
        #expect(dmgs.contains(type: .splashVerticalMin))
        #expect(dmgs.contains(type: .splashHorizontalMax))
        #expect(dmgs.contains(type: .splashHorizontalMin))
        #expect(dmgs.contains(type: .rollOver))
    }
    
    @Test("Shooter Main Dmg.", arguments: MainWeapon.getWeapons(of: .shooter))
    func shooterDamages(_ shooter: MainWeapon) throws {
        let data = try TestHelper.getMainData(for: shooter, with: mainInfo)
        
        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .normalMax))
        #expect(dmgs.contains(type: .normalMin))
    }
    
    @Test("Slosher (Direct) Main Dmg.", arguments: [
        MainWeapon.bloblobber, .bloblobberDeco, .explosher, .customExplosher
    ])
    func slosherDirectDamages(_ slosher: MainWeapon) throws {
        let data = try TestHelper.getMainData(for: slosher, with: mainInfo)
        
        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .direct))
    }
    
    @Test("Slosher (Direct Range) Main Dmg.", arguments: [
        MainWeapon.dreadWringer, .dreadWringerD, .slosher, .slosherDeco, .orderSlosherReplica, .sloshingMachine, .sloshingMachineNeo, .triSlosher, .triSlosherNouveau
    ])
    func slosherDirectRangeDamages(_ slosher: MainWeapon) throws {
        let data = try TestHelper.getMainData(for: slosher, with: mainInfo)
        
        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .directMax))
        #expect(dmgs.contains(type: .directMin))
    }
    
    @Test("Slosher (Splash) Main Dmg.", arguments: [
        MainWeapon.explosher, .customExplosher, .sloshingMachine, .sloshingMachineNeo
    ])
    func slosherSplashDamages(_ slosher: MainWeapon) throws {
        let data = try TestHelper.getMainData(for: slosher, with: mainInfo)
        
        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .splash))
    }
    
    @Test("Splatana Main Dmg.", arguments: MainWeapon.getWeapons(of: .splatana))
    func splatanaDamages(_ splatana: MainWeapon) throws {
        let data = try TestHelper.getMainData(for: splatana, with: mainInfo)
        
        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .splatanaVertical))
        #expect(dmgs.contains(type: .splatanaVerticalDirect))
        #expect(dmgs.contains(type: .splatanaHorizontal))
        #expect(dmgs.contains(type: .splatanaHorizontalDirect))
    }
    
    @Test("Splatling Main Dmg.", arguments: MainWeapon.getWeapons(of: .splatling))
    func splatlingDamages(_ splatling: MainWeapon) throws {
        let data = try TestHelper.getMainData(for: splatling, with: mainInfo)
        
        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .normalMax))
        #expect(dmgs.contains(type: .normalMin))
    }
    
    @Test("Stringer (Normal) Main Dmg.", arguments: MainWeapon.getWeapons(of: .stringer))
    func stringerNormalDamages(_ stringer: MainWeapon) throws {
        let data = try TestHelper.getMainData(for: stringer, with: mainInfo)
        
        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .normalMax))
        #expect(dmgs.contains(type: .normalMin))
    }
    
    @Test("Stringer (Splash) Main Dmg.", arguments: [
        MainWeapon.triStringer, .inklineTriStringer, .orderStringerReplica, .wellspringV, .customWellspringV
    ])
    func stringerSplashDamages(_ stringer: MainWeapon) throws {
        let data = try TestHelper.getMainData(for: stringer, with: mainInfo)
        
        let dmgs = StatHelper.mainDamages(mainInfo: data)
        try #require(!dmgs.isEmpty)
        
        #expect(dmgs.contains(type: .splash))
    }
}
