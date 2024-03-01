//
//  ShooterStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 2/22/24.
//

import XCTest
@testable import Splatalyzer

final class ShooterStatsTests: XCTestCase {
    
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
    
    // MARK: - .52 Gal
    func test_Splatalyzer_analyze_52Gal_properties() {
        self.options.mainWeapon = .gal52
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .gal52)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail(".52 Gal: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_52GalDeco_properties() {
        self.options.mainWeapon = .gal52Deco
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .gal52Deco)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail(".52 Gal: \(error.localizedDescription)")
        }
    }

    
    // MARK: - .96 Gal
    func test_Splatalyzer_analyze_96Gal_properties() {
        self.options.mainWeapon = .gal96
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .gal96)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail(".96 Gal Deco: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_96GalDeco_properties() {
        self.options.mainWeapon = .gal96Deco
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .gal96Deco)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail(".96 Gal Deco: \(error.localizedDescription)")
        }
    }

    // MARK: - Aerospray
    func test_Splatalyzer_analyze_aerosprayMG_properties() {
        self.options.mainWeapon = .aerosprayMG
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .aerosprayMG)
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
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Aerospray MG: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_aerosprayRG_properties() {
        self.options.mainWeapon = .aerosprayRG
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .aerosprayRG)
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
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Aerospray RG: \(error.localizedDescription)")
        }
    }

    // MARK: - H3 Nozzlenose
    func test_Splatalyzer_analyze_h3Nozzlenose_properties() {
        self.options.mainWeapon = .h3Nozzlenose
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .h3Nozzlenose)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            XCTAssertNotNil(stats.multiShots)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("H3 Nozzlenose: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_h3NozzlenoseD_properties() {
        self.options.mainWeapon = .h3NozzlenoseD
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .h3NozzlenoseD)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            XCTAssertNotNil(stats.multiShots)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("H3 Nozzlenose D: \(error.localizedDescription)")
        }
    }

    // MARK: - Jet Squelcher
    func test_Splatalyzer_analyze_jetSquelcher_properties() {
        self.options.mainWeapon = .jetSquelcher
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .jetSquelcher)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Jet Squelcher: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_customJetSquelcher_properties() {
        self.options.mainWeapon = .customJetSquelcher
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .customJetSquelcher)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Custom Jet Squelcher: \(error.localizedDescription)")
        }
    }

    // MARK: - L3 Nozzlenose
    func test_Splatalyzer_analyze_l3Nozzlenose_properties() {
        self.options.mainWeapon = .l3Nozzlenose
        
        do {
            let stats = try self.analyzer.analyze(self.options)
            
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .l3Nozzlenose)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            XCTAssertNotNil(stats.multiShots)

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("L3 Nozzlenose: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_l3NozzlenoseD_properties() {
        self.options.mainWeapon = .l3NozzlenoseD
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .l3NozzlenoseD)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            XCTAssertNotNil(stats.multiShots)

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("L3 Nozzlenose D: \(error.localizedDescription)")
        }
    }

    // MARK: - N-ZAP
    func test_Splatalyzer_analyze_nzap85_properties() {
        self.options.mainWeapon = .nzap85
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .nzap85)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("N-ZAP '85: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_nzap89_properties() {
        self.options.mainWeapon = .nzap89
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .nzap89)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("N-ZAP '89: \(error.localizedDescription)")
        }
    }

    // MARK: - Splash-o-matic
    func test_Splatalyzer_analyze_splashomatic_properties() {
        self.options.mainWeapon = .splashomatic
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .splashomatic)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Splash-o-matic: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_neoSplashomatic_properties() {
        self.options.mainWeapon = .neoSplashomatic
        
        do {
            let stats = try self.analyzer.analyze(self.options)
            
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .neoSplashomatic)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Neo Splash-o-matic: \(error.localizedDescription)")
        }
    }

    // MARK: - Splattershot
    func test_Splatalyzer_analyze_splattershot_properties() {
        self.options.mainWeapon = .splattershot
        
        do {
            let stats = try self.analyzer.analyze(self.options)
            
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .splattershot)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Splattershot: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_tentatekSplattershot_properties() {
        self.options.mainWeapon = .tentatekSplattershot
        
        do {
            let stats = try self.analyzer.analyze(self.options)
            
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .tentatekSplattershot)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Tentatek Splattershot: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_heroShotReplica_properties() {
        self.options.mainWeapon = .heroShotReplica
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .heroShotReplica)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Hero Shot Replica: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_orderShotReplica_properties() {
        self.options.mainWeapon = .orderShotReplica
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .orderShotReplica)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Order Shot Replica: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_octoShotReplica_properties() {
        self.options.mainWeapon = .octoShotReplica
        
        do {
            let stats = try self.analyzer.analyze(self.options)
            
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .octoShotReplica)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Tentatek Splattershot: \(error.localizedDescription)")
        }
    }


    // MARK: - Splattershot Jr.
    func test_Splatalyzer_analyze_splattershotJr_properties() {
        self.options.mainWeapon = .splattershotJr
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .splattershotJr)
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
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Splattershot Jr.: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_customSplattershotJr_properties() {
        self.options.mainWeapon = .customSplattershotJr
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                            
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .customSplattershotJr)
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
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Custom Splattershot Jr.: \(error.localizedDescription)")
        }
    }

    // MARK: - Splattershot Nova
    func test_Splatalyzer_analyze_splattershotNova_properties() {
        self.options.mainWeapon = .splattershotNova
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                       
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .splattershotNova)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Splattershot Nova: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_annakiSplattershotNova_properties() {
        self.options.mainWeapon = .annakiSplattershotNova
        
        do {
            let stats = try self.analyzer.analyze(self.options)
             
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .annakiSplattershotNova)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Annaki Splattershot Nova: \(error.localizedDescription)")
        }
    }

    // MARK: - Splattershot Pro
    func test_Splatalyzer_analyze_splattershotPro_properties() {
        self.options.mainWeapon = .splattershotPro
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .splattershotPro)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Splattershot Pro: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_forgeSplattershotPro_properties() {
        self.options.mainWeapon = .forgeSplattershotPro
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .forgeSplattershotPro)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Forge Splattershot Pro: \(error.localizedDescription)")
        }
    }

    // MARK: - Sploosh-o-matic
    func test_Splatalyzer_analyze_splooshomatic_properties() {
        self.options.mainWeapon = .splooshomatic
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .splooshomatic)
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
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Sploosh-o-matic: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_neoSplooshomatic_properties() {
        self.options.mainWeapon = .neoSplooshomatic
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .neoSplooshomatic)
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
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Neo Sploosh-o-matic: \(error.localizedDescription)")
        }
    }

    // MARK: - Squeezer
    func test_Splatalyzer_analyze_squeezer_properties() {
        self.options.mainWeapon = .squeezer
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                         
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .squeezer)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.shotAutofireSpreadAir)
            XCTAssertNotNil(mainStats.shotAutofireSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            XCTAssertTrue(mainDamages.contains(type: .secondaryModeMax))
            XCTAssertTrue(mainDamages.contains(type: .secondaryModeMin))
            
        } catch {
            XCTFail("Squeezer: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_foilSqueezer_properties() {
        self.options.mainWeapon = .foilSqueezer
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .foilSqueezer)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.shotAutofireSpreadAir)
            XCTAssertNotNil(mainStats.shotAutofireSpreadGround)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .normal))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            XCTAssertTrue(mainDamages.contains(type: .secondaryModeMax))
            XCTAssertTrue(mainDamages.contains(type: .secondaryModeMin))
            
        } catch {
            XCTFail("Foil Squeezer: \(error.localizedDescription)")
        }
    }

}
