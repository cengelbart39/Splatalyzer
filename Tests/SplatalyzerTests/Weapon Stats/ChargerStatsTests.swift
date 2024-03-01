//
//  ChargerStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 2/21/24.
//

import XCTest
@testable import Splatalyzer

final class ChargerStatsTests: XCTestCase {
    
    var analyzer: Splatalyzer!
    var options: BuildOptions!
    
    override func setUp() {
        self.analyzer = Splatalyzer()
        self.options = BuildOptions()
    }
    
    override func tearDown() {
        self.analyzer = nil
        self.options = nil
    }
    
    // MARK: - Bamboozler 14
    func test_Splatalyzer_analyze_bamboozler14MkI_properties() {
        self.options.mainWeapon = .bamboozler14Mk1
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .bamboozler14Mk1)
            XCTAssertNotNil(mainStats.fullChargeSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .tapShot))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .fullCharge))
            XCTAssertTrue(mainDamages.contains(type: .maxCharge))
            XCTAssertTrue(mainDamages.contains(type: .tapShot))
            
        } catch {
            XCTFail("Bamboozler 14 Mk 1: \(error.localizedDescription)")
        }
    }
    
    // MARK: - E-Liter 4K
    func test_Splatalyzer_analyze_eliter4K_properties() {
        self.options.mainWeapon = .eliter4K
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .eliter4K)
            XCTAssertNotNil(mainStats.fullChargeSeconds)
            XCTAssertNotNil(mainStats.maxChargeSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .tapShot))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .fullCharge))
            XCTAssertTrue(mainDamages.contains(type: .maxCharge))
            
        } catch {
            XCTFail("E-Liter 4K: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_customEliter4K_properties() {
        self.options.mainWeapon = .customEliter4K
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .customEliter4K)
            XCTAssertNotNil(mainStats.fullChargeSeconds)
            XCTAssertNotNil(mainStats.maxChargeSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .tapShot))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .fullCharge))
            XCTAssertTrue(mainDamages.contains(type: .maxCharge))
            
        } catch {
            XCTFail("E-Liter 4K: \(error.localizedDescription)")
        }
    }


    // MARK: - E-Liter 4K Scope
    func test_Splatalyzer_analyze_eliter4KScope_properties() {
        self.options.mainWeapon = .eliter4KScope
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .eliter4KScope)
            XCTAssertNotNil(mainStats.fullChargeSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .tapShot))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .fullCharge))
            XCTAssertTrue(mainDamages.contains(type: .maxCharge))
            XCTAssertTrue(mainDamages.contains(type: .tapShot))
            
        } catch {
            XCTFail("E-Liter 4K Scope: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_customEliter4KScope_properties() {
        self.options.mainWeapon = .customEliter4KScope
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .customEliter4KScope)
            XCTAssertNotNil(mainStats.fullChargeSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .tapShot))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .fullCharge))
            XCTAssertTrue(mainDamages.contains(type: .maxCharge))
            XCTAssertTrue(mainDamages.contains(type: .tapShot))
            
        } catch {
            XCTFail("E-Liter 4K Scope: \(error.localizedDescription)")
        }
    }

    
    // MARK: - Goo Tuber
    func test_Splatalyzer_analyze_gooTuber_properties() {
        self.options.mainWeapon = .gooTuber
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .gooTuber)
            XCTAssertNotNil(mainStats.fullChargeSeconds)
            XCTAssertNotNil(mainStats.maxChargeSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .tapShot))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .fullCharge))
            XCTAssertTrue(mainDamages.contains(type: .maxCharge))
            XCTAssertTrue(mainDamages.contains(type: .tapShot))
            
        } catch {
            XCTFail("Goo Tuber: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_customGooTuber_properties() {
        self.options.mainWeapon = .customGooTuber
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .customGooTuber)
            XCTAssertNotNil(mainStats.fullChargeSeconds)
            XCTAssertNotNil(mainStats.maxChargeSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .tapShot))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .fullCharge))
            XCTAssertTrue(mainDamages.contains(type: .maxCharge))
            XCTAssertTrue(mainDamages.contains(type: .tapShot))
            
        } catch {
            XCTFail("Custom Goo Tuver: \(error.localizedDescription)")
        }
    }

    // MARK: - Snipewriter
    func test_Splatalyzer_analyze_snipewriter5H_properties() {
        self.options.mainWeapon = .snipewriter5H
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .snipewriter5H)
            XCTAssertNotNil(mainStats.fullChargeSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .tapShot))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .fullCharge))
            XCTAssertTrue(mainDamages.contains(type: .maxCharge))
            XCTAssertTrue(mainDamages.contains(type: .tapShot))
            
        } catch {
            XCTFail("Snipewriter 5H: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_snipewriter5B_properties() {
        self.options.mainWeapon = .snipewriter5B
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .snipewriter5B)
            XCTAssertNotNil(mainStats.fullChargeSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .tapShot))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .fullCharge))
            XCTAssertTrue(mainDamages.contains(type: .maxCharge))
            XCTAssertTrue(mainDamages.contains(type: .tapShot))
            
        } catch {
            XCTFail("Snipewriter 5B: \(error.localizedDescription)")
        }
    }

    // MARK: - Splat Charger
    func test_Splatalyzer_analyze_splatCharger_properties() {
        self.options.mainWeapon = .splatCharger
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .splatCharger)
            XCTAssertNotNil(mainStats.maxChargeSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .tapShot))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .fullCharge))
            XCTAssertTrue(mainDamages.contains(type: .maxCharge))
            XCTAssertTrue(mainDamages.contains(type: .tapShot))
            
        } catch {
            XCTFail("Splat Charger: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_zfSplatCharger_properties() {
        self.options.mainWeapon = .zfSplatCharger
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .zfSplatCharger)
            XCTAssertNotNil(mainStats.maxChargeSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .tapShot))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .fullCharge))
            XCTAssertTrue(mainDamages.contains(type: .maxCharge))
            XCTAssertTrue(mainDamages.contains(type: .tapShot))
            
        } catch {
            XCTFail("Z+F Splat Charger: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_orderChargerReplica_properties() {
        self.options.mainWeapon = .orderChargerReplica
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .orderChargerReplica)
            XCTAssertNotNil(mainStats.maxChargeSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .tapShot))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .fullCharge))
            XCTAssertTrue(mainDamages.contains(type: .maxCharge))
            XCTAssertTrue(mainDamages.contains(type: .tapShot))
            
        } catch {
            XCTFail("Splat Charger: \(error.localizedDescription)")
        }
    }

    // MARK: - Splatterscope
    func test_Splatalyzer_analyze_splatterscope_properties() {
        self.options.mainWeapon = .splatterscope
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .splatterscope)
            XCTAssertFalse(mainStats.exists())
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .tapShot))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .fullCharge))
            XCTAssertTrue(mainDamages.contains(type: .maxCharge))
            XCTAssertTrue(mainDamages.contains(type: .tapShot))
            
        } catch {
            XCTFail("Splatterscope: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_zfSplatterscope_properties() {
        self.options.mainWeapon = .zfSplatterscope
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .zfSplatterscope)
            XCTAssertFalse(mainStats.exists())
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .tapShot))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .fullCharge))
            XCTAssertTrue(mainDamages.contains(type: .maxCharge))
            XCTAssertTrue(mainDamages.contains(type: .tapShot))
            
        } catch {
            XCTFail("Z+F Splatterscope: \(error.localizedDescription)")
        }
    }

    // MARK: - Squiffer
    func test_Splatalyzer_analyze_classicSquiffer_properties() {
        self.options.mainWeapon = .classicSquiffer
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .classicSquiffer)
            XCTAssertNotNil(mainStats.fullChargeSeconds)
            XCTAssertNotNil(mainStats.maxChargeSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .tapShot))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .fullCharge))
            XCTAssertTrue(mainDamages.contains(type: .maxCharge))
            XCTAssertTrue(mainDamages.contains(type: .tapShot))
            
        } catch {
            XCTFail("Classic Squiffer: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_newSquiffer_properties() {
        self.options.mainWeapon = .newSquiffer
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .newSquiffer)
            XCTAssertNotNil(mainStats.fullChargeSeconds)
            XCTAssertNotNil(mainStats.maxChargeSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .tapShot))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .fullCharge))
            XCTAssertTrue(mainDamages.contains(type: .maxCharge))
            XCTAssertTrue(mainDamages.contains(type: .tapShot))
            
        } catch {
            XCTFail("Classic Squiffer: \(error.localizedDescription)")
        }
    }


}
