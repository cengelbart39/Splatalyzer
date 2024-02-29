//
//  BlasterBuildStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 2/20/24.
//

import XCTest
@testable import Splatalyzer

final class BlasterStatsTests: XCTestCase {
    
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
    
    // MARK: - Blaster
    func test_Splatalyzer_analyze_blaster_properties() {
        self.options.mainWeapon = .blaster
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .blaster)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)
            
            let subStats = stats.subStats
            XCTAssertEqual(subStats.weapon, .autobomb)
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
            XCTAssertTrue(mainDamages.contains(type: .direct))
            XCTAssertTrue(mainDamages.contains(type: .splash))

            let subDefenseDamages = stats.subDefenseDamages
            XCTAssertFalse(subDefenseDamages.isEmpty)
            
        } catch {
            XCTFail("Blaster: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_customBlaster_properties() {
        self.options.mainWeapon = .customBlaster
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .customBlaster)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .direct))
            XCTAssertTrue(mainDamages.contains(type: .splash))
            
        } catch {
            XCTFail("Custom Blaster: \(error.localizedDescription)")
        }
    }

    // MARK: - Clash Blaster
    func test_Splatalyzer_analyze_clashBlaster_properties() {
        self.options.mainWeapon = .clashBlaster
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .clashBlaster)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .direct))
            XCTAssertTrue(mainDamages.contains(type: .splash))
            
        } catch {
            XCTFail("Clash Blaster: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_clashBlasterNeo_properties() {
        self.options.mainWeapon = .clashBlasterNeo
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                    
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .clashBlasterNeo)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .direct))
            XCTAssertTrue(mainDamages.contains(type: .splash))
            
        } catch {
            XCTFail("Clash Blaster Neo: \(error.localizedDescription)")
        }
    }
    
    // MARK: - Luna Blaster
    func test_Splatalyzer_analyze_lunaBlaster_properties() {
        self.options.mainWeapon = .lunaBlaster
        
        do {
            let stats = try self.analyzer.analyze(self.options)
            
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .lunaBlaster)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .direct))
            XCTAssertTrue(mainDamages.contains(type: .splash))
            
        } catch {
            XCTFail("Luna Blaster: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_lunaBlasterNeo_properties() {
        self.options.mainWeapon = .lunaBlasterNeo
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .lunaBlasterNeo)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .direct))
            XCTAssertTrue(mainDamages.contains(type: .splash))
            
        } catch {
            XCTFail("Luna Blaster Neo: \(error.localizedDescription)")
        }
    }

    // MARK: - Range Blaster
    func test_Splatalyzer_analyze_rangeBlaster_properties() {
        self.options.mainWeapon = .rangeBlaster
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                   
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .rangeBlaster)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .direct))
            XCTAssertTrue(mainDamages.contains(type: .splash))
            
        } catch {
            XCTFail("Range Blaster: \(error.localizedDescription)")
        }
    }
    
    // MARK: - Rapid Blaster
    func test_Splatalyzer_analyze_rapidBlaster_properties() {
        self.options.mainWeapon = .rapidBlaster
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                   
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .rapidBlaster)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .direct))
            XCTAssertTrue(mainDamages.contains(type: .splash))
            
        } catch {
            XCTFail("Rapid Blaster: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_rapidBlasterDeco_properties() {
        self.options.mainWeapon = .rapidBlasterDeco
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                   
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .rapidBlasterDeco)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .direct))
            XCTAssertTrue(mainDamages.contains(type: .splash))
            
        } catch {
            XCTFail("Rapid Blaster Deco: \(error.localizedDescription)")
        }
    }
    
    // MARK: - Rapid Blaster Pro
    func test_Splatalyzer_analyze_rapidBlasterPro_properties() {
        self.options.mainWeapon = .rapidBlasterPro
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                   
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .rapidBlasterPro)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .direct))
            XCTAssertTrue(mainDamages.contains(type: .splash))
            
        } catch {
            XCTFail("Rapid Blaster Pro: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_rapidBlasterProDeco_properties() {
        self.options.mainWeapon = .rapidBlasterProDeco
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                   
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .rapidBlasterProDeco)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .direct))
            XCTAssertTrue(mainDamages.contains(type: .splash))
            
        } catch {
            XCTFail("Rapid Blaster Pro Deco: \(error.localizedDescription)")
        }
    }
    
    // MARK: - S-BLAST
    func test_Splatalyzer_analyze_sblast92_properties() {
        self.options.mainWeapon = .sblast92
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                   
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .sblast92)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .direct))
            XCTAssertTrue(mainDamages.contains(type: .splash))
            
        } catch {
            XCTFail("S-BLAST '92': \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_sblast91_properties() {
        self.options.mainWeapon = .sblast91
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                   
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .sblast91)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .direct))
            XCTAssertTrue(mainDamages.contains(type: .splash))
            
        } catch {
            XCTFail("S-BLAST '91: \(error.localizedDescription)")
        }
    }

}
