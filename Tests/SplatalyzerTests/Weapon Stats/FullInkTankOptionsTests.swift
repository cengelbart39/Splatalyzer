//
//  FullInkTankOptionsTests.swift
//  
//
//  Created by Christopher Engelbart on 3/1/24.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.buildStats))
struct FullInkTankOptionsTests {
    
    // MARK: - Normal Option
    @Test("Blaster Normal Option", arguments: [
        MainWeapon.blaster, .customBlaster, .clashBlaster, .clashBlasterNeo, .lunaBlaster, .lunaBlasterNeo, .orderBlasterReplica, .rangeBlaster, .customRangeBlaster, .rapidBlaster, .rapidBlasterDeco, .rapidBlasterPro, .rapidBlasterProDeco, .sblast92, .sblast91
    ])
    func blasterHasNormal(_ weapon: MainWeapon) throws {
        let options = try TestHelper.getFullInkTankOptions(for: weapon)
        try #require(!options.isEmpty)
        
        #expect(options.contains(type: .normal))
    }
    
    @Test("Brella Normal Option", arguments: [
        MainWeapon.recycledBrella24MkI, .recycledBrella24MkII, .splatBrella, .sorellaBrella, .orderBrellaReplica, .tentaBrella, .tentatekSplattershot, .undercoverBrella, .undercoverSorellaBrella
    ])
    func brellaHasNormal(_ weapon: MainWeapon) throws {
        let options = try TestHelper.getFullInkTankOptions(for: weapon)
        try #require(!options.isEmpty)
        
        #expect(options.contains(type: .normal))
    }
    
    @Test("Dualies Normal Option", arguments: [
        MainWeapon.dappleDualies, .dappleDualiesNouveau, .douserDualiesFF, .customDouserDualiesFF, .dualieSquelchers, .customDualieSquelchers, .gloogaDualies, .gloogaDualiesDeco, .splatDualies, .enperrySplatDualies, .orderDualiesReplica, .darkTetraDualies, .lightTetraDualies
    ])
    func dualiesHasNormal(_ weapon: MainWeapon) throws {
        let options = try TestHelper.getFullInkTankOptions(for: weapon)
        try #require(!options.isEmpty)
        
        #expect(options.contains(type: .normal))
    }
    
    @Test("Shooter Normal Option", arguments: [
        MainWeapon.gal52, .gal52Deco, .gal96, .gal96Deco, .aerosprayMG, .aerosprayRG, .h3Nozzlenose, .h3NozzlenoseD, .jetSquelcher, .customJetSquelcher, .l3Nozzlenose, .l3NozzlenoseD, .nzap85, .nzap89, .splashomatic, .neoSplashomatic, .splattershot, .tentatekSplattershot, .heroShotReplica, .orderShotReplica, .octoShotReplica, .splattershotJr, .customSplattershotJr, .splattershotNova, .annakiSplattershotNova, .splattershotPro, .forgeSplattershotPro, .splooshomatic, .neoSplooshomatic, .squeezer, .foilSqueezer
    ])
    func shooterHasNormal(_ weapon: MainWeapon) throws {
        let options = try TestHelper.getFullInkTankOptions(for: weapon)
        try #require(!options.isEmpty)
        
        #expect(options.contains(type: .normal))
    }
    
    // MARK: - Swings
    @Test("Roller Swing Option", arguments: [
        MainWeapon.carbonRoller, .carbonRollerDeco, .dynamoRoller, .goldDynamoRoller, .splatRoller, .krakOnSplatRoller, .orderRollerReplica, .bigSwigRoller, .bigSwigRollerExpress
    ])
    func rollerHasSwing(_ weapon: MainWeapon) throws {
        let options = try TestHelper.getFullInkTankOptions(for: weapon)
        try #require(!options.isEmpty)
        
        #expect(options.contains(type: .swing))
    }
    
    @Test("Brush Swing Option", arguments: MainWeapon.getWeapons(of: .brush))
    func brushHasSwing(_ weapon: MainWeapon) throws {
        let options = try TestHelper.getFullInkTankOptions(for: weapon)
        try #require(!options.isEmpty)
        
        #expect(options.contains(type: .swing))
    }
    
