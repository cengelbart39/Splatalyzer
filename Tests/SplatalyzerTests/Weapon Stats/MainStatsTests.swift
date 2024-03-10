//
//  MainStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 3/4/24.
//

import XCTest
@testable import Splatalyzer

final class MainStatsTests: XCTestCase {

    let ap = AbilityPoints()
    
    let values = try! JSONService().decode(AbilityValues.self, from: "ability-values")
    
    let mainInfo = try! JSONService().decode(WeaponInfoMain.self, from: "WeaponInfoMain")

    // MARK: - Blasters
    func test_MainWeaponStats_init_blaster() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .blaster)
        XCTAssertEqual(mainStats00.weapon, .blaster)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .customBlaster)
        XCTAssertEqual(mainStats01.weapon, .customBlaster)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
    }
    
    func test_MainWeaponStats_init_clashBlaster() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .clashBlaster)
        XCTAssertEqual(mainStats00.weapon, .clashBlaster)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .clashBlasterNeo)
        XCTAssertEqual(mainStats01.weapon, .clashBlasterNeo)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
    }

    func test_MainWeaponStats_init_lunaBlaster() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .lunaBlaster)
        XCTAssertEqual(mainStats00.weapon, .lunaBlaster)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .lunaBlasterNeo)
        XCTAssertEqual(mainStats01.weapon, .lunaBlasterNeo)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
        
        let mainStatsO = try self.getMainWeaponStats(for: .orderBlasterReplica)
        XCTAssertEqual(mainStatsO.weapon, .orderBlasterReplica)
        XCTAssertNotNil(mainStatsO.shotSpreadAir)
        XCTAssertNotNil(mainStatsO.shotSpreadGround)
        XCTAssertNotNil(mainStatsO.whiteInkSeconds)
    }

    func test_MainWeaponStats_init_rangeBlaster() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .rangeBlaster)
        XCTAssertEqual(mainStats00.weapon, .rangeBlaster)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
    }

    func test_MainWeaponStats_init_rapidBlaster() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .rapidBlaster)
        XCTAssertEqual(mainStats00.weapon, .rapidBlaster)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .rapidBlasterDeco)
        XCTAssertEqual(mainStats01.weapon, .rapidBlasterDeco)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
    }

    func test_MainWeaponStats_init_rapidBlasterPro() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .rapidBlasterPro)
        XCTAssertEqual(mainStats00.weapon, .rapidBlasterPro)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .rapidBlasterProDeco)
        XCTAssertEqual(mainStats01.weapon, .rapidBlasterProDeco)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
    }

    func test_MainWeaponStats_init_sblast() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .sblast92)
        XCTAssertEqual(mainStats00.weapon, .sblast92)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .sblast91)
        XCTAssertEqual(mainStats01.weapon, .sblast91)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
    }

    // MARK: - Brellas
    func test_MainWeaponStats_init_recycledBrella24() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .recycledBrella24MkI)
        XCTAssertEqual(mainStats00.weapon, .recycledBrella24MkI)
        XCTAssertNotNil(mainStats00.brellaCanopyHp)
    }
    
    func test_MainWeaponStats_init_splatBrella() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .splatBrella)
        XCTAssertEqual(mainStats00.weapon, .splatBrella)
        XCTAssertFalse(mainStats00.exists())
        
        let mainStats01 = try self.getMainWeaponStats(for: .sorellaBrella)
        XCTAssertEqual(mainStats01.weapon, .sorellaBrella)
        XCTAssertNotNil(mainStats01.exists())
        
        let mainStatsO = try self.getMainWeaponStats(for: .orderBrellaReplica)
        XCTAssertEqual(mainStatsO.weapon, .orderBrellaReplica)
        XCTAssertFalse(mainStatsO.exists())
    }

    func test_MainWeaponStats_init_tentaBrella() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .tentaBrella)
        XCTAssertEqual(mainStats00.weapon, .tentaBrella)
        XCTAssertNotNil(mainStats00.brellaCanopyHp)
        
        let mainStats01 = try self.getMainWeaponStats(for: .tentaSorellaBrella)
        XCTAssertEqual(mainStats01.weapon, .tentaSorellaBrella)
        XCTAssertNotNil(mainStats01.brellaCanopyHp)
    }

    func test_MainWeaponStats_init_undercoverBrella() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .undercoverBrella)
        XCTAssertEqual(mainStats00.weapon, .undercoverBrella)
        XCTAssertNotNil(mainStats00.brellaCanopyHp)
        
        let mainStats01 = try self.getMainWeaponStats(for: .undercoverSorellaBrella)
        XCTAssertEqual(mainStats01.weapon, .undercoverSorellaBrella)
        XCTAssertNotNil(mainStats01.brellaCanopyHp)
    }
    
    // MARK: - Brushes
    func test_MainWeaponStats_init_inkbrush() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .inkbrush)
        XCTAssertEqual(mainStats00.weapon, .inkbrush)
        XCTAssertFalse(mainStats00.exists())
        
        let mainStats01 = try self.getMainWeaponStats(for: .inkbrushNouveau)
        XCTAssertEqual(mainStats01.weapon, .inkbrushNouveau)
        XCTAssertFalse(mainStats01.exists())
    }

    func test_MainWeaponStats_init_octobrush() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .octobrush)
        XCTAssertEqual(mainStats00.weapon, .octobrush)
        XCTAssertFalse(mainStats00.exists())
        
        let mainStats01 = try self.getMainWeaponStats(for: .octobrushNouveau)
        XCTAssertEqual(mainStats01.weapon, .octobrushNouveau)
        XCTAssertFalse(mainStats01.exists())
        
        let mainStatsO = try self.getMainWeaponStats(for: .orderbrushReplica)
        XCTAssertEqual(mainStatsO.weapon, .orderbrushReplica)
        XCTAssertFalse(mainStatsO.exists())
    }

    func test_MainWeaponStats_init_painbrush() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .painbrush)
        XCTAssertEqual(mainStats00.weapon, .painbrush)
        XCTAssertFalse(mainStats00.exists())
        
        let mainStats01 = try self.getMainWeaponStats(for: .painbrushNouveau)
        XCTAssertEqual(mainStats01.weapon, .painbrushNouveau)
        XCTAssertFalse(mainStats01.exists())
    }

    // MARK: - Chargers
    func test_MainWeaponStats_init_bamboozler14() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .bamboozler14Mk1)
        XCTAssertEqual(mainStats00.weapon, .bamboozler14Mk1)
        XCTAssertNotNil(mainStats00.fullChargeSeconds)
    }
    
    func test_MainWeaponStats_init_eliter4K() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .eliter4K)
        XCTAssertEqual(mainStats00.weapon, .eliter4K)
        XCTAssertNotNil(mainStats00.fullChargeSeconds)
        XCTAssertNotNil(mainStats00.maxChargeSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .customEliter4K)
        XCTAssertEqual(mainStats01.weapon, .customEliter4K)
        XCTAssertNotNil(mainStats01.fullChargeSeconds)
        XCTAssertNotNil(mainStats01.maxChargeSeconds)
    }

    func test_MainWeaponStats_init_eliter4KScope() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .eliter4KScope)
        XCTAssertEqual(mainStats00.weapon, .eliter4KScope)
        XCTAssertNotNil(mainStats00.fullChargeSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .customEliter4KScope)
        XCTAssertEqual(mainStats01.weapon, .customEliter4KScope)
        XCTAssertNotNil(mainStats01.fullChargeSeconds)
    }

    func test_MainWeaponStats_init_gooTuber() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .gooTuber)
        XCTAssertEqual(mainStats00.weapon, .gooTuber)
        XCTAssertNotNil(mainStats00.fullChargeSeconds)
        XCTAssertNotNil(mainStats00.maxChargeSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .customGooTuber)
        XCTAssertEqual(mainStats01.weapon, .customGooTuber)
        XCTAssertNotNil(mainStats01.fullChargeSeconds)
        XCTAssertNotNil(mainStats01.maxChargeSeconds)
    }

    func test_MainWeaponStats_init_snipewriter() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .snipewriter5H)
        XCTAssertEqual(mainStats00.weapon, .snipewriter5H)
        XCTAssertNotNil(mainStats00.fullChargeSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .snipewriter5B)
        XCTAssertEqual(mainStats01.weapon, .snipewriter5B)
        XCTAssertNotNil(mainStats01.fullChargeSeconds)
    }

    func test_MainWeaponStats_init_splatCharger() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .splatCharger)
        XCTAssertEqual(mainStats00.weapon, .splatCharger)
        XCTAssertNotNil(mainStats00.maxChargeSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .zfSplatCharger)
        XCTAssertEqual(mainStats01.weapon, .zfSplatCharger)
        XCTAssertNotNil(mainStats01.maxChargeSeconds)
        
        let mainStatsO = try self.getMainWeaponStats(for: .orderChargerReplica)
        XCTAssertEqual(mainStatsO.weapon, .orderChargerReplica)
        XCTAssertNotNil(mainStatsO.maxChargeSeconds)
    }

    func test_MainWeaponStats_init_splatterscope() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .splatterscope)
        XCTAssertEqual(mainStats00.weapon, .splatterscope)
        XCTAssertFalse(mainStats00.exists())
        
        let mainStats01 = try self.getMainWeaponStats(for: .zfSplatterscope)
        XCTAssertEqual(mainStats01.weapon, .zfSplatterscope)
        XCTAssertFalse(mainStats01.exists())
    }

    func test_MainWeaponStats_init_squiffer() throws {
        
        let mainStats00 = try self.getMainWeaponStats(for: .classicSquiffer)
        XCTAssertEqual(mainStats00.weapon, .classicSquiffer)
        XCTAssertNotNil(mainStats00.fullChargeSeconds)
        XCTAssertNotNil(mainStats00.maxChargeSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .newSquiffer)
        XCTAssertEqual(mainStats01.weapon, .newSquiffer)
        XCTAssertNotNil(mainStats01.fullChargeSeconds)
        XCTAssertNotNil(mainStats01.maxChargeSeconds)
    }

    // MARK: - Dualies
    func test_MainWeaponStats_init_dappleDualies() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .dappleDualies)
        XCTAssertEqual(mainStats00.weapon, .dappleDualies)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        
        let mainStats01 = try self.getMainWeaponStats(for: .dappleDualiesNouveau)
        XCTAssertEqual(mainStats01.weapon, .dappleDualiesNouveau)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
    }

    func test_MainWeaponStats_init_douserDualiesFF() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .douserDualiesFF)
        XCTAssertEqual(mainStats00.weapon, .douserDualiesFF)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
    }

    func test_MainWeaponStats_init_dualieSquelchers() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .dualieSquelchers)
        XCTAssertEqual(mainStats00.weapon, .dualieSquelchers)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        
        let mainStats01 = try self.getMainWeaponStats(for: .customDualieSquelchers)
        XCTAssertEqual(mainStats01.weapon, .customDualieSquelchers)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
    }
    
    func test_MainWeaponStats_init_gloogaDualies() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .gloogaDualies)
        XCTAssertEqual(mainStats00.weapon, .gloogaDualies)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        
        let mainStats01 = try self.getMainWeaponStats(for: .gloogaDualiesDeco)
        XCTAssertEqual(mainStats01.weapon, .gloogaDualiesDeco)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
    }

    func test_MainWeaponStats_init_splatDualies() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .splatDualies)
        XCTAssertEqual(mainStats00.weapon, .splatDualies)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        
        let mainStats01 = try self.getMainWeaponStats(for: .enperrySplatDualies)
        XCTAssertEqual(mainStats01.weapon, .enperrySplatDualies)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
        
        let mainStatsO = try self.getMainWeaponStats(for: .orderDualiesReplica)
        XCTAssertEqual(mainStatsO.weapon, .orderDualiesReplica)
        XCTAssertNotNil(mainStatsO.shotSpreadAir)
        XCTAssertNotNil(mainStatsO.shotSpreadGround)
    }

    func test_MainWeaponStats_init_tetraDualies() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .darkTetraDualies)
        XCTAssertEqual(mainStats00.weapon, .darkTetraDualies)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        
        let mainStats01 = try self.getMainWeaponStats(for: .lightTetraDualies)
        XCTAssertEqual(mainStats01.weapon, .lightTetraDualies)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
    }

    // MARK: - Rollers
    func test_MainWeaponStats_init_bigSwigRoller() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .bigSwigRoller)
        XCTAssertEqual(mainStats00.weapon, .bigSwigRoller)
        XCTAssertFalse(mainStats00.exists())
        
        let mainStats01 = try self.getMainWeaponStats(for: .bigSwigRollerExpress)
        XCTAssertEqual(mainStats01.weapon, .bigSwigRollerExpress)
        XCTAssertFalse(mainStats01.exists())

    }

    func test_MainWeaponStats_init_carbonRoller() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .carbonRoller)
        XCTAssertEqual(mainStats00.weapon, .carbonRoller)
        XCTAssertFalse(mainStats00.exists())
        
        let mainStats01 = try self.getMainWeaponStats(for: .carbonRollerDeco)
        XCTAssertEqual(mainStats01.weapon, .carbonRollerDeco)
        XCTAssertFalse(mainStats01.exists())

    }

    func test_MainWeaponStats_init_dynamoRoller() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .dynamoRoller)
        XCTAssertEqual(mainStats00.weapon, .dynamoRoller)
        XCTAssertFalse(mainStats00.exists())
        
        let mainStats01 = try self.getMainWeaponStats(for: .goldDynamoRoller)
        XCTAssertEqual(mainStats01.weapon, .goldDynamoRoller)
        XCTAssertFalse(mainStats01.exists())

    }

    func test_MainWeaponStats_init_flingzaRoller() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .flingzaRoller)
        XCTAssertEqual(mainStats00.weapon, .flingzaRoller)
        XCTAssertFalse(mainStats00.exists())
        
        let mainStats01 = try self.getMainWeaponStats(for: .foilFlingzaRoller)
        XCTAssertEqual(mainStats01.weapon, .foilFlingzaRoller)
        XCTAssertFalse(mainStats01.exists())

    }

    func test_MainWeaponStats_init_splatRoller() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .splatRoller)
        XCTAssertEqual(mainStats00.weapon, .splatRoller)
        XCTAssertFalse(mainStats00.exists())
        
        let mainStats01 = try self.getMainWeaponStats(for: .krakOnSplatRoller)
        XCTAssertEqual(mainStats01.weapon, .krakOnSplatRoller)
        XCTAssertFalse(mainStats01.exists())
        
        let mainStatsO = try self.getMainWeaponStats(for: .orderRollerReplica)
        XCTAssertEqual(mainStatsO.weapon, .orderRollerReplica)
        XCTAssertFalse(mainStatsO.exists())

    }

    // MARK: - Shooters
    func test_MainWeaponStats_init_52Gal() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .gal52)
        XCTAssertEqual(mainStats00.weapon, .gal52)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        
        let mainStats01 = try self.getMainWeaponStats(for: .gal52Deco)
        XCTAssertEqual(mainStats01.weapon, .gal52Deco)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
    }

    func test_MainWeaponStats_init_96Gal() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .gal96)
        XCTAssertEqual(mainStats00.weapon, .gal96)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        
        let mainStats01 = try self.getMainWeaponStats(for: .gal96Deco)
        XCTAssertEqual(mainStats01.weapon, .gal96Deco)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
    }

    func test_MainWeaponStats_init_aerospray() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .aerosprayMG)
        XCTAssertEqual(mainStats00.weapon, .aerosprayMG)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .aerosprayRG)
        XCTAssertEqual(mainStats01.weapon, .aerosprayRG)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
    }

    func test_MainWeaponStats_init_h3Nozzlenose() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .h3Nozzlenose)
        XCTAssertEqual(mainStats00.weapon, .h3Nozzlenose)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .h3NozzlenoseD)
        XCTAssertEqual(mainStats01.weapon, .h3NozzlenoseD)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
    }

    func test_MainWeaponStats_init_jetSquelcher() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .jetSquelcher)
        XCTAssertEqual(mainStats00.weapon, .jetSquelcher)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        
        let mainStats01 = try self.getMainWeaponStats(for: .customJetSquelcher)
        XCTAssertEqual(mainStats01.weapon, .customJetSquelcher)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
    }

    func test_MainWeaponStats_init_l3Nozzlenose() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .l3Nozzlenose)
        XCTAssertEqual(mainStats00.weapon, .l3Nozzlenose)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .l3NozzlenoseD)
        XCTAssertEqual(mainStats01.weapon, .l3NozzlenoseD)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
    }

    func test_MainWeaponStats_init_nzap() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .nzap85)
        XCTAssertEqual(mainStats00.weapon, .nzap85)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        
        let mainStats01 = try self.getMainWeaponStats(for: .nzap89)
        XCTAssertEqual(mainStats01.weapon, .nzap89)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
    }

    func test_MainWeaponStats_init_splashomatic() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .splashomatic)
        XCTAssertEqual(mainStats00.weapon, .splashomatic)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        
        let mainStats01 = try self.getMainWeaponStats(for: .neoSplashomatic)
        XCTAssertEqual(mainStats01.weapon, .neoSplashomatic)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
    }

    func test_MainWeaponStats_init_splattershot() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .splattershot)
        XCTAssertEqual(mainStats00.weapon, .splattershot)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        
        let mainStats01 = try self.getMainWeaponStats(for: .tentatekSplattershot)
        XCTAssertEqual(mainStats01.weapon, .tentatekSplattershot)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
        
        let mainStatsH = try self.getMainWeaponStats(for: .heroShotReplica)
        XCTAssertEqual(mainStatsH.weapon, .heroShotReplica)
        XCTAssertNotNil(mainStatsH.shotSpreadAir)
        XCTAssertNotNil(mainStatsH.shotSpreadGround)
        
        let mainStatsO = try self.getMainWeaponStats(for: .orderShotReplica)
        XCTAssertEqual(mainStatsO.weapon, .orderShotReplica)
        XCTAssertNotNil(mainStatsO.shotSpreadAir)
        XCTAssertNotNil(mainStatsO.shotSpreadGround)
        
        let mainStatsOct = try self.getMainWeaponStats(for: .octoShotReplica)
        XCTAssertEqual(mainStatsOct.weapon, .octoShotReplica)
        XCTAssertNotNil(mainStatsOct.shotSpreadAir)
        XCTAssertNotNil(mainStatsOct.shotSpreadGround)
    }

    func test_MainWeaponStats_init_splattershotJr() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .splattershotJr)
        XCTAssertEqual(mainStats00.weapon, .splattershotJr)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .customSplattershotJr)
        XCTAssertEqual(mainStats01.weapon, .customSplattershotJr)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
    }

    func test_MainWeaponStats_init_splattershotNova() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .splattershotNova)
        XCTAssertEqual(mainStats00.weapon, .splattershotNova)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        
        let mainStats01 = try self.getMainWeaponStats(for: .annakiSplattershotNova)
        XCTAssertEqual(mainStats01.weapon, .annakiSplattershotNova)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
    }

    func test_MainWeaponStats_init_splattershotPro() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .splattershotPro)
        XCTAssertEqual(mainStats00.weapon, .splattershotPro)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        
        let mainStats01 = try self.getMainWeaponStats(for: .forgeSplattershotPro)
        XCTAssertEqual(mainStats01.weapon, .forgeSplattershotPro)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
    }

    func test_MainWeaponStats_init_splooshomatic() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .splooshomatic)
        XCTAssertEqual(mainStats00.weapon, .splooshomatic)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .neoSplooshomatic)
        XCTAssertEqual(mainStats01.weapon, .neoSplooshomatic)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
    }
    
    func test_MainWeaponStats_init_squeezer() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .squeezer)
        XCTAssertEqual(mainStats00.weapon, .squeezer)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.shotAutofireSpreadAir)
        XCTAssertNotNil(mainStats00.shotAutofireSpreadGround)
        
        let mainStats01 = try self.getMainWeaponStats(for: .foilSqueezer)
        XCTAssertEqual(mainStats01.weapon, .foilSqueezer)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
        XCTAssertNotNil(mainStats01.shotAutofireSpreadAir)
        XCTAssertNotNil(mainStats01.shotAutofireSpreadGround)

    }

    // MARK: - Sloshers
    func test_MainWeaponStats_init_bloblobber() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .bloblobber)
        XCTAssertEqual(mainStats00.weapon, .bloblobber)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .bloblobberDeco)
        XCTAssertEqual(mainStats01.weapon, .bloblobberDeco)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
    }

    func test_MainWeaponStats_init_dreadWringer() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .dreadWringer)
        XCTAssertEqual(mainStats00.weapon, .dreadWringer)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .dreadWringerD)
        XCTAssertEqual(mainStats01.weapon, .dreadWringerD)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
    }

    func test_MainWeaponStats_init_explosher() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .explosher)
        XCTAssertEqual(mainStats00.weapon, .explosher)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .customExplosher)
        XCTAssertEqual(mainStats01.weapon, .customExplosher)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
    }

    func test_MainWeaponStats_init_slosher() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .slosher)
        XCTAssertEqual(mainStats00.weapon, .slosher)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .slosherDeco)
        XCTAssertEqual(mainStats01.weapon, .slosherDeco)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
        
        let mainStatsO = try self.getMainWeaponStats(for: .orderSlosherReplica)
        XCTAssertEqual(mainStatsO.weapon, .orderSlosherReplica)
        XCTAssertNotNil(mainStatsO.whiteInkSeconds)
    }

    func test_MainWeaponStats_init_sloshingMachine() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .sloshingMachine)
        XCTAssertEqual(mainStats00.weapon, .sloshingMachine)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .sloshingMachineNeo)
        XCTAssertEqual(mainStats01.weapon, .sloshingMachineNeo)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
    }
    
    func test_MainWeaponStats_init_triSlosher() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .triSlosher)
        XCTAssertEqual(mainStats00.weapon, .triSlosher)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .triSlosherNouveau)
        XCTAssertEqual(mainStats01.weapon, .triSlosherNouveau)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
    }

    // MARK: - Splatana
    func test_MainWeaponStats_init_splatanaStamper() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .splatanaStamper)
        XCTAssertEqual(mainStats00.weapon, .splatanaStamper)
        XCTAssertFalse(mainStats00.exists())
        
        let mainStats01 = try self.getMainWeaponStats(for: .splatanaStamperNouveau)
        XCTAssertEqual(mainStats01.weapon, .splatanaStamperNouveau)
        XCTAssertFalse(mainStats01.exists())

        let mainStatsO = try self.getMainWeaponStats(for: .orderSplatanaReplica)
        XCTAssertEqual(mainStatsO.weapon, .orderSplatanaReplica)
        XCTAssertFalse(mainStatsO.exists())
    }

    func test_MainWeaponStats_init_splatanaWiper() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .splatanaWiper)
        XCTAssertEqual(mainStats00.weapon, .splatanaWiper)
        XCTAssertFalse(mainStats00.exists())
        
        let mainStats01 = try self.getMainWeaponStats(for: .splatanaWiperDeco)
        XCTAssertEqual(mainStats01.weapon, .splatanaWiperDeco)
        XCTAssertFalse(mainStats01.exists())
    }

    // MARK: - Splatling
    func test_MainWeaponStats_init_ballpointSplatling() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .ballpointSplatling)
        XCTAssertEqual(mainStats00.weapon, .ballpointSplatling)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .ballpointSplatlingNouveau)
        XCTAssertEqual(mainStats01.weapon, .ballpointSplatlingNouveau)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
    }

    func test_MainWeaponStats_init_heavyEditSplatling() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .heavyEditSplatling)
        XCTAssertEqual(mainStats00.weapon, .heavyEditSplatling)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
    }
    
    func test_MainWeaponStats_init_heavySplatling() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .heavySplatling)
        XCTAssertEqual(mainStats00.weapon, .heavySplatling)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .heavySplatlingDeco)
        XCTAssertEqual(mainStats01.weapon, .heavySplatlingDeco)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
        
        let mainStatsO = try self.getMainWeaponStats(for: .orderSplatlingReplica)
        XCTAssertEqual(mainStatsO.weapon, .orderSplatlingReplica)
        XCTAssertNotNil(mainStatsO.shotSpreadAir)
        XCTAssertNotNil(mainStatsO.shotSpreadGround)
        XCTAssertNotNil(mainStatsO.whiteInkSeconds)
    }

    func test_MainWeaponStats_init_hydraSplatling() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .hydraSplatling)
        XCTAssertEqual(mainStats00.weapon, .hydraSplatling)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
    }

    func test_MainWeaponStats_init_miniSplatling() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .miniSplatling)
        XCTAssertEqual(mainStats00.weapon, .miniSplatling)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .zinkMiniSplatling)
        XCTAssertEqual(mainStats01.weapon, .zinkMiniSplatling)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
    }

    func test_MainWeaponStats_init_nautilus() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .nautilus47)
        XCTAssertEqual(mainStats00.weapon, .nautilus47)
        XCTAssertNotNil(mainStats00.shotSpreadAir)
        XCTAssertNotNil(mainStats00.shotSpreadGround)
        XCTAssertNotNil(mainStats00.whiteInkSeconds)
        XCTAssertNotNil(mainStats00.maxChargeSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .nautilus79)
        XCTAssertEqual(mainStats01.weapon, .nautilus79)
        XCTAssertNotNil(mainStats01.shotSpreadAir)
        XCTAssertNotNil(mainStats01.shotSpreadGround)
        XCTAssertNotNil(mainStats01.whiteInkSeconds)
        XCTAssertNotNil(mainStats01.maxChargeSeconds)
    }

    // MARK: - REEF-LUX 450
    func test_MainWeaponStats_init_reeflux450() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .reeflux450)
        XCTAssertEqual(mainStats00.weapon, .reeflux450)
        XCTAssertNotNil(mainStats00.fullChargeSeconds)
        XCTAssertNotNil(mainStats00.maxChargeSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .reeflux450Deco)
        XCTAssertEqual(mainStats01.weapon, .reeflux450Deco)
        XCTAssertNotNil(mainStats01.fullChargeSeconds)
        XCTAssertNotNil(mainStats01.maxChargeSeconds)
    }

    func test_MainWeaponStats_init_triStringer() throws {
        let mainStats00 = try self.getMainWeaponStats(for: .triStringer)
        XCTAssertEqual(mainStats00.weapon, .triStringer)
        XCTAssertNotNil(mainStats00.fullChargeSeconds)
        XCTAssertNotNil(mainStats00.maxChargeSeconds)
        
        let mainStats01 = try self.getMainWeaponStats(for: .inklineTriStringer)
        XCTAssertEqual(mainStats01.weapon, .inklineTriStringer)
        XCTAssertNotNil(mainStats01.fullChargeSeconds)
        XCTAssertNotNil(mainStats01.maxChargeSeconds)
        
        let mainStatsO = try self.getMainWeaponStats(for: .orderStringerReplica)
        XCTAssertEqual(mainStatsO.weapon, .orderStringerReplica)
        XCTAssertNotNil(mainStatsO.fullChargeSeconds)
        XCTAssertNotNil(mainStatsO.maxChargeSeconds)
    }

    // MARK: - Helper Functions
    /// Creates an instance of `MainWeaponStats` for a particular `MainWeapon`
    func getMainWeaponStats(for weapon: MainWeapon) throws -> MainWeaponStats {
        
        let data = try TestHelper.getMainData(for: weapon, with: self.mainInfo)
        
        let mainStats = MainWeaponStats(weapon: weapon, ap: self.ap, values: self.values, data: data)
        
        return mainStats
    }
}
