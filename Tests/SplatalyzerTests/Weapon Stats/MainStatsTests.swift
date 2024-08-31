//
//  MainStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 3/4/24.
//

import Testing
@testable import Splatalyzer

struct MainStatsTests {
    
    let mainInfo = try! JSONService().decode(WeaponInfoMain.self, from: "WeaponInfoMain")

    @Test("Blasters", arguments: MainWeapon.getWeapons(of: .blaster))
    func blasterStats(_ blaster: MainWeapon) throws {
        let stats = try TestHelper.getMainWeaponStats(for: blaster, with: mainInfo)
        
        #expect(stats.weapon == blaster)
        #expect(stats.shotSpreadAir != nil)
        #expect(stats.shotSpreadGround != nil)
        #expect(stats.whiteInkSeconds != nil)
    }
    
    @Test("Brellas (Exists)", arguments: [
        MainWeapon.recycledBrella24MkI, .recycledBrella24MkII, .tentaBrella, .tentaSorellaBrella, .undercoverBrella, .undercoverSorellaBrella
    ])
    func brellaStatsExist(_ brella: MainWeapon) throws {
        let stats = try TestHelper.getMainWeaponStats(for: brella, with: mainInfo)
        
        #expect(stats.weapon == brella)
        #expect(stats.brellaCanopyHp != nil)
    }
    
    @Test("Brellas (Not Exist)", arguments: [
        MainWeapon.splatBrella, .sorellaBrella, .orderBrellaReplica
    ])
    func brellaStatsNotExist(_ brella: MainWeapon) throws {
        let stats = try TestHelper.getMainWeaponStats(for: brella, with: mainInfo)
        
        #expect(stats.weapon == brella)
        #expect(!stats.exists())
    }
    
    @Test("Brushes", arguments: MainWeapon.getWeapons(of: .brush))
    func brushStats(_ brush: MainWeapon) throws {
        let stats = try TestHelper.getMainWeaponStats(for: brush, with: mainInfo)
        
        #expect(stats.weapon == brush)
        #expect(!stats.exists())
    }
    
    @Test("Chargers (Full Charge)", arguments: [
        MainWeapon.gooTuber, .customGooTuber, .bamboozler14MkI, .bamboozler14MkII, .eliter4KScope, .customEliter4KScope, .eliter4K, .customEliter4K, .snipewriter5H, .snipewriter5B, .classicSquiffer, .newSquiffer
    ])
    func chargerFullChargeStats(_ charger: MainWeapon) throws {
        let stats = try TestHelper.getMainWeaponStats(for: charger, with: mainInfo)
        
        #expect(stats.weapon == charger)
        #expect(stats.fullChargeSeconds != nil)
    }
    
    @Test("Chargers (Max Charge)", arguments: [
        MainWeapon.gooTuber, .customGooTuber, .eliter4K, .customEliter4K, .splatCharger, .zfSplatCharger, .orderChargerReplica, .classicSquiffer, .newSquiffer
    ])
    func chargerMaxChargeStats(_ charger: MainWeapon) throws {
        let stats = try TestHelper.getMainWeaponStats(for: charger, with: mainInfo)
        
        #expect(stats.weapon == charger)
        #expect(stats.maxChargeSeconds != nil)
    }
    
    @Test("Chargers (Not Exist)", arguments: [
        MainWeapon.splatterscope, .zfSplatterscope
    ])
    func chargerNotExistStats(_ charger: MainWeapon) throws {
        let stats = try TestHelper.getMainWeaponStats(for: charger, with: mainInfo)
        
        #expect(stats.weapon == charger)
        #expect(!stats.exists())
    }
    
    @Test("Dualies", arguments: MainWeapon.getWeapons(of: .dualie))
    func dualieStats(_ dualie: MainWeapon) throws {
        let stats = try TestHelper.getMainWeaponStats(for: dualie, with: mainInfo)
        
        #expect(stats.weapon == dualie)
        #expect(stats.shotSpreadAir != nil)
        #expect(stats.shotSpreadGround != nil)
    }
    
