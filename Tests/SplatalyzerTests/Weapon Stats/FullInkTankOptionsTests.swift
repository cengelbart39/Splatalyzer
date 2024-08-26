//
//  FullInkTankOptionsTests.swift
//  
//
//  Created by Christopher Engelbart on 3/1/24.
//

import XCTest
@testable import Splatalyzer

final class FullInkTankOptionsTests: XCTestCase {
    
    let service = JSONService()
    
    let mainInfo = try! JSONService().decode(WeaponInfoMain.self, from: "WeaponInfoMain")

    // MARK: - Normal
    func test_StatHelper_fullInkTankOptions_blaster_containsNormal_true() throws {

        var options = try self.getInkTankOptions(for: .blaster)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .customBlaster)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .clashBlaster)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .clashBlasterNeo)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .lunaBlaster)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .lunaBlasterNeo)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .orderBlasterReplica)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .rangeBlaster)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .customRangeBlaster)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .rapidBlaster)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .rapidBlasterDeco)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .rapidBlasterPro)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .rapidBlasterProDeco)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .sblast92)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .sblast91)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
    }
    
    func test_StatHelper_fullInkTankOptions_brella_containsNormal_true() throws {

        var options = try self.getInkTankOptions(for: .recycledBrella24MkI)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .recycledBrella24MkII)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .splatBrella)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .sorellaBrella)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .orderBrellaReplica)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .tentaBrella)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .tentaSorellaBrella)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .undercoverBrella)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .undercoverSorellaBrella)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
    }
    
    func test_StatHelper_fullInkTankOptions_dualie_containsNormal_true() throws {
       
        var options = try self.getInkTankOptions(for: .dappleDualies)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .dappleDualiesNouveau)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .douserDualiesFF)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .customDouserDualiesFF)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .dualieSquelchers)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .customDualieSquelchers)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .gloogaDualies)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .gloogaDualiesDeco)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .splatDualies)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .enperrySplatDualies)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .orderDualiesReplica)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .darkTetraDualies)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .lightTetraDualies)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
    }

    func test_StatHelper_fullInkTankOptions_shooter_containsNormal_true() throws {
        
        var options = try self.getInkTankOptions(for: .gal52)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .gal52Deco)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .gal96)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .gal96Deco)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .aerosprayMG)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .aerosprayRG)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .h3Nozzlenose)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .h3NozzlenoseD)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .jetSquelcher)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .customJetSquelcher)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .l3Nozzlenose)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .l3NozzlenoseD)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .nzap85)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .nzap89)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .splashomatic)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .neoSplashomatic)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .splattershot)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .tentatekSplattershot)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .heroShotReplica)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .octoShotReplica)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .orderShotReplica)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .splattershotJr)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .customSplattershotJr)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .splattershotNova)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .splattershotPro)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .forgeSplattershotPro)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .splooshomatic)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .neoSplooshomatic)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .squeezer)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
        
        options = try self.getInkTankOptions(for: .foilSqueezer)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .normal))
    }
    
    // MARK: - Swing
    func test_StatHelper_fullInkTankOptions_roller_containsSwing_true() throws {
        var options = try self.getInkTankOptions(for: .bigSwigRoller)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .bigSwigRollerExpress)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .carbonRoller)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .carbonRollerDeco)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .dynamoRoller)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .goldDynamoRoller)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .splatRoller)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .krakOnSplatRoller)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .orderRollerReplica)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
    }

    
    func test_StatHelper_fullInkTankOptions_brush_containsSwing_true() throws {

        var options = try self.getInkTankOptions(for: .inkbrush)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .inkbrushNouveau)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .octobrush)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .octobrushNouveau)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .orderbrushReplica)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .painbrush)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .painbrushNouveau)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
    }

    func test_StatHelper_fullInkTankOptions_splatana_containsSwing_true() throws {
        var options = try self.getInkTankOptions(for: .mintDecavitator)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .charcoalDecavitator)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .splatanaStamper)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .splatanaStamperNouveau)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .orderSplatanaReplica)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .splatanaWiper)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
        
        options = try self.getInkTankOptions(for: .splatanaWiperDeco)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .swing))
    }
    
    // MARK: - Slosh
    func test_StatHelper_fullInkTankOptions_slosher_containsSlosh_true() throws {

        var options = try self.getInkTankOptions(for: .bloblobber)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .slosh))
        
        options = try self.getInkTankOptions(for: .bloblobberDeco)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .slosh))
        
        options = try self.getInkTankOptions(for: .dreadWringer)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .slosh))
        
        options = try self.getInkTankOptions(for: .dreadWringerD)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .slosh))
        
        options = try self.getInkTankOptions(for: .explosher)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .slosh))
        
        options = try self.getInkTankOptions(for: .customExplosher)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .slosh))
        
        options = try self.getInkTankOptions(for: .slosher)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .slosh))
        
        options = try self.getInkTankOptions(for: .slosherDeco)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .slosh))
        
        options = try self.getInkTankOptions(for: .orderSlosherReplica)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .slosh))
        
        options = try self.getInkTankOptions(for: .sloshingMachine)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .slosh))
        
        options = try self.getInkTankOptions(for: .sloshingMachineNeo)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .slosh))
        
        options = try self.getInkTankOptions(for: .triSlosher)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .slosh))
        
        options = try self.getInkTankOptions(for: .triSlosherNouveau)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .slosh))
    }

    // MARK: - Vertical Swing
    func test_StatHelper_fullInkTankOptions_roller_containsVerticalSwing_true() throws {
        var options = try self.getInkTankOptions(for: .flingzaRoller)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .verticalSwing))
        
        options = try self.getInkTankOptions(for: .foilFlingzaRoller)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .verticalSwing))
    }

    // MARK: - Horizontal Swing
    func test_StatHelper_fullInkTankOptions_roller_containsHorizontalSwing_true() throws {
        var options = try self.getInkTankOptions(for: .flingzaRoller)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .horizontalSwing))
        
        options = try self.getInkTankOptions(for: .foilFlingzaRoller)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .horizontalSwing))
    }

    // MARK: - Tap Shot
    func test_StatHelper_fullInkTankOptions_charger_containsTapShot_true() throws {

        var options = try self.getInkTankOptions(for: .bamboozler14MkI)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .tapShot))
        
        options = try self.getInkTankOptions(for: .bamboozler14MkII)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .tapShot))
        
        options = try self.getInkTankOptions(for: .eliter4K)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .tapShot))
        
        options = try self.getInkTankOptions(for: .customEliter4K)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .tapShot))
        
        options = try self.getInkTankOptions(for: .eliter4KScope)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .tapShot))
        
        options = try self.getInkTankOptions(for: .customEliter4KScope)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .tapShot))
        
        options = try self.getInkTankOptions(for: .gooTuber)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .tapShot))
        
        options = try self.getInkTankOptions(for: .customGooTuber)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .tapShot))
        
        options = try self.getInkTankOptions(for: .snipewriter5H)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .tapShot))
        
        options = try self.getInkTankOptions(for: .snipewriter5B)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .tapShot))
        
        options = try self.getInkTankOptions(for: .splatCharger)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .tapShot))
        
        options = try self.getInkTankOptions(for: .zfSplatCharger)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .tapShot))
        
        options = try self.getInkTankOptions(for: .orderChargerReplica)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .tapShot))
        
        options = try self.getInkTankOptions(for: .splatterscope)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .tapShot))
        
        options = try self.getInkTankOptions(for: .zfSplatterscope)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .tapShot))
        
        options = try self.getInkTankOptions(for: .classicSquiffer)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .tapShot))
        
        options = try self.getInkTankOptions(for: .newSquiffer)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .tapShot))
    }

    // MARK: - Full Charge
    func test_StatHelper_fullInkTankOptions_charger_containsFullCharge_true() throws {

        var options = try self.getInkTankOptions(for: .bamboozler14MkI)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .bamboozler14MkII)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .eliter4K)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .customEliter4K)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .eliter4KScope)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .customEliter4KScope)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .gooTuber)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .customGooTuber)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .snipewriter5H)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .snipewriter5B)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .splatCharger)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .zfSplatCharger)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .orderChargerReplica)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .splatterscope)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .zfSplatterscope)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .classicSquiffer)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .newSquiffer)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
    }
    
    func test_StatHelper_fullInkTankOptions_splatana_containsFullCharge_true() throws {

        var options = try self.getInkTankOptions(for: .mintDecavitator)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .charcoalDecavitator)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .splatanaStamper)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .splatanaStamperNouveau)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .orderSplatanaReplica)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .splatanaWiper)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .splatanaWiperDeco)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
    }

    func test_StatHelper_fullInkTankOptions_stringer_containsFullCharge_true() throws {

        var options = try self.getInkTankOptions(for: .reeflux450)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .reeflux450)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .triStringer)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .inklineTriStringer)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .orderStringerReplica)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .wellspringV)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
        
        options = try self.getInkTankOptions(for: .customWellspringV)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .fullCharge))
    }
    
    // MARK: - Splatling Charge
    func test_StatHelper_fullInkTankOptions_splatling_containsSplatlingCharge_true() throws {

        var options = try self.getInkTankOptions(for: .ballpointSplatling)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .splatlingCharge))
        
        options = try self.getInkTankOptions(for: .ballpointSplatlingNouveau)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .splatlingCharge))
        
        options = try self.getInkTankOptions(for: .heavyEditSplatling)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .splatlingCharge))
        
        options = try self.getInkTankOptions(for: .heavyEditSplatlingNouveau)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .splatlingCharge))
        
        options = try self.getInkTankOptions(for: .heavySplatling)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .splatlingCharge))
        
        options = try self.getInkTankOptions(for: .heavySplatlingDeco)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .splatlingCharge))
        
        options = try self.getInkTankOptions(for: .orderSplatlingReplica)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .splatlingCharge))
        
        options = try self.getInkTankOptions(for: .hydraSplatling)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .splatlingCharge))
        
        options = try self.getInkTankOptions(for: .customHydraSplatling)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .splatlingCharge))
        
        options = try self.getInkTankOptions(for: .miniSplatling)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .splatlingCharge))
        
        options = try self.getInkTankOptions(for: .zinkMiniSplatling)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .splatlingCharge))
        
        options = try self.getInkTankOptions(for: .nautilus47)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .splatlingCharge))
        
        options = try self.getInkTankOptions(for: .nautilus79)
        XCTAssertFalse(options.isEmpty)
    }
    
    // MARK: - Shield Launch
    func test_StatHelper_fullInkTankOptions_brella_containsShieldLaunch_true() throws {

        var options = try self.getInkTankOptions(for: .recycledBrella24MkI)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .shieldLaunch))
        
        options = try self.getInkTankOptions(for: .recycledBrella24MkII)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .shieldLaunch))
        
        options = try self.getInkTankOptions(for: .splatBrella)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .shieldLaunch))
        
        options = try self.getInkTankOptions(for: .sorellaBrella)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .shieldLaunch))
        
        options = try self.getInkTankOptions(for: .orderBrellaReplica)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .shieldLaunch))
        
        options = try self.getInkTankOptions(for: .tentaBrella)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .shieldLaunch))
        
        options = try self.getInkTankOptions(for: .tentaSorellaBrella)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .shieldLaunch))
    }

    // MARK: - Dualie Roll
    func test_StatHelper_fullInkTankOptions_dualie_containsDualieRoll_true() throws {
       
        var options = try self.getInkTankOptions(for: .dappleDualies)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .dualieRoll))
        
        options = try self.getInkTankOptions(for: .dappleDualiesNouveau)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .dualieRoll))
        
        options = try self.getInkTankOptions(for: .douserDualiesFF)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .dualieRoll))
        
        options = try self.getInkTankOptions(for: .customDouserDualiesFF)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .dualieRoll))
        
        options = try self.getInkTankOptions(for: .dualieSquelchers)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .dualieRoll))
        
        options = try self.getInkTankOptions(for: .customDualieSquelchers)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .dualieRoll))
        
        options = try self.getInkTankOptions(for: .gloogaDualies)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .dualieRoll))
        
        options = try self.getInkTankOptions(for: .gloogaDualiesDeco)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .dualieRoll))
        
        options = try self.getInkTankOptions(for: .splatDualies)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .dualieRoll))
        
        options = try self.getInkTankOptions(for: .enperrySplatDualies)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .dualieRoll))
        
        options = try self.getInkTankOptions(for: .orderDualiesReplica)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .dualieRoll))
        
        options = try self.getInkTankOptions(for: .darkTetraDualies)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .dualieRoll))
        
        options = try self.getInkTankOptions(for: .lightTetraDualies)
        XCTAssertFalse(options.isEmpty)
        XCTAssertTrue(options.contains(type: .dualieRoll))
    }

    // MARK: - Helper Functions
    /// Prepares parameters and performs `StatHelper.fullInkTankOptions(ap:abilities:mainInfo:subInfo:)`
    func getInkTankOptions(for weapon: MainWeapon) throws -> [Int : [InkTankOption]] {
        let mainItem = self.mainInfo.getItem(for: weapon)!
        let subWeapon = mainItem.subWeapon.toSubWeapon()!
        
        let mainData = try TestHelper.getMainData(for: weapon, with: self.mainInfo)
        let subData = try TestHelper.getSubData(for: subWeapon)
        
        return StatHelper.fullInkTankOptions(ap: AbilityPoints(), mainInfo: mainData, subInfo: subData)
    }
}
