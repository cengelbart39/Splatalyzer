//
//  MovementStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 3/5/24.
//

import XCTest
@testable import Splatalyzer

final class MovementStatsTests: XCTestCase {
        
    let mainInfo = try! JSONService().decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    
    func test_MovementStats_init_blasters() throws {
        var moveStats = try self.getMoveStats(for: .blaster)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .customBlaster)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .clashBlaster)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .clashBlasterNeo)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .lunaBlaster)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .lunaBlasterNeo)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .orderBlasterReplica)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .rangeBlaster)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .customRangeBlaster)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .rapidBlaster)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .rapidBlasterDeco)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .rapidBlasterPro)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .rapidBlasterProDeco)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .sblast92)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .sblast91)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
    }
    
    func test_MovementStats_init_brellas() throws {
        var moveStats = try self.getMoveStats(for: .recycledBrella24MkI)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .recycledBrella24MkII)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .splatBrella)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .sorellaBrella)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .orderBrellaReplica)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .tentaBrella)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .tentaSorellaBrella)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .undercoverBrella)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .undercoverSorellaBrella)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
    }

    func test_MovementStats_init_brushes() throws {
        var moveStats = try self.getMoveStats(for: .inkbrush)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)

        moveStats = try self.getMoveStats(for: .inkbrushNouveau)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)

        moveStats = try self.getMoveStats(for: .octobrush)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)

        moveStats = try self.getMoveStats(for: .octobrushNouveau)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)

        moveStats = try self.getMoveStats(for: .orderbrushReplica)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)

        moveStats = try self.getMoveStats(for: .painbrush)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)

        moveStats = try self.getMoveStats(for: .painbrushNouveau)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)
    }
    
    func test_MovementStats_init_chargers() throws {
        var moveStats = try self.getMoveStats(for: .bamboozler14MkI)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .bamboozler14MkII)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .eliter4K)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .customEliter4K)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .eliter4KScope)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .customEliter4KScope)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .gooTuber)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .customGooTuber)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .snipewriter5H)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .snipewriter5B)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .splatCharger)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .zfSplatCharger)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .orderChargerReplica)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .splatterscope)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .zfSplatterscope)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .classicSquiffer)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .newSquiffer)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
    }

    func test_MovementStats_init_dualies() throws {
        var moveStats = try self.getMoveStats(for: .dappleDualies)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .dappleDualiesNouveau)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .douserDualiesFF)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .customDouserDualiesFF)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .dualieSquelchers)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .customDualieSquelchers)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .gloogaDualies)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .gloogaDualiesDeco)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .splatDualies)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .enperrySplatDualies)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .orderDualiesReplica)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .darkTetraDualies)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .lightTetraDualies)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
    }
    
    func test_MovementStats_init_rollers() throws {
        var moveStats = try self.getMoveStats(for: .bigSwigRoller)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)

        moveStats = try self.getMoveStats(for: .bigSwigRollerExpress)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)

        moveStats = try self.getMoveStats(for: .carbonRoller)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)

        moveStats = try self.getMoveStats(for: .carbonRollerDeco)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)

        moveStats = try self.getMoveStats(for: .dynamoRoller)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)

        moveStats = try self.getMoveStats(for: .goldDynamoRoller)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)

        moveStats = try self.getMoveStats(for: .flingzaRoller)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)
        
        moveStats = try self.getMoveStats(for: .foilFlingzaRoller)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)
        
        moveStats = try self.getMoveStats(for: .splatRoller)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)
        
        moveStats = try self.getMoveStats(for: .krakOnSplatRoller)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)
        
        moveStats = try self.getMoveStats(for: .orderRollerReplica)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)
    }

    func test_MovementStats_init_shooters() throws {
        var moveStats = try self.getMoveStats(for: .gal52)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .gal52Deco)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .gal96)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .gal96Deco)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .aerosprayMG)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .aerosprayRG)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .h3Nozzlenose)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .h3NozzlenoseD)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .jetSquelcher)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .customJetSquelcher)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .l3Nozzlenose)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .l3NozzlenoseD)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .nzap85)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .nzap89)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .splashomatic)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .neoSplashomatic)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .splattershot)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .tentatekSplattershot)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .heroShotReplica)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .orderShotReplica)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .octoShotReplica)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .splattershotJr)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .customSplattershotJr)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .splattershotNova)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .annakiSplattershotNova)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .splattershotPro)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .forgeSplattershotPro)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .splooshomatic)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .neoSplooshomatic)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .squeezer)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .foilSqueezer)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
    }

    func test_MovementStats_init_sloshers() throws {
        var moveStats = try self.getMoveStats(for: .bloblobber)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .bloblobberDeco)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .dreadWringer)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .dreadWringerD)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .explosher)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .customExplosher)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .slosher)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .slosherDeco)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .orderSlosherReplica)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .sloshingMachine)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .sloshingMachineNeo)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .triSlosher)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .triSlosherNouveau)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
    }

    func test_MovementStats_init_splatanas() throws {
        var moveStats = try self.getMoveStats(for: .mintDecavitator)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)
        
        moveStats = try self.getMoveStats(for: .charcoalDecavitator)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)
        
        moveStats = try self.getMoveStats(for: .splatanaStamper)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)

        moveStats = try self.getMoveStats(for: .splatanaStamperNouveau)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)

        moveStats = try self.getMoveStats(for: .orderSplatanaReplica)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)

        moveStats = try self.getMoveStats(for: .splatanaWiper)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)

        moveStats = try self.getMoveStats(for: .splatanaWiperDeco)
        XCTAssertNil(moveStats.shootingRunSpeed)
        XCTAssertNil(moveStats.shootingRunSpeedCharging)
        XCTAssertNil(moveStats.shootingRunSpeedFullCharge)
        XCTAssertNil(moveStats.shootingRunSpeedSecondary)
    }

    func test_MovementStats_init_splatlings() throws {
        var moveStats = try self.getMoveStats(for: .ballpointSplatling)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        XCTAssertNotNil(moveStats.shootingRunSpeedCharging)
        
        moveStats = try self.getMoveStats(for: .ballpointSplatlingNouveau)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        XCTAssertNotNil(moveStats.shootingRunSpeedCharging)
        
        moveStats = try self.getMoveStats(for: .heavyEditSplatling)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        XCTAssertNotNil(moveStats.shootingRunSpeedCharging)
        
        moveStats = try self.getMoveStats(for: .heavyEditSplatlingNouveau)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        XCTAssertNotNil(moveStats.shootingRunSpeedCharging)
        
        moveStats = try self.getMoveStats(for: .heavySplatling)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .heavySplatlingDeco)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .orderSplatlingReplica)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        
        moveStats = try self.getMoveStats(for: .hydraSplatling)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        XCTAssertNotNil(moveStats.shootingRunSpeedCharging)
        
        moveStats = try self.getMoveStats(for: .customHydraSplatling)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        XCTAssertNotNil(moveStats.shootingRunSpeedCharging)
        
        moveStats = try self.getMoveStats(for: .miniSplatling)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        XCTAssertNotNil(moveStats.shootingRunSpeedCharging)
        
        moveStats = try self.getMoveStats(for: .zinkMiniSplatling)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        XCTAssertNotNil(moveStats.shootingRunSpeedCharging)
        
        moveStats = try self.getMoveStats(for: .nautilus47)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        XCTAssertNotNil(moveStats.shootingRunSpeedCharging)
        
        moveStats = try self.getMoveStats(for: .nautilus79)
        XCTAssertNotNil(moveStats.shootingRunSpeed)
        XCTAssertNotNil(moveStats.shootingRunSpeedCharging)
    }

    func test_MovementStats_init_stringers() throws {
        var moveStats = try self.getMoveStats(for: .reeflux450)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .reeflux450Deco)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

        moveStats = try self.getMoveStats(for: .triStringer)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

        moveStats = try self.getMoveStats(for: .inklineTriStringer)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

        moveStats = try self.getMoveStats(for: .orderStringerReplica)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .wellspringV)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
        
        moveStats = try self.getMoveStats(for: .customWellspringV)
        XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
    }


    // MARK: - Helper Functions
    /// Creates an instance of `MainWeaponStats` for a particular `MainWeapon`
    func getMoveStats(for weapon: MainWeapon) throws -> MovementStats {
        
        let data = try TestHelper.getMainData(for: weapon, with: self.mainInfo)
        
        let moveStats = MovementStats(ap: AbilityPoints(), gearBuild: GearBuild(), mainData: data)
        
        return moveStats
    }

}