    @Test("Rollers", arguments: MainWeapon.getWeapons(of: .roller))
    func rollerStats(_ roller: MainWeapon) throws {
        let stats = try TestHelper.getMainWeaponStats(for: roller, with: mainInfo)
        
        #expect(stats.weapon == roller)
        #expect(!stats.exists())
    }
    
    @Test("Shooters (Shot Spread)", arguments: MainWeapon.getWeapons(of: .shooter))
    func shooterStats(_ shooter: MainWeapon) throws {
        let stats = try TestHelper.getMainWeaponStats(for: shooter, with: mainInfo)
        
        #expect(stats.weapon == shooter)
        #expect(stats.shotSpreadAir != nil)
        #expect(stats.shotSpreadGround != nil)
    }
    
    @Test("Shooters (White Ink)", arguments: [
        MainWeapon.aerosprayMG, .aerosprayRG, .splattershotJr, .customSplattershotJr, .splooshomatic, .neoSplooshomatic, .h3Nozzlenose, .h3NozzlenoseD, .l3Nozzlenose, .l3NozzlenoseD
    ])
    func shooterWhiteInkStats(_ shooter: MainWeapon) throws {
        let stats = try TestHelper.getMainWeaponStats(for: shooter, with: mainInfo)
        
        #expect(stats.weapon == shooter)
        #expect(stats.whiteInkSeconds != nil)
    }
    
    @Test("Shooters (Autofire Spread)", arguments: [
        MainWeapon.squeezer, .foilSqueezer
    ])
    func shooterAutofireStats(_ shooter: MainWeapon) throws {
        let stats = try TestHelper.getMainWeaponStats(for: shooter, with: mainInfo)
        
        #expect(stats.weapon == shooter)
        #expect(stats.shotAutofireSpreadAir != nil)
        #expect(stats.shotAutofireSpreadGround != nil)
    }
    
    @Test("Sloshers", arguments: MainWeapon.getWeapons(of: .slosher))
    func slosherStats(_ slosher: MainWeapon) throws {
        let stats = try TestHelper.getMainWeaponStats(for: slosher, with: mainInfo)
        
        #expect(stats.weapon == slosher)
        #expect(stats.whiteInkSeconds != nil)
    }
    
    @Test("Splatanas", arguments: MainWeapon.getWeapons(of: .splatana))
    func splatanaStats(_ splatana: MainWeapon) throws {
        let stats = try TestHelper.getMainWeaponStats(for: splatana, with: mainInfo)
        
        #expect(stats.weapon == splatana)
        #expect(!stats.exists())
    }
    
    @Test("Splatlings", arguments: MainWeapon.getWeapons(of: .splatling))
    func splatlingStats(_ splatling: MainWeapon) throws {
        let stats = try TestHelper.getMainWeaponStats(for: splatling, with: mainInfo)
        
        #expect(stats.weapon == splatling)
        #expect(stats.shotSpreadAir != nil)
        #expect(stats.shotSpreadGround != nil)
        #expect(stats.whiteInkSeconds != nil)
    }
    
    @Test("Splatlings (Max Charge)", arguments: [
        MainWeapon.nautilus47, .nautilus79
    ])
    func splatlingMaxChargeStats(_ splatling: MainWeapon) throws {
        let stats = try TestHelper.getMainWeaponStats(for: splatling, with: mainInfo)
        
        #expect(stats.weapon == splatling)
        #expect(stats.maxChargeSeconds != nil)
    }
    
    @Test("Stringers", arguments: MainWeapon.getWeapons(of: .stringer))
    func stringerStats(_ stringer: MainWeapon) throws {
        let stats = try TestHelper.getMainWeaponStats(for: stringer, with: mainInfo)
        
        #expect(stats.weapon == stringer)
        #expect(stats.fullChargeSeconds != nil)
        #expect(stats.maxChargeSeconds != nil)
    }
}
