//
//  StringerStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 2/23/24.
//

import XCTest
@testable import Splatalyzer

final class StringerStatsTests: XCTestCase {

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
    
    // MARK: - REEF-LUX 450
    func test_Splatalyzer_analyze_reeflux450_properties() {
        self.options.mainWeapon = .reeflux450
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .reeflux450)
            XCTAssertNotNil(mainStats.fullChargeSeconds)
            XCTAssertNotNil(mainStats.maxChargeSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
            
            XCTAssertNotNil(stats.multiShots)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
            
        } catch {
            XCTFail("REEF-LUX 450: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_reeflux450Deco_properties() {
        self.options.mainWeapon = .reeflux450Deco
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .reeflux450Deco)
            XCTAssertNotNil(mainStats.fullChargeSeconds)
            XCTAssertNotNil(mainStats.maxChargeSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
            
            XCTAssertNotNil(stats.multiShots)

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            
        } catch {
            XCTFail("REEF-LUX 450 Deco: \(error.localizedDescription)")
        }
    }

    // MARK: - Tri-Stringer
    func test_Splatalyzer_analyze_triStringer_properties() {
        self.options.mainWeapon = .triStringer
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .triStringer)
            XCTAssertNotNil(mainStats.fullChargeSeconds)
            XCTAssertNotNil(mainStats.maxChargeSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            XCTAssertTrue(mainDamages.contains(type: .splash))
            
        } catch {
            XCTFail("Tri-Stringer: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_inklineTriStringer_properties() {
        self.options.mainWeapon = .inklineTriStringer
        
        do {
            let stats = try self.analyzer.analyze(self.options)
            
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .inklineTriStringer)
            XCTAssertNotNil(mainStats.fullChargeSeconds)
            XCTAssertNotNil(mainStats.maxChargeSeconds)

            let moveStats = stats.moveStats
            XCTAssertNotNil(moveStats.shootingRunSpeedFullCharge)
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .normalMax))
            XCTAssertTrue(mainDamages.contains(type: .normalMin))
            XCTAssertTrue(mainDamages.contains(type: .splash))
            
        } catch {
            XCTFail("Inkline Tri-Stringer: \(error.localizedDescription)")
        }
    }

}
