//
//  SplatlingStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 2/23/24.
//

import XCTest
@testable import Splatalyzer

final class SplatlingStatsTests: XCTestCase {
    
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
    
    // MARK: - Ballpoint Splatling
    func test_Splatalyzer_analyze_ballpointSplatling_properties() {
        self.options.mainWeapon = .ballpointSplatling
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .ballpointSplatling)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            XCTAssertNotNil(moveStats.shootingRunSpeedCharging)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .splatlingCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMaxFullCharge))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Ballpoint Splatling: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_ballpointSplatlingNouveau_properties() {
        self.options.mainWeapon = .ballpointSplatlingNouveau
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .ballpointSplatlingNouveau)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            XCTAssertNotNil(moveStats.shootingRunSpeedCharging)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .splatlingCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMaxFullCharge))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Ballpoint Splatling Nouveau: \(error.localizedDescription)")
        }
    }

    // MARK: - Heavy Edit Splatling
    func test_Splatalyzer_analyze_heavyEditSplatling_properties() {
        self.options.mainWeapon = .heavyEditSplatling
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .heavyEditSplatling)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            XCTAssertNotNil(moveStats.shootingRunSpeedCharging)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .splatlingCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMaxFullCharge))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Heavy Edit Splatling: \(error.localizedDescription)")
        }
    }

    // MARK: - Heavy Splatling
    func test_Splatalyzer_analyze_heavySplatling_properties() {
        self.options.mainWeapon = .heavySplatling
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .heavySplatling)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .splatlingCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMaxFullCharge))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Heavy Splatling: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_heavySplatlingDeco_properties() {
        self.options.mainWeapon = .heavySplatlingDeco
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .heavySplatlingDeco)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .splatlingCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMaxFullCharge))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Heavy Splatling Deco: \(error.localizedDescription)")
        }
    }

    // MARK: - Hydra Splatling
    func test_Splatalyzer_analyze_hydraSplatling_properties() {
        self.options.mainWeapon = .hydraSplatling
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .hydraSplatling)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)
            
            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            XCTAssertNotNil(moveStats.shootingRunSpeedCharging)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .splatlingCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMaxFullCharge))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Hydra Splatling: \(error.localizedDescription)")
        }
    }

    // MARK: - Mini Splatling
    func test_Splatalyzer_analyze_miniSplatling_properties() {
        self.options.mainWeapon = .miniSplatling
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .miniSplatling)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            XCTAssertNotNil(moveStats.shootingRunSpeedCharging)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .splatlingCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMaxFullCharge))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Mini Splatling: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_zinkMiniSplatling_properties() {
        self.options.mainWeapon = .zinkMiniSplatling
        
        do {
            let stats = try self.analyzer.analyze(self.options)
  
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .zinkMiniSplatling)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            XCTAssertNotNil(moveStats.shootingRunSpeedCharging)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .splatlingCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMaxFullCharge))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Zink Mini Splatling: \(error.localizedDescription)")
        }
    }
    
    // MARK: - Nautilus
    func test_Splatalyzer_analyze_nautilus47_properties() {
        self.options.mainWeapon = .nautilus47
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .nautilus47)
            XCTAssertNotNil(mainStats.shotSpreadAir)
            XCTAssertNotNil(mainStats.shotSpreadGround)
            XCTAssertNotNil(mainStats.whiteInkSeconds)
            XCTAssertNotNil(mainStats.maxChargeSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeed)
            XCTAssertNotNil(moveStats.shootingRunSpeedCharging)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .splatlingCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMaxFullCharge))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("Nautilus 47: \(error.localizedDescription)")
        }
    }


}
