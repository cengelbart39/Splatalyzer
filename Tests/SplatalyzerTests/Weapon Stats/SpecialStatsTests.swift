//
//  SpecialStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 2/27/24.
//

import XCTest
@testable import Splatalyzer

final class SpecialStatsTests: XCTestCase {
    
    let service = JSONService()
    var values: AbilityValues!
    
    override func setUp() {
        self.values = try! self.service.decode(AbilityValues.self, from: "ability-values")
    }
    
    override func tearDown() {
        self.values = nil
    }

    // MARK: - Special Duration
    func test_StatHelper_specialDuration_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Crab Tank
        var data = try TestHelper.getSpecialData(for: .crabTank)
        var duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(duration)
                
        // Ink Storm
        data = try TestHelper.getSpecialData(for: .inkStorm)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(duration)
        
        // Killer Wail 5.1
        data = try TestHelper.getSpecialData(for: .killerWail51)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(duration)
        
        // Kraken Royale
        data = try TestHelper.getSpecialData(for: .krakenRoyale)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(duration)
        
        // Trizooka
        data = try TestHelper.getSpecialData(for: .trizooka)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(duration)
        
        // Ultra Stamp
        data = try TestHelper.getSpecialData(for: .ultraStamp)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(duration)
    }
    
    func test_StatHelper_specialDuration_nil() throws {
        
        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try TestHelper.getSpecialData(for: .bigBubbler)
        var duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
                
        // Booyah Bomb
        data = try TestHelper.getSpecialData(for: .booyahBomb)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Ink Vac
        data = try TestHelper.getSpecialData(for: .inkVac)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Inkjet
        data = try TestHelper.getSpecialData(for: .inkjet)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Reefslider
        data = try TestHelper.getSpecialData(for: .reefslider)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Splattercolor Screen
        data = try TestHelper.getSpecialData(for: .splattercolorScreen)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Super Chump
        data = try TestHelper.getSpecialData(for: .superChump)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Tacticooler
        data = try TestHelper.getSpecialData(for: .tacticooler)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Tenta Missiles
        data = try TestHelper.getSpecialData(for: .tentaMissiles)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Triple Inkstrike
        data = try TestHelper.getSpecialData(for: .tripleInkstrike)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Triple Splashdown
        data = try TestHelper.getSpecialData(for: .tripleSplashdown)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Wave Breaker
        data = try TestHelper.getSpecialData(for: .waveBreaker)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Zipcaster
        data = try TestHelper.getSpecialData(for: .zipcaster)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
    }

    // MARK: - Special Damage Distance
    func test_StatHelper_specialDamageDistance_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Inkjet
        var data = try TestHelper.getSpecialData(for: .inkjet)
        var dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(dmgDist)
                
        // Reefslider
        data = try TestHelper.getSpecialData(for: .reefslider)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(dmgDist)
        
        // Super Chump
        data = try TestHelper.getSpecialData(for: .superChump)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(dmgDist)
        
        // Triple Splashdown
        data = try TestHelper.getSpecialData(for: .tripleSplashdown)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(dmgDist)
        
        // Trizooka
        data = try TestHelper.getSpecialData(for: .trizooka)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(dmgDist)
    }
    
    func test_StatHelper_specialDamageDistance_nil() throws {
        
        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try TestHelper.getSpecialData(for: .bigBubbler)
        var dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
                
        // Booyah Bomb
        data = try TestHelper.getSpecialData(for: .booyahBomb)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Crab Tank
        data = try TestHelper.getSpecialData(for: .crabTank)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Ink Storm
        data = try TestHelper.getSpecialData(for: .inkStorm)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Ink Vac
        data = try TestHelper.getSpecialData(for: .inkVac)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Killer Wail 5.1
        data = try TestHelper.getSpecialData(for: .killerWail51)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Kraken Royale
        data = try TestHelper.getSpecialData(for: .krakenRoyale)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Splattercolor Screen
        data = try TestHelper.getSpecialData(for: .splattercolorScreen)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Tacticooler
        data = try TestHelper.getSpecialData(for: .tacticooler)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Tenta Missiles
        data = try TestHelper.getSpecialData(for: .tentaMissiles)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Triple Inkstrike
        data = try TestHelper.getSpecialData(for: .tripleInkstrike)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Ultra Stamp
        data = try TestHelper.getSpecialData(for: .ultraStamp)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Wave Breaker
        data = try TestHelper.getSpecialData(for: .waveBreaker)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Zipcaster
        data = try TestHelper.getSpecialData(for: .zipcaster)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
    }

    // MARK: - Special Paint Radius
    func test_StatHelper_specialPaintRadius_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Inkjet
        var data = try TestHelper.getSpecialData(for: .inkjet)
        var paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(paintRadius)
                
        // Reefslider
        data = try TestHelper.getSpecialData(for: .reefslider)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(paintRadius)
        
        // Super Chump
        data = try TestHelper.getSpecialData(for: .superChump)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(paintRadius)
        
        // Triple Splashdown
        data = try TestHelper.getSpecialData(for: .tripleSplashdown)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(paintRadius)
        
        // Trizooka
        data = try TestHelper.getSpecialData(for: .trizooka)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(paintRadius)
    }
    
    func test_StatHelper_specialPaintRadius_nil() throws {
        
        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try TestHelper.getSpecialData(for: .bigBubbler)
        var paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
                
        // Booyah Bomb
        data = try TestHelper.getSpecialData(for: .booyahBomb)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Crab Tank
        data = try TestHelper.getSpecialData(for: .crabTank)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Ink Storm
        data = try TestHelper.getSpecialData(for: .inkStorm)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Ink Vac
        data = try TestHelper.getSpecialData(for: .inkVac)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Killer Wail 5.1
        data = try TestHelper.getSpecialData(for: .killerWail51)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Kraken Royale
        data = try TestHelper.getSpecialData(for: .krakenRoyale)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Splattercolor Screen
        data = try TestHelper.getSpecialData(for: .splattercolorScreen)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Tacticooler
        data = try TestHelper.getSpecialData(for: .tacticooler)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Tenta Missiles
        data = try TestHelper.getSpecialData(for: .tentaMissiles)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Triple Inkstrike
        data = try TestHelper.getSpecialData(for: .tripleInkstrike)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Ultra Stamp
        data = try TestHelper.getSpecialData(for: .ultraStamp)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Wave Breaker
        data = try TestHelper.getSpecialData(for: .waveBreaker)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Zipcaster
        data = try TestHelper.getSpecialData(for: .zipcaster)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
    }

    // MARK: - Special Field HP
    func test_StatHelper_specialFieldHp_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Big Bubbler
        let data = try TestHelper.getSpecialData(for: .bigBubbler)
        let fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(fieldHp)
    }

    func test_StatHelper_specialFieldHp_nil() throws {
        
        let ap = AbilityPoints()
                
        // Booyah Bomb
        var data = try TestHelper.getSpecialData(for: .booyahBomb)
        var fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Crab Tank
        data = try TestHelper.getSpecialData(for: .crabTank)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Ink Storm
        data = try TestHelper.getSpecialData(for: .inkStorm)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Ink Vac
        data = try TestHelper.getSpecialData(for: .inkVac)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Inkjet
        data = try TestHelper.getSpecialData(for: .inkjet)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Killer Wail 5.1
        data = try TestHelper.getSpecialData(for: .killerWail51)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Kraken Royale
        data = try TestHelper.getSpecialData(for: .krakenRoyale)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Reefslider
        data = try TestHelper.getSpecialData(for: .reefslider)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Splattercolor Screen
        data = try TestHelper.getSpecialData(for: .splattercolorScreen)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Super Chump
        data = try TestHelper.getSpecialData(for: .superChump)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Tacticooler
        data = try TestHelper.getSpecialData(for: .tacticooler)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Tenta Missiles
        data = try TestHelper.getSpecialData(for: .tentaMissiles)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Triple Inkstrike
        data = try TestHelper.getSpecialData(for: .tripleInkstrike)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Triple Splashdown
        data = try TestHelper.getSpecialData(for: .tripleSplashdown)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Trizooka
        data = try TestHelper.getSpecialData(for: .trizooka)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Ultra Stamp
        data = try TestHelper.getSpecialData(for: .ultraStamp)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Wave Breaker
        data = try TestHelper.getSpecialData(for: .waveBreaker)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Zipcaster
        data = try TestHelper.getSpecialData(for: .zipcaster)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
    }

    // MARK: - Special Device HP
    func test_StatHelper_specialDeviceHp_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Big Bubbler
        let data = try TestHelper.getSpecialData(for: .bigBubbler)
        let deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(deviceHp)
    }

    func test_StatHelper_specialDeviceHp_nil() throws {
        
        let ap = AbilityPoints()
                
        // Booyah Bomb
        var data = try TestHelper.getSpecialData(for: .booyahBomb)
        var deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Crab Tank
        data = try TestHelper.getSpecialData(for: .crabTank)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Ink Storm
        data = try TestHelper.getSpecialData(for: .inkStorm)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Ink Vac
        data = try TestHelper.getSpecialData(for: .inkVac)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Inkjet
        data = try TestHelper.getSpecialData(for: .inkjet)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Killer Wail 5.1
        data = try TestHelper.getSpecialData(for: .killerWail51)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Kraken Royale
        data = try TestHelper.getSpecialData(for: .krakenRoyale)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Reefslider
        data = try TestHelper.getSpecialData(for: .reefslider)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Splattercolor Screen
        data = try TestHelper.getSpecialData(for: .splattercolorScreen)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Super Chump
        data = try TestHelper.getSpecialData(for: .superChump)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Tacticooler
        data = try TestHelper.getSpecialData(for: .tacticooler)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Tenta Missiles
        data = try TestHelper.getSpecialData(for: .tentaMissiles)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Triple Inkstrike
        data = try TestHelper.getSpecialData(for: .tripleInkstrike)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Triple Splashdown
        data = try TestHelper.getSpecialData(for: .tripleSplashdown)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Trizooka
        data = try TestHelper.getSpecialData(for: .trizooka)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Ultra Stamp
        data = try TestHelper.getSpecialData(for: .ultraStamp)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Wave Breaker
        data = try TestHelper.getSpecialData(for: .waveBreaker)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Zipcaster
        data = try TestHelper.getSpecialData(for: .zipcaster)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
    }

    // MARK: - Special Hook Ink Consumption
    func test_StatHelper_specialHookInkConsumption_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Zipcaster
        let data = try TestHelper.getSpecialData(for: .zipcaster)
        let hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(hookConsumption)
    }
    
    func test_StatHelper_specialHookInkConsumption_nil() throws {

        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try TestHelper.getSpecialData(for: .bigBubbler)
        var hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
                
        // Booyah Bomb
        data = try TestHelper.getSpecialData(for: .booyahBomb)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Crab Tank
        data = try TestHelper.getSpecialData(for: .crabTank)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Ink Storm
        data = try TestHelper.getSpecialData(for: .inkStorm)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Ink Vac
        data = try TestHelper.getSpecialData(for: .inkVac)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Inkjet
        data = try TestHelper.getSpecialData(for: .inkjet)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Killer Wail 5.1
        data = try TestHelper.getSpecialData(for: .killerWail51)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Kraken Royale
        data = try TestHelper.getSpecialData(for: .krakenRoyale)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Reefslider
        data = try TestHelper.getSpecialData(for: .reefslider)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Splattercolor Screen
        data = try TestHelper.getSpecialData(for: .splattercolorScreen)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Super Chump
        data = try TestHelper.getSpecialData(for: .superChump)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Tacticooler
        data = try TestHelper.getSpecialData(for: .tacticooler)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Tenta Missiles
        data = try TestHelper.getSpecialData(for: .tentaMissiles)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Triple Inkstrike
        data = try TestHelper.getSpecialData(for: .tripleInkstrike)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Triple Splashdown
        data = try TestHelper.getSpecialData(for: .tripleSplashdown)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Trizooka
        data = try TestHelper.getSpecialData(for: .trizooka)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Ultra Stamp
        data = try TestHelper.getSpecialData(for: .ultraStamp)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Wave Breaker
        data = try TestHelper.getSpecialData(for: .waveBreaker)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
    }
    
    // MARK: - Special Hook Ink Consumption Per Second
    func test_StatHelper_specialHookInkConsumptionPerSecond_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Zipcaster
        let data = try TestHelper.getSpecialData(for: .zipcaster)
        let hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(hookConsumption)
    }

    func test_StatHelper_specialHookInkConsumptionPerSecond_nil() throws {

        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try TestHelper.getSpecialData(for: .bigBubbler)
        var hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
                
        // Booyah Bomb
        data = try TestHelper.getSpecialData(for: .booyahBomb)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Crab Tank
        data = try TestHelper.getSpecialData(for: .crabTank)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Ink Storm
        data = try TestHelper.getSpecialData(for: .inkStorm)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Ink Vac
        data = try TestHelper.getSpecialData(for: .inkVac)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Inkjet
        data = try TestHelper.getSpecialData(for: .inkjet)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Killer Wail 5.1
        data = try TestHelper.getSpecialData(for: .killerWail51)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Kraken Royale
        data = try TestHelper.getSpecialData(for: .krakenRoyale)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Reefslider
        data = try TestHelper.getSpecialData(for: .reefslider)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Splattercolor Screen
        data = try TestHelper.getSpecialData(for: .splattercolorScreen)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Super Chump
        data = try TestHelper.getSpecialData(for: .superChump)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Tacticooler
        data = try TestHelper.getSpecialData(for: .tacticooler)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Tenta Missiles
        data = try TestHelper.getSpecialData(for: .tentaMissiles)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Triple Inkstrike
        data = try TestHelper.getSpecialData(for: .tripleInkstrike)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Triple Splashdown
        data = try TestHelper.getSpecialData(for: .tripleSplashdown)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Trizooka
        data = try TestHelper.getSpecialData(for: .trizooka)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Ultra Stamp
        data = try TestHelper.getSpecialData(for: .ultraStamp)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Wave Breaker
        data = try TestHelper.getSpecialData(for: .waveBreaker)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
    }

    // MARK: - Reticle Radius
    func test_StatHelper_specialReticleRadius_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Tenta Missiles
        let data = try TestHelper.getSpecialData(for: .tentaMissiles)
        let radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(radius)
    }
    
    func test_StatHelper_specialReticleRadius_nil() throws {

        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try TestHelper.getSpecialData(for: .bigBubbler)
        var radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
                
        // Booyah Bomb
        data = try TestHelper.getSpecialData(for: .booyahBomb)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Crab Tank
        data = try TestHelper.getSpecialData(for: .crabTank)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Ink Storm
        data = try TestHelper.getSpecialData(for: .inkStorm)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Ink Vac
        data = try TestHelper.getSpecialData(for: .inkVac)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Inkjet
        data = try TestHelper.getSpecialData(for: .inkjet)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Killer Wail 5.1
        data = try TestHelper.getSpecialData(for: .killerWail51)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Kraken Royale
        data = try TestHelper.getSpecialData(for: .krakenRoyale)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Reefslider
        data = try TestHelper.getSpecialData(for: .reefslider)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Splattercolor Screen
        data = try TestHelper.getSpecialData(for: .splattercolorScreen)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Super Chump
        data = try TestHelper.getSpecialData(for: .superChump)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Tacticooler
        data = try TestHelper.getSpecialData(for: .tacticooler)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Triple Inkstrike
        data = try TestHelper.getSpecialData(for: .tripleInkstrike)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Triple Splashdown
        data = try TestHelper.getSpecialData(for: .tripleSplashdown)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Trizooka
        data = try TestHelper.getSpecialData(for: .trizooka)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Ultra Stamp
        data = try TestHelper.getSpecialData(for: .ultraStamp)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Wave Breaker
        data = try TestHelper.getSpecialData(for: .waveBreaker)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Zipcaster
        data = try TestHelper.getSpecialData(for: .zipcaster)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
    }
    
    // MARK: - Throw Distance
    func test_StatHelper_specialThrowDistance_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Ink Storm
        var data = try TestHelper.getSpecialData(for: .inkStorm)
        var dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(dist)
        
        // Splattercolor Screen
        data = try TestHelper.getSpecialData(for: .splattercolorScreen)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(dist)
        
        // Triple Inkstrike
        data = try TestHelper.getSpecialData(for: .tripleInkstrike)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(dist)
    }
    
    func test_StatHelper_specialThrowDistance_nil() throws {

        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try TestHelper.getSpecialData(for: .bigBubbler)
        var dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
                
        // Booyah Bomb
        data = try TestHelper.getSpecialData(for: .booyahBomb)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Crab Tank
        data = try TestHelper.getSpecialData(for: .crabTank)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Ink Vac
        data = try TestHelper.getSpecialData(for: .inkVac)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Inkjet
        data = try TestHelper.getSpecialData(for: .inkjet)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Killer Wail 5.1
        data = try TestHelper.getSpecialData(for: .killerWail51)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Kraken Royale
        data = try TestHelper.getSpecialData(for: .krakenRoyale)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Reefslider
        data = try TestHelper.getSpecialData(for: .reefslider)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Super Chump
        data = try TestHelper.getSpecialData(for: .superChump)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Tacticooler
        data = try TestHelper.getSpecialData(for: .tacticooler)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Tenta Missiles
        data = try TestHelper.getSpecialData(for: .tentaMissiles)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Triple Splashdown
        data = try TestHelper.getSpecialData(for: .tripleSplashdown)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Trizooka
        data = try TestHelper.getSpecialData(for: .trizooka)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Ultra Stamp
        data = try TestHelper.getSpecialData(for: .ultraStamp)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Wave Breaker
        data = try TestHelper.getSpecialData(for: .waveBreaker)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Zipcaster
        data = try TestHelper.getSpecialData(for: .zipcaster)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
    }

    // MARK: - Move Speed
    func test_StatHelper_specialMoveSpeed_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Splattercolor Screen
        let data = try TestHelper.getSpecialData(for: .splattercolorScreen)
        let speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(speed)
    }
    
    func test_StatHelper_specialMoveSpeed_nil() throws {

        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try TestHelper.getSpecialData(for: .bigBubbler)
        var speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
                
        // Booyah Bomb
        data = try TestHelper.getSpecialData(for: .booyahBomb)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Crab Tank
        data = try TestHelper.getSpecialData(for: .crabTank)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Ink Storm
        data = try TestHelper.getSpecialData(for: .inkStorm)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Ink Vac
        data = try TestHelper.getSpecialData(for: .inkVac)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Inkjet
        data = try TestHelper.getSpecialData(for: .inkjet)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Killer Wail 5.1
        data = try TestHelper.getSpecialData(for: .killerWail51)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Kraken Royale
        data = try TestHelper.getSpecialData(for: .krakenRoyale)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Reefslider
        data = try TestHelper.getSpecialData(for: .reefslider)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Super Chump
        data = try TestHelper.getSpecialData(for: .superChump)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Tacticooler
        data = try TestHelper.getSpecialData(for: .tacticooler)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Tenta Missiles
        data = try TestHelper.getSpecialData(for: .tentaMissiles)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Triple Inkstrike
        data = try TestHelper.getSpecialData(for: .tripleInkstrike)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Triple Splashdown
        data = try TestHelper.getSpecialData(for: .tripleSplashdown)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Trizooka
        data = try TestHelper.getSpecialData(for: .trizooka)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Ultra Stamp
        data = try TestHelper.getSpecialData(for: .ultraStamp)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Wave Breaker
        data = try TestHelper.getSpecialData(for: .waveBreaker)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Zipcaster
        data = try TestHelper.getSpecialData(for: .zipcaster)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
    }

    // MARK: - Auto Charge Rate
    func test_StatHelper_specialAutoChargeRate_nil() throws {

        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try TestHelper.getSpecialData(for: .bigBubbler)
        var rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
                
        // Booyah Bomb
        data = try TestHelper.getSpecialData(for: .booyahBomb)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Crab Tank
        data = try TestHelper.getSpecialData(for: .crabTank)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Ink Storm
        data = try TestHelper.getSpecialData(for: .inkStorm)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Ink Vac
        data = try TestHelper.getSpecialData(for: .inkVac)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Inkjet
        data = try TestHelper.getSpecialData(for: .inkjet)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Killer Wail 5.1
        data = try TestHelper.getSpecialData(for: .killerWail51)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Kraken Royale
        data = try TestHelper.getSpecialData(for: .krakenRoyale)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Reefslider
        data = try TestHelper.getSpecialData(for: .reefslider)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Splattercolor Screen
        data = try TestHelper.getSpecialData(for: .splattercolorScreen)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Super Chump
        data = try TestHelper.getSpecialData(for: .superChump)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Tacticooler
        data = try TestHelper.getSpecialData(for: .tacticooler)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Tenta Missiles
        data = try TestHelper.getSpecialData(for: .tentaMissiles)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Triple Inkstrike
        data = try TestHelper.getSpecialData(for: .tripleInkstrike)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Triple Splashdown
        data = try TestHelper.getSpecialData(for: .tripleSplashdown)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Trizooka
        data = try TestHelper.getSpecialData(for: .trizooka)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Ultra Stamp
        data = try TestHelper.getSpecialData(for: .ultraStamp)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Wave Breaker
        data = try TestHelper.getSpecialData(for: .waveBreaker)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Zipcaster
        data = try TestHelper.getSpecialData(for: .zipcaster)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
    }

    // MARK: - Max Radius
    func test_StatHelper_specialMaxRadius_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Wave Breaker
        let data = try TestHelper.getSpecialData(for: .waveBreaker)
        let radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(radius)
    }
    
    func test_StatHelper_specialMaxRadius_nil() throws {

        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try TestHelper.getSpecialData(for: .bigBubbler)
        var radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
                
        // Booyah Bomb
        data = try TestHelper.getSpecialData(for: .booyahBomb)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Crab Tank
        data = try TestHelper.getSpecialData(for: .crabTank)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Ink Storm
        data = try TestHelper.getSpecialData(for: .inkStorm)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Ink Vac
        data = try TestHelper.getSpecialData(for: .inkVac)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Inkjet
        data = try TestHelper.getSpecialData(for: .inkjet)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Killer Wail 5.1
        data = try TestHelper.getSpecialData(for: .killerWail51)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Kraken Royale
        data = try TestHelper.getSpecialData(for: .krakenRoyale)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Reefslider
        data = try TestHelper.getSpecialData(for: .reefslider)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Splattercolor Screen
        data = try TestHelper.getSpecialData(for: .splattercolorScreen)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Super Chump
        data = try TestHelper.getSpecialData(for: .superChump)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Tacticooler
        data = try TestHelper.getSpecialData(for: .tacticooler)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Tenta Missiles
        data = try TestHelper.getSpecialData(for: .tentaMissiles)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Triple Inkstrike
        data = try TestHelper.getSpecialData(for: .tripleInkstrike)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Triple Splashdown
        data = try TestHelper.getSpecialData(for: .tripleSplashdown)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Trizooka
        data = try TestHelper.getSpecialData(for: .trizooka)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Ultra Stamp
        data = try TestHelper.getSpecialData(for: .ultraStamp)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Zipcaster
        data = try TestHelper.getSpecialData(for: .zipcaster)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
    }

    // MARK: - Radius Range
    func test_StatHelper_specialRadiusRange_nil() throws {

        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try TestHelper.getSpecialData(for: .bigBubbler)
        var range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
                
        // Booyah Bomb
        data = try TestHelper.getSpecialData(for: .booyahBomb)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Crab Tank
        data = try TestHelper.getSpecialData(for: .crabTank)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Ink Storm
        data = try TestHelper.getSpecialData(for: .inkStorm)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Ink Vac
        data = try TestHelper.getSpecialData(for: .inkVac)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Inkjet
        data = try TestHelper.getSpecialData(for: .inkjet)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Killer Wail 5.1
        data = try TestHelper.getSpecialData(for: .killerWail51)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Kraken Royale
        data = try TestHelper.getSpecialData(for: .krakenRoyale)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Reefslider
        data = try TestHelper.getSpecialData(for: .reefslider)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Splattercolor Screen
        data = try TestHelper.getSpecialData(for: .splattercolorScreen)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Super Chump
        data = try TestHelper.getSpecialData(for: .superChump)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Tacticooler
        data = try TestHelper.getSpecialData(for: .tacticooler)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Tenta Missiles
        data = try TestHelper.getSpecialData(for: .tentaMissiles)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Triple Inkstrike
        data = try TestHelper.getSpecialData(for: .tripleInkstrike)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Triple Splashdown
        data = try TestHelper.getSpecialData(for: .tripleSplashdown)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Trizooka
        data = try TestHelper.getSpecialData(for: .trizooka)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Ultra Stamp
        data = try TestHelper.getSpecialData(for: .ultraStamp)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Wave Breaker
        data = try TestHelper.getSpecialData(for: .waveBreaker)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Zipcaster
        data = try TestHelper.getSpecialData(for: .zipcaster)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
    }

    // TODO: Power Up Duration
    func test_StatHelper_specialPowerUpDuration_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Tacticooler
        let data = try TestHelper.getSpecialData(for: .tacticooler)
        let radius = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(radius)
    }
    
    func test_StatHelper_specialPowerUpDuration_nil() throws {

        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try TestHelper.getSpecialData(for: .bigBubbler)
        var powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
                
        // Booyah Bomb
        data = try TestHelper.getSpecialData(for: .booyahBomb)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Crab Tank
        data = try TestHelper.getSpecialData(for: .crabTank)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Ink Storm
        data = try TestHelper.getSpecialData(for: .inkStorm)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Ink Vac
        data = try TestHelper.getSpecialData(for: .inkVac)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Inkjet
        data = try TestHelper.getSpecialData(for: .inkjet)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Killer Wail 5.1
        data = try TestHelper.getSpecialData(for: .killerWail51)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Kraken Royale
        data = try TestHelper.getSpecialData(for: .krakenRoyale)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Reefslider
        data = try TestHelper.getSpecialData(for: .reefslider)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Splattercolor Screen
        data = try TestHelper.getSpecialData(for: .splattercolorScreen)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Super Chump
        data = try TestHelper.getSpecialData(for: .superChump)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Tenta Missiles
        data = try TestHelper.getSpecialData(for: .tentaMissiles)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Triple Inkstrike
        data = try TestHelper.getSpecialData(for: .tripleInkstrike)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Triple Splashdown
        data = try TestHelper.getSpecialData(for: .tripleSplashdown)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Trizooka
        data = try TestHelper.getSpecialData(for: .trizooka)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Ultra Stamp
        data = try TestHelper.getSpecialData(for: .ultraStamp)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Wave Breaker
        data = try TestHelper.getSpecialData(for: .waveBreaker)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Zipcaster
        data = try TestHelper.getSpecialData(for: .zipcaster)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
    }
}
