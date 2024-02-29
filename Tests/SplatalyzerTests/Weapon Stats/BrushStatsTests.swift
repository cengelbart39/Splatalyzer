//
//  BrushStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 2/21/24.
//

import XCTest
@testable import Splatalyzer

final class BrushStatsTests: XCTestCase {
    
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
    
    // MARK: - Inkbrush
    func test_Splatalyzer_analyze_inkbrush_properties() {
        self.options.mainWeapon = .inkbrush
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                        
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .inkbrush)
            XCTAssertFalse(mainStats.exists())
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .swing))
            
            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splashMax))
            XCTAssertTrue(mainDamages.contains(type: .splashMin))
            XCTAssertTrue(mainDamages.contains(type: .rollOver))
            
        } catch {
            XCTFail("Inkbursh: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_inkbrushNouveau_properties() {
        self.options.mainWeapon = .inkbrushNouveau
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .inkbrushNouveau)
            XCTAssertFalse(mainStats.exists())
          
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .swing))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splashMax))
            XCTAssertTrue(mainDamages.contains(type: .splashMin))
            XCTAssertTrue(mainDamages.contains(type: .rollOver))
            
        } catch {
            XCTFail("Inkbursh Nouveau: \(error.localizedDescription)")
        }
    }

    // MARK: - Octobrush
    func test_Splatalyzer_analyze_octobrush_properties() {
        self.options.mainWeapon = .octobrush
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .octobrush)
            XCTAssertFalse(mainStats.exists())
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .swing))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splashMax))
            XCTAssertTrue(mainDamages.contains(type: .splashMin))
            XCTAssertTrue(mainDamages.contains(type: .rollOver))
            
        } catch {
            XCTFail("Octobrush: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_octobrushNouveau_properties() {
        self.options.mainWeapon = .octobrushNouveau
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .octobrushNouveau)
            XCTAssertFalse(mainStats.exists())
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .swing))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splashMax))
            XCTAssertTrue(mainDamages.contains(type: .splashMin))
            XCTAssertTrue(mainDamages.contains(type: .rollOver))
            
        } catch {
            XCTFail("Octobrush Nouveau: \(error.localizedDescription)")
        }
    }

    // MARK: - Painbrush
    func test_Splatalyzer_analyze_painbrush_properties() {
        self.options.mainWeapon = .painbrush
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .painbrush)
            XCTAssertFalse(mainStats.exists())
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .swing))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splashMax))
            XCTAssertTrue(mainDamages.contains(type: .splashMin))
            XCTAssertTrue(mainDamages.contains(type: .rollOver))
            
        } catch {
            XCTFail("Painbrush: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_painbrushNouveau_properties() {
        self.options.mainWeapon = .painbrushNouveau
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .painbrushNouveau)
            XCTAssertFalse(mainStats.exists())
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .swing))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splashMax))
            XCTAssertTrue(mainDamages.contains(type: .splashMin))
            XCTAssertTrue(mainDamages.contains(type: .rollOver))
            
        } catch {
            XCTFail("Painbrush Nouveau: \(error.localizedDescription)")
        }
    }

}
