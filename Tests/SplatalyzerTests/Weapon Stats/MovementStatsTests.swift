//
//  MovementStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 3/5/24.
//

import Testing
@testable import Splatalyzer

struct MovementStatsTests {
    
    let mainInfo = try! JSONService().decode(WeaponInfoMain.self, from: "WeaponInfoMain")

    @Test("Blaster Move Stats", arguments: MainWeapon.getWeapons(of: .blaster))
    func blasterStats(_ blaster: MainWeapon) throws {
        let moveStats = try TestHelper.getMoveStats(for: blaster, with: mainInfo)
        
        #expect(moveStats.shootingRunSpeed != nil)
    }
    
    @Test("Brella Move Stats", arguments: MainWeapon.getWeapons(of: .brella))
    func brellaStats(_ brella: MainWeapon) throws {
        let moveStats = try TestHelper.getMoveStats(for: brella, with: mainInfo)
        
        #expect(moveStats.shootingRunSpeed != nil)
    }
    
    @Test("Brushe Move Stats", arguments: MainWeapon.getWeapons(of: .brush))
    func brushStats(_ brush: MainWeapon) throws {
        let moveStats = try TestHelper.getMoveStats(for: brush, with: mainInfo)
        
        #expect(moveStats.shootingRunSpeed == nil)
        #expect(moveStats.shootingRunSpeedCharging == nil)
        #expect(moveStats.shootingRunSpeedFullCharge == nil)
        #expect(moveStats.shootingRunSpeedSecondary == nil)
    }
    
    @Test("Charger Move Stats", arguments: MainWeapon.getWeapons(of: .charger))
    func chargerStats(_ charger: MainWeapon) throws {
        let moveStats = try TestHelper.getMoveStats(for: charger, with: mainInfo)
        
        #expect(moveStats.shootingRunSpeedFullCharge != nil)
    }
    
    @Test("Dualie Move Stats", arguments: MainWeapon.getWeapons(of: .dualie))
    func dualieStats(_ dualie: MainWeapon) throws {
        let moveStats = try TestHelper.getMoveStats(for: dualie, with: mainInfo)
        
        #expect(moveStats.shootingRunSpeed != nil)
    }
    
    @Test("Roller Move Stats", arguments: MainWeapon.getWeapons(of: .roller))
    func rollerStats(_ roller: MainWeapon) throws {
        let moveStats = try TestHelper.getMoveStats(for: roller, with: mainInfo)
        
        #expect(moveStats.shootingRunSpeed == nil)
        #expect(moveStats.shootingRunSpeedCharging == nil)
        #expect(moveStats.shootingRunSpeedFullCharge == nil)
        #expect(moveStats.shootingRunSpeedSecondary == nil)
    }
    
    @Test("Shooter Move Stats", arguments: MainWeapon.getWeapons(of: .shooter))
    func shooterStats(_ shooter: MainWeapon) throws {
        let moveStats = try TestHelper.getMoveStats(for: shooter, with: mainInfo)
        
        #expect(moveStats.shootingRunSpeed != nil)
    }
    
    @Test("Slosher Move Stats", arguments: MainWeapon.getWeapons(of: .slosher))
    func slosherStats(_ slosher: MainWeapon) throws {
        let moveStats = try TestHelper.getMoveStats(for: slosher, with: mainInfo)
        
        #expect(moveStats.shootingRunSpeed != nil)
    }
    
    @Test("Splatana Move Stats", arguments: MainWeapon.getWeapons(of: .splatana))
    func splatanaStats(_ splatana: MainWeapon) throws {
        let moveStats = try TestHelper.getMoveStats(for: splatana, with: mainInfo)
        
        #expect(moveStats.shootingRunSpeed == nil)
        #expect(moveStats.shootingRunSpeedCharging == nil)
        #expect(moveStats.shootingRunSpeedFullCharge == nil)
        #expect(moveStats.shootingRunSpeedSecondary == nil)
    }
    
    @Test("Splatling (Normal) Move Stats", arguments: MainWeapon.getWeapons(of: .splatling))
    func splatlingNormalStats(_ splatling: MainWeapon) throws {
        let moveStats = try TestHelper.getMoveStats(for: splatling, with: mainInfo)
        
        #expect(moveStats.shootingRunSpeed != nil)
    }
    
    @Test("Splatling (Charging) Move Stats", arguments: [
        MainWeapon.ballpointSplatling, .ballpointSplatlingNouveau, .heavyEditSplatling, .heavyEditSplatlingNouveau, .hydraSplatling, .customHydraSplatling, .miniSplatling, .zinkMiniSplatling, .nautilus47, .nautilus79
    ])
    func splatlingChargingStats(_ splatling: MainWeapon) throws {
        let moveStats = try TestHelper.getMoveStats(for: splatling, with: mainInfo)
        
        #expect(moveStats.shootingRunSpeedCharging != nil)
    }
    
    @Test("Stringer Move Stats", arguments: MainWeapon.getWeapons(of: .stringer))
    func stringerNormalStats(_ stringer: MainWeapon) throws {
        let moveStats = try TestHelper.getMoveStats(for: stringer, with: mainInfo)
        
        #expect(moveStats.shootingRunSpeedFullCharge != nil)
    }
}
