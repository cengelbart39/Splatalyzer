//
//  SlosherStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 2/23/24.
//

import XCTest
@testable import Splatalyzer

final class SlosherStatsTests: XCTestCase {

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
    
    // MARK: - Bloblobber
    func test_Splatalyzer_analyze_bloblobber_properties() {
        self.options.mainWeapon = .bloblobber
        
        do {
            let stats = try self.analyzer.analyze(self.options)
            
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .bloblobber)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .slosh))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .direct))
            XCTAssertTrue(mainDamages.contains(type: .directSecondaryMax))
            XCTAssertTrue(mainDamages.contains(type: .directSecondaryMin))
            
        } catch {
            XCTFail("Bloblobber: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_bloblobberDeco_properties() {
        self.options.mainWeapon = .bloblobberDeco
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .bloblobberDeco)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .slosh))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .direct))
            XCTAssertTrue(mainDamages.contains(type: .directSecondaryMax))
            XCTAssertTrue(mainDamages.contains(type: .directSecondaryMin))
            
        } catch {
            XCTFail("Bloblobber Deco: \(error.localizedDescription)")
        }
    }

    // MARK: - Dread Wringer
    func test_Splatalyzer_analyze_dreadWringer_properties() {
        self.options.mainWeapon = .dreadWringer
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .dreadWringer)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            XCTAssertNotNil(stats.multiShots)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .slosh))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .directMax))
            XCTAssertTrue(mainDamages.contains(type: .directMin))
            
        } catch {
            XCTFail("Dread Wringer: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_dreadWringerD_properties() {
        self.options.mainWeapon = .dreadWringerD
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .dreadWringerD)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            
            XCTAssertNotNil(stats.multiShots)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .slosh))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .directMax))
            XCTAssertTrue(mainDamages.contains(type: .directMin))
            
        } catch {
            XCTFail("Dread Wringer: \(error.localizedDescription)")
        }
    }


    // MARK: - Explosher
    func test_Splatalyzer_analyze_explosher_properties() {
        self.options.mainWeapon = .explosher
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .explosher)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
                        
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .slosh))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .direct))
            XCTAssertTrue(mainDamages.contains(type: .splash))
            
        } catch {
            XCTFail("Explosher: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_customExplosher_properties() {
        self.options.mainWeapon = .customExplosher
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .customExplosher)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
                        
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .slosh))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .direct))
            XCTAssertTrue(mainDamages.contains(type: .splash))
            
        } catch {
            XCTFail("Explosher: \(error.localizedDescription)")
        }
    }


    // MARK: - Slosher
    func test_Splatalyzer_analyze_slosher_properties() {
        self.options.mainWeapon = .slosher
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .slosher)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
                        
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .slosh))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .directMax))
            XCTAssertTrue(mainDamages.contains(type: .directMin))
            XCTAssertTrue(mainDamages.contains(type: .directSecondaryMax))
            XCTAssertTrue(mainDamages.contains(type: .directSecondaryMin))
            
        } catch {
            XCTFail("Slosher: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_slosherDeco_properties() {
        self.options.mainWeapon = .slosherDeco
        
        do {
            let stats = try self.analyzer.analyze(self.options)
            
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .slosherDeco)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
                        
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .slosh))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .directMax))
            XCTAssertTrue(mainDamages.contains(type: .directMin))
            XCTAssertTrue(mainDamages.contains(type: .directSecondaryMax))
            XCTAssertTrue(mainDamages.contains(type: .directSecondaryMin))
            
        } catch {
            XCTFail("Slosher Deco: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_orderSlosherReplica_properties() {
        self.options.mainWeapon = .orderSlosherReplica
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .orderSlosherReplica)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
                        
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .slosh))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .directMax))
            XCTAssertTrue(mainDamages.contains(type: .directMin))
            XCTAssertTrue(mainDamages.contains(type: .directSecondaryMax))
            XCTAssertTrue(mainDamages.contains(type: .directSecondaryMin))
            
        } catch {
            XCTFail("Slosher: \(error.localizedDescription)")
        }
    }


    // MARK: - Sloshing Machine
    func test_Splatalyzer_analyze_sloshingMachine_properties() {
        self.options.mainWeapon = .sloshingMachine
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .sloshingMachine)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
                        
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .slosh))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .directMax))
            XCTAssertTrue(mainDamages.contains(type: .directMin))
            XCTAssertTrue(mainDamages.contains(type: .directSecondaryMax))
            XCTAssertTrue(mainDamages.contains(type: .directSecondaryMin))
            XCTAssertTrue(mainDamages.contains(type: .splash))
            
        } catch {
            XCTFail("Sloshing Machine: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_sloshingMachineNeo_properties() {
        self.options.mainWeapon = .sloshingMachineNeo
        
        do {
            let stats = try self.analyzer.analyze(self.options)
            
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .sloshingMachineNeo)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
                        
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .slosh))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .directMax))
            XCTAssertTrue(mainDamages.contains(type: .directMin))
            XCTAssertTrue(mainDamages.contains(type: .directSecondaryMax))
            XCTAssertTrue(mainDamages.contains(type: .directSecondaryMin))
            XCTAssertTrue(mainDamages.contains(type: .splash))
            
        } catch {
            XCTFail("Sloshing Machine Neo: \(error.localizedDescription)")
        }
    }
    
    // MARK: - Tri-Slosher
    func test_Splatalyzer_analyze_triSlosher_properties() {
        self.options.mainWeapon = .triSlosher
        
        do {
            let stats = try self.analyzer.analyze(self.options)
            
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .triSlosher)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
                        
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .slosh))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .directMax))
            XCTAssertTrue(mainDamages.contains(type: .directMin))
            XCTAssertTrue(mainDamages.contains(type: .directSecondaryMax))
            XCTAssertTrue(mainDamages.contains(type: .directSecondaryMin))
            
        } catch {
            XCTFail("Tri-Slosher: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_triSlosherNouveau_properties() {
        self.options.mainWeapon = .triSlosherNouveau
        
        do {
            let stats = try self.analyzer.analyze(self.options)
            
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .triSlosherNouveau)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
                        
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .slosh))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .directMax))
            XCTAssertTrue(mainDamages.contains(type: .directMin))
            XCTAssertTrue(mainDamages.contains(type: .directSecondaryMax))
            XCTAssertTrue(mainDamages.contains(type: .directSecondaryMin))
            
        } catch {
            XCTFail("Tri-Slosher Nouveau: \(error.localizedDescription)")
        }
    }


}