    @Test("Splatana Swing Option", arguments: MainWeapon.getWeapons(of: .splatana))
    func splatanaHasSwing(_ weapon: MainWeapon) throws {
        let options = try TestHelper.getFullInkTankOptions(for: weapon)
        try #require(!options.isEmpty)
        
        #expect(options.contains(type: .swing))
    }
    
    // MARK: - Slosh
    @Test("Slosher Slosh Option", arguments: MainWeapon.getWeapons(of: .slosher))
    func slosherHasSlosh(_ weapon: MainWeapon) throws {
        let options = try TestHelper.getFullInkTankOptions(for: weapon)
        try #require(!options.isEmpty)
        
        #expect(options.contains(type: .slosh))
    }
    
    // MARK: - Vertical Swing
    @Test("Roller V. Swing Option", arguments: [MainWeapon.flingzaRoller, .foilFlingzaRoller])
    func rollerHasVerticalSwing(_ weapon: MainWeapon) throws {
        let options = try TestHelper.getFullInkTankOptions(for: weapon)
        try #require(!options.isEmpty)
        
        #expect(options.contains(type: .verticalSwing))
    }
    
    // MARK: - Horizontal Swing
    @Test("Roller H. Swing Option", arguments: [MainWeapon.flingzaRoller, .foilFlingzaRoller])
    func rollerHasHorizontalSwing(_ weapon: MainWeapon) throws {
        let options = try TestHelper.getFullInkTankOptions(for: weapon)
        try #require(!options.isEmpty)
        
        #expect(options.contains(type: .horizontalSwing))
    }
    
    // MARK: - Tap Shot
    @Test("Charger Tap Shot Option", arguments: MainWeapon.getWeapons(of: .charger))
    func chargerHasTapShot(_ weapon: MainWeapon) throws {
        let options = try TestHelper.getFullInkTankOptions(for: weapon)
        try #require(!options.isEmpty)
        
        #expect(options.contains(type: .tapShot))
    }
    
    @Test("Charger Full Charge Option", arguments: MainWeapon.getWeapons(of: .charger))
    func chargerHasFullCharge(_ weapon: MainWeapon) throws {
        let options = try TestHelper.getFullInkTankOptions(for: weapon)
        try #require(!options.isEmpty)
        
        #expect(options.contains(type: .fullCharge))
    }
    
    @Test("Splatana Full Charge Option", arguments: MainWeapon.getWeapons(of: .splatana))
    func splatanaHasFullCharge(_ weapon: MainWeapon) throws {
        let options = try TestHelper.getFullInkTankOptions(for: weapon)
        try #require(!options.isEmpty)
        
        #expect(options.contains(type: .fullCharge))
    }
    
    @Test("Stringer Full Charge Option", arguments: MainWeapon.getWeapons(of: .stringer))
    func stringerHasFullCharge(_ weapon: MainWeapon) throws {
        let options = try TestHelper.getFullInkTankOptions(for: weapon)
        try #require(!options.isEmpty)
        
        #expect(options.contains(type: .fullCharge))
    }
    
    // MARK: - Splatling Charge
    @Test("Splatling Charge Option", arguments: MainWeapon.getWeapons(of: .splatling))
    func splatlingHasCharge(_ weapon: MainWeapon) throws {
        let options = try TestHelper.getFullInkTankOptions(for: weapon)
        try #require(!options.isEmpty)
        
        #expect(options.contains(type: .splatlingCharge))
    }
    
    // MARK: - Shield Launch
    @Test("Brella Shield Launch Option", arguments: [
        MainWeapon.recycledBrella24MkI, .recycledBrella24MkII, .splatBrella, .sorellaBrella, .orderBrellaReplica, .tentaBrella, .tentaSorellaBrella
    ])
    func brellaHasShieldLaunch(_ weapon: MainWeapon) throws {
        let options = try TestHelper.getFullInkTankOptions(for: weapon)
        try #require(!options.isEmpty)
        
        #expect(options.contains(type: .shieldLaunch))
    }
    
    // MARK: - Dualie Roll
    @Test("Dualie Roll Option", arguments: MainWeapon.getWeapons(of: .dualie))
    func dualieHasRoll(_ weapon: MainWeapon) throws {
        let options = try TestHelper.getFullInkTankOptions(for: weapon)
        try #require(!options.isEmpty)
        
        #expect(options.contains(type: .dualieRoll))
    }
}
