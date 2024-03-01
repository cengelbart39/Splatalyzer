//
//  BrellaStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 2/21/24.
//

import XCTest
@testable import Splatalyzer

final class BrellaStatsTests: XCTestCase {
    
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
    
    // MARK: - Recycled Brella 24
    func test_Splatalyzer_analyze_recycledBrella24MkI_properties() {
        self.options.mainWeapon = .recycledBrella24MkI
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .recycledBrella24MkI)
            XCTAssertNotNil(mainStats.brellaCanopyHp)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            XCTAssertTrue(inkTankOptions.contains(type: .shieldLaunch))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            
        } catch {
            XCTFail("Splat Brella: \(error.localizedDescription)")
        }
    }

    
    // MARK: - Splat Brella
    func test_Splatalyzer_analyze_splatBrella_properties() {
        self.options.mainWeapon = .splatBrella
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .splatBrella)
            XCTAssertFalse(mainStats.exists())
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            XCTAssertTrue(inkTankOptions.contains(type: .shieldLaunch))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            
        } catch {
            XCTFail("Splat Brella: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_sorellaBrella_properties() {
        self.options.mainWeapon = .sorellaBrella
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .sorellaBrella)
            XCTAssertFalse(mainStats.exists())

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            XCTAssertTrue(inkTankOptions.contains(type: .shieldLaunch))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            
        } catch {
            XCTFail("Sorella Brella: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_orderBrellaReplica_properties() {
        self.options.mainWeapon = .orderBrellaReplica
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .orderBrellaReplica)
            XCTAssertFalse(mainStats.exists())
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            XCTAssertTrue(inkTankOptions.contains(type: .shieldLaunch))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            
        } catch {
            XCTFail("Splat Brella: \(error.localizedDescription)")
        }
    }

    // MARK: - Tenta Brella
    func test_Splatalyzer_analyze_tentaBrella_properties() {
        self.options.mainWeapon = .tentaBrella
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .tentaBrella)
            XCTAssertNotNil(mainStats.brellaCanopyHp)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            XCTAssertTrue(inkTankOptions.contains(type: .shieldLaunch))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            
        } catch {
            XCTFail("Tenta Brella: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_tentaSorellaBrella_properties() {
        self.options.mainWeapon = .tentaSorellaBrella
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .tentaSorellaBrella)
            XCTAssertNotNil(mainStats.brellaCanopyHp)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            XCTAssertTrue(inkTankOptions.contains(type: .shieldLaunch))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            
        } catch {
            XCTFail("Tenta Sorella Brella: \(error.localizedDescription)")
        }
    }

    // MARK: - Undercover Brella
    func test_Splatalyzer_analyze_undercoverBrella_properties() {
        self.options.mainWeapon = .undercoverBrella
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .undercoverBrella)
            XCTAssertNotNil(mainStats.brellaCanopyHp)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            
        } catch {
            XCTFail("Undercover Brella: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_undercoverSorellaBrella_properties() {
        self.options.mainWeapon = .undercoverSorellaBrella
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .undercoverSorellaBrella)
            XCTAssertNotNil(mainStats.brellaCanopyHp)
            
            let subStats = stats.subStats
            XCTAssertEqual(subStats.weapon, .torpedo)
            XCTAssertNotNil(subStats.velocity)
            XCTAssertNotNil(subStats.quickSuperJumpBoost)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            
            let subDefenseDamages = stats.subDefenseDamages
            XCTAssertFalse(subDefenseDamages.isEmpty)
            
        } catch {
            XCTFail("Undercover Sorella Brella: \(error.localizedDescription)")
        }
    }


}
