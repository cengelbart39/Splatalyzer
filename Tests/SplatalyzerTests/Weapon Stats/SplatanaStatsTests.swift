//
//  SplatanaStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 2/23/24.
//

import XCTest
@testable import Splatalyzer

final class SplatanaStatsTests: XCTestCase {

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
    
    // MARK: - Splatana Stamper
    func test_Splatalyzer_analyze_splatanaStamper_properties() {
        self.options.mainWeapon = .splatanaStamper
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .splatanaStamper)
            XCTAssertFalse(mainStats.exists())
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .swing))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splatanaVertical))
            XCTAssertTrue(mainDamages.contains(type: .splatanaVerticalDirect))
            XCTAssertTrue(mainDamages.contains(type: .splatanaHorizontal))
            XCTAssertTrue(mainDamages.contains(type: .splatanaHorizontalDirect))
            
        } catch {
            XCTFail("Splatana Stamper: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_neoSplatanaStamper_properties() {
        self.options.mainWeapon = .neoSplatanaStamper
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .neoSplatanaStamper)
            XCTAssertFalse(mainStats.exists())
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .swing))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splatanaVertical))
            XCTAssertTrue(mainDamages.contains(type: .splatanaVerticalDirect))
            XCTAssertTrue(mainDamages.contains(type: .splatanaHorizontal))
            XCTAssertTrue(mainDamages.contains(type: .splatanaHorizontalDirect))
            
        } catch {
            XCTFail("Neo Splatana Stamper: \(error.localizedDescription)")
        }
    }

    // MARK: - Splatana Wiper
    func test_Splatalyzer_analyze_splatanaWiper_properties() {
        self.options.mainWeapon = .splatanaWiper
        
        do {
            let stats = try self.analyzer.analyze(self.options)
            
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .splatanaWiper)
            XCTAssertFalse(mainStats.exists())
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .swing))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splatanaVertical))
            XCTAssertTrue(mainDamages.contains(type: .splatanaVerticalDirect))
            XCTAssertTrue(mainDamages.contains(type: .splatanaHorizontal))
            XCTAssertTrue(mainDamages.contains(type: .splatanaHorizontalDirect))
            
        } catch {
            XCTFail("Splatana Wiper: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_splatanaWiperDeco_properties() {
        self.options.mainWeapon = .splatanaWiperDeco
        
        do {
            let stats = try self.analyzer.analyze(self.options)
            
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .splatanaWiperDeco)
            XCTAssertFalse(mainStats.exists())
            
            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .swing))
            XCTAssertTrue(inkTankOptions.contains(type: .fullCharge))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splatanaVertical))
            XCTAssertTrue(mainDamages.contains(type: .splatanaVerticalDirect))
            XCTAssertTrue(mainDamages.contains(type: .splatanaHorizontal))
            XCTAssertTrue(mainDamages.contains(type: .splatanaHorizontalDirect))
            
        } catch {
            XCTFail("Splatana Wiper Deco: \(error.localizedDescription)")
        }
    }

}
