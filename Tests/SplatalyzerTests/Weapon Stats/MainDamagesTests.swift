//
//  MainDamagesTests.swift
//  
//
//  Created by Christopher Engelbart on 3/2/24.
//

import XCTest
@testable import Splatalyzer

final class MainDamagesTests: XCTestCase {
    
    let mainInfo = try! JSONService().decode(WeaponInfoMain.self, from: "WeaponInfoMain")

    // MARK: - Blasters
    func test_StatHelper_mainDamages_blaster() throws {
        let data00 = try TestHelper.getMainData(for: .blaster, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .direct))
        XCTAssertTrue(dmgs00.contains(type: .splash))
        
        let data01 = try TestHelper.getMainData(for: .customBlaster, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .direct))
        XCTAssertTrue(dmgs01.contains(type: .splash))
    }

    func test_StatHelper_mainDamages_clashBlaster() throws {
        let data00 = try TestHelper.getMainData(for: .clashBlaster, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .direct))
        XCTAssertTrue(dmgs00.contains(type: .splash))
        
        let data01 = try TestHelper.getMainData(for: .clashBlasterNeo, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .direct))
        XCTAssertTrue(dmgs01.contains(type: .splash))
    }
    
    func test_StatHelper_mainDamages_lunaBlaster() throws {
        let data00 = try TestHelper.getMainData(for: .lunaBlaster, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .direct))
        XCTAssertTrue(dmgs00.contains(type: .splash))
        
        let data01 = try TestHelper.getMainData(for: .lunaBlasterNeo, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .direct))
        XCTAssertTrue(dmgs01.contains(type: .splash))
        
        let dataO = try TestHelper.getMainData(for: .orderBlasterReplica, with: mainInfo)
        
        let dmgsO = StatHelper.mainDamages(mainInfo: dataO)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgsO.contains(type: .direct))
        XCTAssertTrue(dmgsO.contains(type: .splash))
    }
    
    func test_StatHelper_mainDamages_rangeBlaster() throws {
        let data00 = try TestHelper.getMainData(for: .rangeBlaster, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .direct))
        XCTAssertTrue(dmgs00.contains(type: .splash))
        
        let data01 = try TestHelper.getMainData(for: .customRangeBlaster, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .direct))
        XCTAssertTrue(dmgs01.contains(type: .splash))
    }

    func test_StatHelper_mainDamages_rapidBlaster() throws {
        let data00 = try TestHelper.getMainData(for: .rapidBlaster, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .direct))
        XCTAssertTrue(dmgs00.contains(type: .splash))
        
        let data01 = try TestHelper.getMainData(for: .rapidBlasterDeco, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .direct))
        XCTAssertTrue(dmgs01.contains(type: .splash))
    }

    func test_StatHelper_mainDamages_rapidBlasterPro() throws {
        let data00 = try TestHelper.getMainData(for: .rapidBlasterPro, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .direct))
        XCTAssertTrue(dmgs00.contains(type: .splash))
        
        let data01 = try TestHelper.getMainData(for: .rapidBlasterProDeco, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .direct))
        XCTAssertTrue(dmgs01.contains(type: .splash))
    }

    func test_StatHelper_mainDamages_sblast() throws {
        let data00 = try TestHelper.getMainData(for: .sblast92, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .direct))
        XCTAssertTrue(dmgs00.contains(type: .splash))
        
        let data01 = try TestHelper.getMainData(for: .sblast91, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .direct))
        XCTAssertTrue(dmgs01.contains(type: .splash))
    }

    // MARK: - Brella
    func test_StatHelper_mainDamages_recycledBrella24() throws {
        let data00 = try TestHelper.getMainData(for: .recycledBrella24MkI, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        
        let data01 = try TestHelper.getMainData(for: .recycledBrella24MkII, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
    }
    
    func test_StatHelper_mainDamages_splatBrella() throws {
        let data00 = try TestHelper.getMainData(for: .splatBrella, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        
        let data01 = try TestHelper.getMainData(for: .sorellaBrella, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        
        let dataO = try TestHelper.getMainData(for: .orderBrellaReplica, with: mainInfo)
        
        let dmgsO = StatHelper.mainDamages(mainInfo: dataO)
        XCTAssertFalse(dmgsO.isEmpty)
        XCTAssertTrue(dmgsO.contains(type: .normalMax))
    }

    func test_StatHelper_mainDamages_tentaBrella() throws {
        let data00 = try TestHelper.getMainData(for: .tentaBrella, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        
        let data01 = try TestHelper.getMainData(for: .tentaSorellaBrella, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
    }
    
    func test_StatHelper_mainDamages_undercoverBrella() throws {
        let data00 = try TestHelper.getMainData(for: .undercoverBrella, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        
        let data01 = try TestHelper.getMainData(for: .undercoverSorellaBrella, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
    }

    // MARK: - Brush
    func test_StatHelper_mainDamages_inkbrush() throws {
        let data00 = try TestHelper.getMainData(for: .inkbrush, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .splashMax))
        XCTAssertTrue(dmgs00.contains(type: .splashMin))
        XCTAssertTrue(dmgs00.contains(type: .rollOver))
        
        let data01 = try TestHelper.getMainData(for: .inkbrushNouveau, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .splashMax))
        XCTAssertTrue(dmgs01.contains(type: .splashMin))
        XCTAssertTrue(dmgs01.contains(type: .rollOver))
    }

    func test_StatHelper_mainDamages_octobrush() throws {
        let data00 = try TestHelper.getMainData(for: .octobrush, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .splashMax))
        XCTAssertTrue(dmgs00.contains(type: .splashMin))
        XCTAssertTrue(dmgs00.contains(type: .rollOver))
        
        let data01 = try TestHelper.getMainData(for: .octobrushNouveau, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .splashMax))
        XCTAssertTrue(dmgs01.contains(type: .splashMin))
        XCTAssertTrue(dmgs01.contains(type: .rollOver))
        
        let dataO = try TestHelper.getMainData(for: .orderbrushReplica, with: mainInfo)
        
        let dmgsO = StatHelper.mainDamages(mainInfo: dataO)
        XCTAssertFalse(dmgsO.isEmpty)
        XCTAssertTrue(dmgsO.contains(type: .splashMax))
        XCTAssertTrue(dmgsO.contains(type: .splashMin))
        XCTAssertTrue(dmgsO.contains(type: .rollOver))
    }
    
    func test_StatHelper_mainDamages_painbrush() throws {
        let data00 = try TestHelper.getMainData(for: .painbrush, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .splashMax))
        XCTAssertTrue(dmgs00.contains(type: .splashMin))
        XCTAssertTrue(dmgs00.contains(type: .rollOver))
        
        let data01 = try TestHelper.getMainData(for: .painbrushNouveau, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .splashMax))
        XCTAssertTrue(dmgs01.contains(type: .splashMin))
        XCTAssertTrue(dmgs01.contains(type: .rollOver))
    }

    // MARK: - Charger
    func test_StatHelper_mainDamages_bamboozler14() throws {
        let data00 = try TestHelper.getMainData(for: .bamboozler14MkI, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .fullCharge))
        XCTAssertTrue(dmgs00.contains(type: .maxCharge))
        XCTAssertTrue(dmgs00.contains(type: .tapShot))
        
        let data01 = try TestHelper.getMainData(for: .bamboozler14MkII, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .fullCharge))
        XCTAssertTrue(dmgs01.contains(type: .maxCharge))
        XCTAssertTrue(dmgs01.contains(type: .tapShot))
    }

    func test_StatHelper_mainDamages_eliter4K() throws {
        let data00 = try TestHelper.getMainData(for: .eliter4K, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .fullCharge))
        XCTAssertTrue(dmgs00.contains(type: .maxCharge))
        
        let data01 = try TestHelper.getMainData(for: .customEliter4K, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .fullCharge))
        XCTAssertTrue(dmgs01.contains(type: .maxCharge))
    }
    
    func test_StatHelper_mainDamages_eliter4KScope() throws {
        let data00 = try TestHelper.getMainData(for: .eliter4KScope, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .fullCharge))
        XCTAssertTrue(dmgs00.contains(type: .maxCharge))
        XCTAssertTrue(dmgs00.contains(type: .tapShot))
        
        let data01 = try TestHelper.getMainData(for: .customEliter4KScope, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .fullCharge))
        XCTAssertTrue(dmgs01.contains(type: .maxCharge))
        XCTAssertTrue(dmgs01.contains(type: .tapShot))
    }

    func test_StatHelper_mainDamages_gooTuber() throws {
        let data00 = try TestHelper.getMainData(for: .gooTuber, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .fullCharge))
        XCTAssertTrue(dmgs00.contains(type: .maxCharge))
        XCTAssertTrue(dmgs00.contains(type: .tapShot))
        
        let data01 = try TestHelper.getMainData(for: .customGooTuber, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .fullCharge))
        XCTAssertTrue(dmgs01.contains(type: .maxCharge))
        XCTAssertTrue(dmgs01.contains(type: .tapShot))
    }

    func test_StatHelper_mainDamages_snipewriter() throws {
        let data00 = try TestHelper.getMainData(for: .snipewriter5H, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .fullCharge))
        XCTAssertTrue(dmgs00.contains(type: .maxCharge))
        XCTAssertTrue(dmgs00.contains(type: .tapShot))
        
        let data01 = try TestHelper.getMainData(for: .snipewriter5B, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .fullCharge))
        XCTAssertTrue(dmgs01.contains(type: .maxCharge))
        XCTAssertTrue(dmgs01.contains(type: .tapShot))
    }

    func test_StatHelper_mainDamages_splatCharger() throws {
        let data00 = try TestHelper.getMainData(for: .splatCharger, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .fullCharge))
        XCTAssertTrue(dmgs00.contains(type: .maxCharge))
        XCTAssertTrue(dmgs00.contains(type: .tapShot))
        
        let data01 = try TestHelper.getMainData(for: .zfSplatCharger, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .fullCharge))
        XCTAssertTrue(dmgs01.contains(type: .maxCharge))
        XCTAssertTrue(dmgs01.contains(type: .tapShot))
        
        let dataO = try TestHelper.getMainData(for: .orderChargerReplica, with: mainInfo)
        
        let dmgsO = StatHelper.mainDamages(mainInfo: dataO)
        XCTAssertFalse(dmgsO.isEmpty)
        XCTAssertTrue(dmgsO.contains(type: .fullCharge))
        XCTAssertTrue(dmgsO.contains(type: .maxCharge))
        XCTAssertTrue(dmgsO.contains(type: .tapShot))
    }

    func test_StatHelper_mainDamages_splatterscope() throws {
        let data00 = try TestHelper.getMainData(for: .splatterscope, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .fullCharge))
        XCTAssertTrue(dmgs00.contains(type: .maxCharge))
        XCTAssertTrue(dmgs00.contains(type: .tapShot))
        
        let data01 = try TestHelper.getMainData(for: .zfSplatterscope, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .fullCharge))
        XCTAssertTrue(dmgs01.contains(type: .maxCharge))
        XCTAssertTrue(dmgs01.contains(type: .tapShot))
    }

    func test_StatHelper_mainDamages_squiffer() throws {
        let data00 = try TestHelper.getMainData(for: .classicSquiffer, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .fullCharge))
        XCTAssertTrue(dmgs00.contains(type: .maxCharge))
        XCTAssertTrue(dmgs00.contains(type: .tapShot))
        
        let data01 = try TestHelper.getMainData(for: .newSquiffer, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .fullCharge))
        XCTAssertTrue(dmgs01.contains(type: .maxCharge))
        XCTAssertTrue(dmgs01.contains(type: .tapShot))
    }
    
    // MARK: - Dualies
    func test_StatHelper_mainDamages_dappleDualies() throws {
        let data00 = try TestHelper.getMainData(for: .dappleDualies, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .dappleDualiesNouveau, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_douserDualiesFF() throws {
        let data00 = try TestHelper.getMainData(for: .douserDualiesFF, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        XCTAssertTrue(dmgs00.contains(type: .turretMax))
        XCTAssertTrue(dmgs00.contains(type: .turretMin))
        
        let data01 = try TestHelper.getMainData(for: .customDouserDualiesFF, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
        XCTAssertTrue(dmgs01.contains(type: .turretMax))
        XCTAssertTrue(dmgs01.contains(type: .turretMin))
    }

    func test_StatHelper_mainDamages_dualieSquelchers() throws {
        let data00 = try TestHelper.getMainData(for: .dualieSquelchers, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .customDualieSquelchers, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_gloogaDualies() throws {
        let data00 = try TestHelper.getMainData(for: .gloogaDualies, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        XCTAssertTrue(dmgs00.contains(type: .turretMax))
        XCTAssertTrue(dmgs00.contains(type: .turretMin))
        
        let data01 = try TestHelper.getMainData(for: .gloogaDualiesDeco, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
        XCTAssertTrue(dmgs01.contains(type: .turretMax))
        XCTAssertTrue(dmgs01.contains(type: .turretMin))
    }
    
    func test_StatHelper_mainDamages_splatDualies() throws {
        let data00 = try TestHelper.getMainData(for: .splatDualies, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .enperrySplatDualies, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
        
        let dataO = try TestHelper.getMainData(for: .orderDualiesReplica, with: mainInfo)
        
        let dmgsO = StatHelper.mainDamages(mainInfo: dataO)
        XCTAssertFalse(dmgsO.isEmpty)
        XCTAssertTrue(dmgsO.contains(type: .normalMax))
        XCTAssertTrue(dmgsO.contains(type: .normalMin))
    }
    
    func test_StatHelper_mainDamages_tetraDualies() throws {
        let data00 = try TestHelper.getMainData(for: .darkTetraDualies, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .lightTetraDualies, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
        
        let dataO = try TestHelper.getMainData(for: .orderDualiesReplica, with: mainInfo)
        
        let dmgsO = StatHelper.mainDamages(mainInfo: dataO)
        XCTAssertFalse(dmgsO.isEmpty)
        XCTAssertTrue(dmgsO.contains(type: .normalMax))
        XCTAssertTrue(dmgsO.contains(type: .normalMin))
    }

    // MARK: - Roller
    func test_StatHelper_mainDamages_bigSwigRoller() throws {
        let data00 = try TestHelper.getMainData(for: .bigSwigRoller, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .splashVerticalMax))
        XCTAssertTrue(dmgs00.contains(type: .splashVerticalMin))
        XCTAssertTrue(dmgs00.contains(type: .splashHorizontalMax))
        XCTAssertTrue(dmgs00.contains(type: .splashHorizontalMin))
        XCTAssertTrue(dmgs00.contains(type: .rollOver))
        
        let data01 = try TestHelper.getMainData(for: .bigSwigRollerExpress, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .splashVerticalMax))
        XCTAssertTrue(dmgs01.contains(type: .splashVerticalMin))
        XCTAssertTrue(dmgs01.contains(type: .splashHorizontalMax))
        XCTAssertTrue(dmgs01.contains(type: .splashHorizontalMin))
        XCTAssertTrue(dmgs01.contains(type: .rollOver))
    }

    func test_StatHelper_mainDamages_carbonRoller() throws {
        let data00 = try TestHelper.getMainData(for: .carbonRoller, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .splashVerticalMax))
        XCTAssertTrue(dmgs00.contains(type: .splashVerticalMin))
        XCTAssertTrue(dmgs00.contains(type: .splashHorizontalMax))
        XCTAssertTrue(dmgs00.contains(type: .splashHorizontalMin))
        XCTAssertTrue(dmgs00.contains(type: .rollOver))
        
        let data01 = try TestHelper.getMainData(for: .carbonRollerDeco, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .splashVerticalMax))
        XCTAssertTrue(dmgs01.contains(type: .splashVerticalMin))
        XCTAssertTrue(dmgs01.contains(type: .splashHorizontalMax))
        XCTAssertTrue(dmgs01.contains(type: .splashHorizontalMin))
        XCTAssertTrue(dmgs01.contains(type: .rollOver))
    }

    func test_StatHelper_mainDamages_dynamoRoller() throws {
        let data00 = try TestHelper.getMainData(for: .dynamoRoller, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .splashVerticalMax))
        XCTAssertTrue(dmgs00.contains(type: .splashVerticalMin))
        XCTAssertTrue(dmgs00.contains(type: .splashHorizontalMax))
        XCTAssertTrue(dmgs00.contains(type: .splashHorizontalMin))
        XCTAssertTrue(dmgs00.contains(type: .rollOver))
        
        let data01 = try TestHelper.getMainData(for: .goldDynamoRoller, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .splashVerticalMax))
        XCTAssertTrue(dmgs01.contains(type: .splashVerticalMin))
        XCTAssertTrue(dmgs01.contains(type: .splashHorizontalMax))
        XCTAssertTrue(dmgs01.contains(type: .splashHorizontalMin))
        XCTAssertTrue(dmgs01.contains(type: .rollOver))
    }
    
    func test_StatHelper_mainDamages_flingzaRoller() throws {
        let data00 = try TestHelper.getMainData(for: .flingzaRoller, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .splashVerticalMax))
        XCTAssertTrue(dmgs00.contains(type: .splashVerticalMin))
        XCTAssertTrue(dmgs00.contains(type: .splashHorizontalMax))
        XCTAssertTrue(dmgs00.contains(type: .splashHorizontalMin))
        XCTAssertTrue(dmgs00.contains(type: .rollOver))
        
        let data01 = try TestHelper.getMainData(for: .foilFlingzaRoller, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .splashVerticalMax))
        XCTAssertTrue(dmgs01.contains(type: .splashVerticalMin))
        XCTAssertTrue(dmgs01.contains(type: .splashHorizontalMax))
        XCTAssertTrue(dmgs01.contains(type: .splashHorizontalMin))
        XCTAssertTrue(dmgs01.contains(type: .rollOver))
    }

    func test_StatHelper_mainDamages_splatRoller() throws {
        let data00 = try TestHelper.getMainData(for: .splatRoller, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .splashVerticalMax))
        XCTAssertTrue(dmgs00.contains(type: .splashVerticalMin))
        XCTAssertTrue(dmgs00.contains(type: .splashHorizontalMax))
        XCTAssertTrue(dmgs00.contains(type: .splashHorizontalMin))
        XCTAssertTrue(dmgs00.contains(type: .rollOver))
        
        let data01 = try TestHelper.getMainData(for: .krakOnSplatRoller, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .splashVerticalMax))
        XCTAssertTrue(dmgs01.contains(type: .splashVerticalMin))
        XCTAssertTrue(dmgs01.contains(type: .splashHorizontalMax))
        XCTAssertTrue(dmgs01.contains(type: .splashHorizontalMin))
        XCTAssertTrue(dmgs01.contains(type: .rollOver))
        
        let dataO = try TestHelper.getMainData(for: .orderRollerReplica, with: mainInfo)
        
        let dmgsO = StatHelper.mainDamages(mainInfo: dataO)
        XCTAssertFalse(dmgsO.isEmpty)
        XCTAssertTrue(dmgsO.contains(type: .splashVerticalMax))
        XCTAssertTrue(dmgsO.contains(type: .splashVerticalMin))
        XCTAssertTrue(dmgsO.contains(type: .splashHorizontalMax))
        XCTAssertTrue(dmgsO.contains(type: .splashHorizontalMin))
        XCTAssertTrue(dmgsO.contains(type: .rollOver))
    }

    // MARK: - Shooter
    func test_StatHelper_mainDamages_52Gal() throws {
        let data00 = try TestHelper.getMainData(for: .gal52, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .gal52Deco, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_96Gal() throws {
        let data00 = try TestHelper.getMainData(for: .gal96, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .gal96Deco, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_aerospray() throws {
        let data00 = try TestHelper.getMainData(for: .aerosprayMG, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .aerosprayRG, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_h3Nozzlenose() throws {
        let data00 = try TestHelper.getMainData(for: .h3Nozzlenose, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .h3NozzlenoseD, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_jetSquelcher() throws {
        let data00 = try TestHelper.getMainData(for: .jetSquelcher, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .customJetSquelcher, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }
    
    func test_StatHelper_mainDamages_l3Nozzlenose() throws {
        let data00 = try TestHelper.getMainData(for: .l3Nozzlenose, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .l3NozzlenoseD, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_nzap() throws {
        let data00 = try TestHelper.getMainData(for: .nzap85, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .nzap89, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_splashomatic() throws {
        let data00 = try TestHelper.getMainData(for: .splashomatic, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .neoSplashomatic, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_splattershot() throws {
        let data00 = try TestHelper.getMainData(for: .splattershot, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .tentatekSplattershot, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
        
        let dataH = try TestHelper.getMainData(for: .heroShotReplica, with: mainInfo)
        
        let dmgsH = StatHelper.mainDamages(mainInfo: dataH)
        XCTAssertFalse(dmgsH.isEmpty)
        XCTAssertTrue(dmgsH.contains(type: .normalMax))
        XCTAssertTrue(dmgsH.contains(type: .normalMin))
        
        let dataO = try TestHelper.getMainData(for: .orderShotReplica, with: mainInfo)
        
        let dmgsO = StatHelper.mainDamages(mainInfo: dataO)
        XCTAssertFalse(dmgsO.isEmpty)
        XCTAssertTrue(dmgsO.contains(type: .normalMax))
        XCTAssertTrue(dmgsO.contains(type: .normalMin))
        
        let dataOct = try TestHelper.getMainData(for: .octoShotReplica, with: mainInfo)
        
        let dmgsOct = StatHelper.mainDamages(mainInfo: dataOct)
        XCTAssertFalse(dmgsOct.isEmpty)
        XCTAssertTrue(dmgsOct.contains(type: .normalMax))
        XCTAssertTrue(dmgsOct.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_splattershotJr() throws {
        let data00 = try TestHelper.getMainData(for: .splattershotJr, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .splattershotJr, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }
    
    func test_StatHelper_mainDamages_splattershotNova() throws {
        let data00 = try TestHelper.getMainData(for: .splattershotNova, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .annakiSplattershotNova, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_splattershotPro() throws {
        let data00 = try TestHelper.getMainData(for: .splattershotPro, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .forgeSplattershotPro, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_splooshomatic() throws {
        let data00 = try TestHelper.getMainData(for: .splooshomatic, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .neoSplooshomatic, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_squeezer() throws {
        let data00 = try TestHelper.getMainData(for: .squeezer, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .foilSqueezer, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    // MARK: - Slosher
    func test_StatHelper_mainDamages_bloblobber() throws {
        let data00 = try TestHelper.getMainData(for: .bloblobber, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .direct))
        
        let data01 = try TestHelper.getMainData(for: .bloblobberDeco, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .direct))
    }

    func test_StatHelper_mainDamages_dreadWringer() throws {
        let data00 = try TestHelper.getMainData(for: .dreadWringer, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .directMax))
        XCTAssertTrue(dmgs00.contains(type: .directMin))
        
        let data01 = try TestHelper.getMainData(for: .dreadWringerD, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .directMax))
        XCTAssertTrue(dmgs01.contains(type: .directMin))
    }

    func test_StatHelper_mainDamages_explosher() throws {
        let data00 = try TestHelper.getMainData(for: .explosher, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .direct))
        XCTAssertTrue(dmgs00.contains(type: .splash))
        
        let data01 = try TestHelper.getMainData(for: .customExplosher, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .direct))
        XCTAssertTrue(dmgs01.contains(type: .splash))
    }

    func test_StatHelper_mainDamages_slosher() throws {
        let data00 = try TestHelper.getMainData(for: .slosher, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .directMax))
        XCTAssertTrue(dmgs00.contains(type: .directMin))
        
        let data01 = try TestHelper.getMainData(for: .slosherDeco, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .directMax))
        XCTAssertTrue(dmgs01.contains(type: .directMin))
        
        let dataO = try TestHelper.getMainData(for: .orderSlosherReplica, with: mainInfo)
        
        let dmgsO = StatHelper.mainDamages(mainInfo: dataO)
        XCTAssertFalse(dmgsO.isEmpty)
        XCTAssertTrue(dmgsO.contains(type: .directMax))
        XCTAssertTrue(dmgsO.contains(type: .directMin))
    }

    func test_StatHelper_mainDamages_sloshingMachine() throws {
        let data00 = try TestHelper.getMainData(for: .sloshingMachine, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .directMax))
        XCTAssertTrue(dmgs00.contains(type: .directMin))
        XCTAssertTrue(dmgs00.contains(type: .splash))
        
        let data01 = try TestHelper.getMainData(for: .sloshingMachineNeo, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .directMax))
        XCTAssertTrue(dmgs01.contains(type: .directMin))
        XCTAssertTrue(dmgs01.contains(type: .splash))
    }

    func test_StatHelper_mainDamages_triSlosher() throws {
        let data00 = try TestHelper.getMainData(for: .triSlosher, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .directMax))
        XCTAssertTrue(dmgs00.contains(type: .directMin))
        
        let data01 = try TestHelper.getMainData(for: .triSlosherNouveau, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .directMax))
        XCTAssertTrue(dmgs01.contains(type: .directMin))
    }

    // MARK: - Splatana
    func test_StatHelper_mainDamages_mintDecavitator() throws {
        let data00 = try TestHelper.getMainData(for: .mintDecavitator, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .splatanaVertical))
        XCTAssertTrue(dmgs00.contains(type: .splatanaVerticalDirect))
        XCTAssertTrue(dmgs00.contains(type: .splatanaHorizontal))
        XCTAssertTrue(dmgs00.contains(type: .splatanaHorizontalDirect))
        
        let data01 = try TestHelper.getMainData(for: .charcoalDecavitator, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .splatanaVertical))
        XCTAssertTrue(dmgs01.contains(type: .splatanaVerticalDirect))
        XCTAssertTrue(dmgs01.contains(type: .splatanaHorizontal))
        XCTAssertTrue(dmgs01.contains(type: .splatanaHorizontalDirect))
    }

    
    func test_StatHelper_mainDamages_splatanaStamper() throws {
        let data00 = try TestHelper.getMainData(for: .splatanaStamper, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .splatanaVertical))
        XCTAssertTrue(dmgs00.contains(type: .splatanaVerticalDirect))
        XCTAssertTrue(dmgs00.contains(type: .splatanaHorizontal))
        XCTAssertTrue(dmgs00.contains(type: .splatanaHorizontalDirect))
        
        let data01 = try TestHelper.getMainData(for: .splatanaStamperNouveau, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .splatanaVertical))
        XCTAssertTrue(dmgs01.contains(type: .splatanaVerticalDirect))
        XCTAssertTrue(dmgs01.contains(type: .splatanaHorizontal))
        XCTAssertTrue(dmgs01.contains(type: .splatanaHorizontalDirect))
        
        let dataO = try TestHelper.getMainData(for: .orderSplatanaReplica, with: mainInfo)
        
        let dmgsO = StatHelper.mainDamages(mainInfo: dataO)
        XCTAssertFalse(dmgsO.isEmpty)
        XCTAssertTrue(dmgsO.contains(type: .splatanaVertical))
        XCTAssertTrue(dmgsO.contains(type: .splatanaVerticalDirect))
        XCTAssertTrue(dmgsO.contains(type: .splatanaHorizontal))
        XCTAssertTrue(dmgsO.contains(type: .splatanaHorizontalDirect))
    }

    func test_StatHelper_mainDamages_splatanaWiper() throws {
        let data00 = try TestHelper.getMainData(for: .splatanaWiper, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .splatanaVertical))
        XCTAssertTrue(dmgs00.contains(type: .splatanaVerticalDirect))
        XCTAssertTrue(dmgs00.contains(type: .splatanaHorizontal))
        XCTAssertTrue(dmgs00.contains(type: .splatanaHorizontalDirect))
        
        let data01 = try TestHelper.getMainData(for: .splatanaWiperDeco, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .splatanaVertical))
        XCTAssertTrue(dmgs01.contains(type: .splatanaVerticalDirect))
        XCTAssertTrue(dmgs01.contains(type: .splatanaHorizontal))
        XCTAssertTrue(dmgs01.contains(type: .splatanaHorizontalDirect))
    }

    // MARK: - Splatling
    func test_StatHelper_mainDamages_ballpointSplatling() throws {
        let data00 = try TestHelper.getMainData(for: .ballpointSplatling, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .ballpointSplatlingNouveau, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_heavyEditSplatling() throws {
        let data00 = try TestHelper.getMainData(for: .heavyEditSplatling, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .heavyEditSplatlingNouveau, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_heavySplatling() throws {
        let data00 = try TestHelper.getMainData(for: .heavySplatling, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .heavySplatlingDeco, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
        
        let dataO = try TestHelper.getMainData(for: .orderSplatlingReplica, with: mainInfo)
        
        let dmgsO = StatHelper.mainDamages(mainInfo: dataO)
        XCTAssertFalse(dmgsO.isEmpty)
        XCTAssertTrue(dmgsO.contains(type: .normalMax))
        XCTAssertTrue(dmgsO.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_hydraSplatling() throws {
        let data00 = try TestHelper.getMainData(for: .hydraSplatling, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMaxFullCharge))
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .customHydraSplatling, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMaxFullCharge))
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_miniSplatling() throws {
        let data00 = try TestHelper.getMainData(for: .miniSplatling, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .zinkMiniSplatling, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_nautilus() throws {
        let data00 = try TestHelper.getMainData(for: .nautilus47, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .nautilus79, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    // MARK: - Stringer
    func test_StatHelper_mainDamages_reeflux450() throws {
        let data00 = try TestHelper.getMainData(for: .reeflux450, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        
        let data01 = try TestHelper.getMainData(for: .reeflux450Deco, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
    }

    func test_StatHelper_mainDamages_triStringer() throws {
        let data00 = try TestHelper.getMainData(for: .triStringer, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        XCTAssertTrue(dmgs00.contains(type: .splash))
        
        let data01 = try TestHelper.getMainData(for: .inklineTriStringer, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
        XCTAssertTrue(dmgs01.contains(type: .splash))
        
        let dataO = try TestHelper.getMainData(for: .orderStringerReplica, with: mainInfo)
        
        let dmgsO = StatHelper.mainDamages(mainInfo: dataO)
        XCTAssertFalse(dmgsO.isEmpty)
        XCTAssertTrue(dmgsO.contains(type: .normalMax))
        XCTAssertTrue(dmgsO.contains(type: .normalMin))
        XCTAssertTrue(dmgsO.contains(type: .splash))
    }

    func test_StatHelper_mainDamages_wellspringV() throws {
        let data00 = try TestHelper.getMainData(for: .wellspringV, with: mainInfo)
        
        let dmgs00 = StatHelper.mainDamages(mainInfo: data00)
        XCTAssertFalse(dmgs00.isEmpty)
        XCTAssertTrue(dmgs00.contains(type: .normalMax))
        XCTAssertTrue(dmgs00.contains(type: .normalMin))
        XCTAssertTrue(dmgs00.contains(type: .splash))
        
        let data01 = try TestHelper.getMainData(for: .customWellspringV, with: mainInfo)
        
        let dmgs01 = StatHelper.mainDamages(mainInfo: data01)
        XCTAssertFalse(dmgs01.isEmpty)
        XCTAssertTrue(dmgs01.contains(type: .normalMax))
        XCTAssertTrue(dmgs01.contains(type: .normalMin))
        XCTAssertTrue(dmgs01.contains(type: .splash))
    }
}
