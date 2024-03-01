//
//  RollerStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 2/22/24.
//

import XCTest
@testable import Splatalyzer

final class RollerStatsTests: XCTestCase {
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
    
    // MARK: - Big Swig Roller
    func test_Splatalyzer_analyze_bigSwigRoller_properties() {
        self.options.mainWeapon = .bigSwigRoller
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .bigSwigRoller)
            XCTAssertFalse(mainStats.exists())

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .verticalSwing))
            XCTAssertTrue(inkTankOptions.contains(type: .horizontalSwing))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMin))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMin))
            XCTAssertTrue(mainDamages.contains(type: .rollOver))
            
        } catch {
            XCTFail("Big Swig Roller: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_bigSwigRollerExpress_properties() {
        self.options.mainWeapon = .bigSwigRollerExpress
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .bigSwigRollerExpress)
            XCTAssertFalse(mainStats.exists())

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .verticalSwing))
            XCTAssertTrue(inkTankOptions.contains(type: .horizontalSwing))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMin))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMin))
            XCTAssertTrue(mainDamages.contains(type: .rollOver))
            
        } catch {
            XCTFail("Big Swig Roller Express: \(error.localizedDescription)")
        }
    }

    // MARK: - Carbon Roller
    func test_Splatalyzer_analyze_carbonRoller_properties() {
        self.options.mainWeapon = .carbonRoller
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .carbonRoller)
            XCTAssertFalse(mainStats.exists())

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .verticalSwing))
            XCTAssertTrue(inkTankOptions.contains(type: .horizontalSwing))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMin))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMin))
            XCTAssertTrue(mainDamages.contains(type: .rollOver))
            
        } catch {
            XCTFail("Carbon Roller: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_carbonRollerDeco_properties() {
        self.options.mainWeapon = .carbonRollerDeco
        
        do {
            let stats = try self.analyzer.analyze(self.options)

            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .carbonRollerDeco)
            XCTAssertFalse(mainStats.exists())

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .verticalSwing))
            XCTAssertTrue(inkTankOptions.contains(type: .horizontalSwing))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMin))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMin))
            XCTAssertTrue(mainDamages.contains(type: .rollOver))
            
        } catch {
            XCTFail("Carbon Roller Deco: \(error.localizedDescription)")
        }
    }

    // MARK: - Dynamo Roller
    func test_Splatalyzer_analyze_dynamoRoller_properties() {
        self.options.mainWeapon = .dynamoRoller
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .dynamoRoller)
            XCTAssertFalse(mainStats.exists())

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .verticalSwing))
            XCTAssertTrue(inkTankOptions.contains(type: .horizontalSwing))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMin))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMin))
            XCTAssertTrue(mainDamages.contains(type: .rollOver))
            
        } catch {
            XCTFail("Dynamo Roller: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_goldDynamoRoller_properties() {
        self.options.mainWeapon = .goldDynamoRoller
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .goldDynamoRoller)
            XCTAssertFalse(mainStats.exists())

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .verticalSwing))
            XCTAssertTrue(inkTankOptions.contains(type: .horizontalSwing))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMin))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMin))
            XCTAssertTrue(mainDamages.contains(type: .rollOver))
            
        } catch {
            XCTFail("Gold Dynamo Roller: \(error.localizedDescription)")
        }
    }

    // MARK: - Flingza Roller
    func test_Splatalyzer_analyze_flingzaRoller_properties() {
        self.options.mainWeapon = .flingzaRoller
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .flingzaRoller)
            XCTAssertFalse(mainStats.exists())

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .verticalSwing))
            XCTAssertTrue(inkTankOptions.contains(type: .horizontalSwing))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMin))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMin))
            XCTAssertTrue(mainDamages.contains(type: .rollOver))
            
        } catch {
            XCTFail("Flingza Roller: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_foilFlingzaRoller_properties() {
        self.options.mainWeapon = .foilFlingzaRoller
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .foilFlingzaRoller)
            XCTAssertFalse(mainStats.exists())

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .verticalSwing))
            XCTAssertTrue(inkTankOptions.contains(type: .horizontalSwing))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMin))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMin))
            XCTAssertTrue(mainDamages.contains(type: .rollOver))
            
        } catch {
            XCTFail("Flingza Roller: \(error.localizedDescription)")
        }
    }


    // MARK: - Splat Roller
    func test_Splatalyzer_analyze_splatRoller_properties() {
        self.options.mainWeapon = .splatRoller
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .splatRoller)
            XCTAssertFalse(mainStats.exists())

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .verticalSwing))
            XCTAssertTrue(inkTankOptions.contains(type: .horizontalSwing))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMin))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMin))
            XCTAssertTrue(mainDamages.contains(type: .rollOver))
            
        } catch {
            XCTFail("Splat Roller: \(error.localizedDescription)")
        }
    }

    func test_Splatalyzer_analyze_krakOnSplatRoller_properties() {
        self.options.mainWeapon = .krakOnSplatRoller
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .krakOnSplatRoller)
            XCTAssertFalse(mainStats.exists())

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .verticalSwing))
            XCTAssertTrue(inkTankOptions.contains(type: .horizontalSwing))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMin))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMin))
            XCTAssertTrue(mainDamages.contains(type: .rollOver))
            
        } catch {
            XCTFail("Krak-On Splat Roller: \(error.localizedDescription)")
        }
    }
    
    func test_Splatalyzer_analyze_orderRollerReplica_properties() {
        self.options.mainWeapon = .orderRollerReplica
        
        do {
            let stats = try self.analyzer.analyze(self.options)
                                                
            let mainStats = stats.mainStats
            XCTAssertEqual(mainStats.weapon, .orderRollerReplica)
            XCTAssertFalse(mainStats.exists())

            let inkTankOptions = stats.fullInkTankOptions
            XCTAssertFalse(inkTankOptions.isEmpty)
            XCTAssertTrue(inkTankOptions.contains(type: .verticalSwing))
            XCTAssertTrue(inkTankOptions.contains(type: .horizontalSwing))

            let mainDamages = stats.mainDamages
            XCTAssertFalse(mainDamages.isEmpty)
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashVerticalMin))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMax))
            XCTAssertTrue(mainDamages.contains(type: .splashHorizontalMin))
            XCTAssertTrue(mainDamages.contains(type: .rollOver))
            
        } catch {
            XCTFail("Splat Roller: \(error.localizedDescription)")
        }
    }


}
