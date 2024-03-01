//
//  DualieStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 2/22/24.
//

import XCTest
@testable import Splatalyzer

final class DualieStatsTests: XCTestCase {
    
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
    
    // MARK: - Dapple Dualies
    func test_Splatalyzer_analyze_dappleDualies_properties() {
        self.options.mainWeapon = .dappleDualies
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .dappleDualies)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            XCTAssertTrue(inkTankOptions.contains(type: .dualieRoll))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Dapple Dualies: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_dappleDualiesNouveau_properties() {
        self.options.mainWeapon = .dappleDualiesNouveau
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .dappleDualiesNouveau)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            XCTAssertTrue(inkTankOptions.contains(type: .dualieRoll))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Dapple Dualies Nouveau: \(error.localizedDescription)")
        }
    }
    
    // MARK: - Douser Dualies FF
    func test_Splatalyzer_analyze_douserDualiesFF_properties() {
        self.options.mainWeapon = .douserDualiesFF
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .douserDualiesFF)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            XCTAssertTrue(inkTankOptions.contains(type: .dualieRoll))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .turretMax))
            XCTAssertTrue(mainDamages.contains(type: .turretMin))
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Dualie Squelchers: \(error.localizedDescription)")
        }
    }


    // MARK: - Dualie Squelchers
    func test_Splatalyzer_analyze_dualieSquelchers_properties() {
        self.options.mainWeapon = .dualieSquelchers
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .dualieSquelchers)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            XCTAssertTrue(inkTankOptions.contains(type: .dualieRoll))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Dualie Squelchers: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_customDualieSquelchers_properties() {
        self.options.mainWeapon = .customDualieSquelchers
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .customDualieSquelchers)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            XCTAssertTrue(inkTankOptions.contains(type: .dualieRoll))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Custom Dualie Squelchers: \(error.localizedDescription)")
        }
    }

    // MARK: - Glooga Dualies
    func test_Splatalyzer_analyze_gloogaDualies_properties() {
        self.options.mainWeapon = .gloogaDualies
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .gloogaDualies)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            XCTAssertTrue(inkTankOptions.contains(type: .dualieRoll))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .turretMax))
            XCTAssertTrue(mainDamages.contains(type: .turretMin))
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Glooga Dualies: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_gloogaDualiesDeco_properties() {
        self.options.mainWeapon = .gloogaDualiesDeco
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .gloogaDualiesDeco)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            XCTAssertTrue(inkTankOptions.contains(type: .dualieRoll))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .turretMax))
            XCTAssertTrue(mainDamages.contains(type: .turretMin))
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Glooga Dualies: \(error.localizedDescription)")
        }
    }

    // MARK: - Splat Dualies
    func test_Splatalyzer_analyze_splatDualies_properties() {
        self.options.mainWeapon = .splatDualies
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .splatDualies)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            XCTAssertTrue(inkTankOptions.contains(type: .dualieRoll))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Splat Dualies: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_enperrySplatDualies_properties() {
        self.options.mainWeapon = .enperrySplatDualies
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .enperrySplatDualies)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            XCTAssertTrue(inkTankOptions.contains(type: .dualieRoll))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Enperry Splat Dualies: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_orderDualiesReplica_properties() {
        self.options.mainWeapon = .orderDualiesReplica
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .orderDualiesReplica)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            XCTAssertTrue(inkTankOptions.contains(type: .dualieRoll))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Splat Dualies: \(error.localizedDescription)")
        }
    }

    // MARK: - Tetra Dualies
    func test_Splatalyzer_analyze_darkTetraDualies_properties() {
        self.options.mainWeapon = .darkTetraDualies
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .darkTetraDualies)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            XCTAssertTrue(inkTankOptions.contains(type: .dualieRoll))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Dark Tetra Dualies: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_lightTetraDualies_properties() {
        self.options.mainWeapon = .lightTetraDualies
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .lightTetraDualies)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            XCTAssertTrue(inkTankOptions.contains(type: .dualieRoll))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Light Tetra Dualies: \(error.localizedDescription)")
        }
    }

}
