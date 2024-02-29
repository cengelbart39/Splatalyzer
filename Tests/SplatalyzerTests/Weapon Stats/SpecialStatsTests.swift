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
        var data = try self.getData(for: .crabTank)
        var duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(duration)
                
        // Ink Storm
        data = try self.getData(for: .inkStorm)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(duration)
        
        // Killer Wail 5.1
        data = try self.getData(for: .killerWail51)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(duration)
        
        // Kraken Royale
        data = try self.getData(for: .krakenRoyale)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(duration)
        
        // Trizooka
        data = try self.getData(for: .trizooka)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(duration)
        
        // Ultra Stamp
        data = try self.getData(for: .ultraStamp)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(duration)
    }
    
    func test_StatHelper_specialDuration_nil() throws {
        
        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try self.getData(for: .bigBubbler)
        var duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
                
        // Booyah Bomb
        data = try self.getData(for: .booyahBomb)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Ink Vac
        data = try self.getData(for: .inkVac)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Inkjet
        data = try self.getData(for: .inkjet)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Reefslider
        data = try self.getData(for: .reefslider)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Splattercolor Screen
        data = try self.getData(for: .splattercolorScreen)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Super Chump
        data = try self.getData(for: .superChump)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Tacticooler
        data = try self.getData(for: .tacticooler)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Tenta Missiles
        data = try self.getData(for: .tentaMissiles)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Triple Inkstrike
        data = try self.getData(for: .tripleInkstrike)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Triple Splashdown
        data = try self.getData(for: .tripleSplashdown)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Wave Breaker
        data = try self.getData(for: .waveBreaker)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
        
        // Zipcaster
        data = try self.getData(for: .zipcaster)
        duration = StatHelper.specialDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(duration)
    }

    // MARK: - Special Damage Distance
    func test_StatHelper_specialDamageDistance_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Inkjet
        var data = try self.getData(for: .inkjet)
        var dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(dmgDist)
                
        // Reefslider
        data = try self.getData(for: .reefslider)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(dmgDist)
        
        // Super Chump
        data = try self.getData(for: .superChump)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(dmgDist)
        
        // Triple Splashdown
        data = try self.getData(for: .tripleSplashdown)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(dmgDist)
        
        // Trizooka
        data = try self.getData(for: .trizooka)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(dmgDist)
    }
    
    func test_StatHelper_specialDamageDistance_nil() throws {
        
        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try self.getData(for: .bigBubbler)
        var dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
                
        // Booyah Bomb
        data = try self.getData(for: .booyahBomb)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Crab Tank
        data = try self.getData(for: .crabTank)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Ink Storm
        data = try self.getData(for: .inkStorm)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Ink Vac
        data = try self.getData(for: .inkVac)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Killer Wail 5.1
        data = try self.getData(for: .killerWail51)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Kraken Royale
        data = try self.getData(for: .krakenRoyale)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Splattercolor Screen
        data = try self.getData(for: .splattercolorScreen)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Tacticooler
        data = try self.getData(for: .tacticooler)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Tenta Missiles
        data = try self.getData(for: .tentaMissiles)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Triple Inkstrike
        data = try self.getData(for: .tripleInkstrike)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Ultra Stamp
        data = try self.getData(for: .ultraStamp)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Wave Breaker
        data = try self.getData(for: .waveBreaker)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
        
        // Zipcaster
        data = try self.getData(for: .zipcaster)
        dmgDist = StatHelper.specialDamageDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dmgDist)
    }

    // MARK: - Special Paint Radius
    func test_StatHelper_specialPaintRadius_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Inkjet
        var data = try self.getData(for: .inkjet)
        var paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(paintRadius)
                
        // Reefslider
        data = try self.getData(for: .reefslider)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(paintRadius)
        
        // Super Chump
        data = try self.getData(for: .superChump)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(paintRadius)
        
        // Triple Splashdown
        data = try self.getData(for: .tripleSplashdown)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(paintRadius)
        
        // Trizooka
        data = try self.getData(for: .trizooka)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(paintRadius)
    }
    
    func test_StatHelper_specialPaintRadius_nil() throws {
        
        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try self.getData(for: .bigBubbler)
        var paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
                
        // Booyah Bomb
        data = try self.getData(for: .booyahBomb)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Crab Tank
        data = try self.getData(for: .crabTank)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Ink Storm
        data = try self.getData(for: .inkStorm)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Ink Vac
        data = try self.getData(for: .inkVac)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Killer Wail 5.1
        data = try self.getData(for: .killerWail51)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Kraken Royale
        data = try self.getData(for: .krakenRoyale)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Splattercolor Screen
        data = try self.getData(for: .splattercolorScreen)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Tacticooler
        data = try self.getData(for: .tacticooler)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Tenta Missiles
        data = try self.getData(for: .tentaMissiles)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Triple Inkstrike
        data = try self.getData(for: .tripleInkstrike)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Ultra Stamp
        data = try self.getData(for: .ultraStamp)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Wave Breaker
        data = try self.getData(for: .waveBreaker)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
        
        // Zipcaster
        data = try self.getData(for: .zipcaster)
        paintRadius = StatHelper.specialPaintRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(paintRadius)
    }

    // MARK: - Special Field HP
    func test_StatHelper_specialFieldHp_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Big Bubbler
        let data = try self.getData(for: .bigBubbler)
        let fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(fieldHp)
    }

    func test_StatHelper_specialFieldHp_nil() throws {
        
        let ap = AbilityPoints()
                
        // Booyah Bomb
        var data = try self.getData(for: .booyahBomb)
        var fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Crab Tank
        data = try self.getData(for: .crabTank)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Ink Storm
        data = try self.getData(for: .inkStorm)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Ink Vac
        data = try self.getData(for: .inkVac)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Inkjet
        data = try self.getData(for: .inkjet)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Killer Wail 5.1
        data = try self.getData(for: .killerWail51)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Kraken Royale
        data = try self.getData(for: .krakenRoyale)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Reefslider
        data = try self.getData(for: .reefslider)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Splattercolor Screen
        data = try self.getData(for: .splattercolorScreen)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Super Chump
        data = try self.getData(for: .superChump)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Tacticooler
        data = try self.getData(for: .tacticooler)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Tenta Missiles
        data = try self.getData(for: .tentaMissiles)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Triple Inkstrike
        data = try self.getData(for: .tripleInkstrike)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Triple Splashdown
        data = try self.getData(for: .tripleSplashdown)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Trizooka
        data = try self.getData(for: .trizooka)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Ultra Stamp
        data = try self.getData(for: .ultraStamp)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Wave Breaker
        data = try self.getData(for: .waveBreaker)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
        
        // Zipcaster
        data = try self.getData(for: .zipcaster)
        fieldHp = StatHelper.specialFieldHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(fieldHp)
    }

    // MARK: - Special Device HP
    func test_StatHelper_specialDeviceHp_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Big Bubbler
        let data = try self.getData(for: .bigBubbler)
        let deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(deviceHp)
    }

    func test_StatHelper_specialDeviceHp_nil() throws {
        
        let ap = AbilityPoints()
                
        // Booyah Bomb
        var data = try self.getData(for: .booyahBomb)
        var deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Crab Tank
        data = try self.getData(for: .crabTank)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Ink Storm
        data = try self.getData(for: .inkStorm)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Ink Vac
        data = try self.getData(for: .inkVac)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Inkjet
        data = try self.getData(for: .inkjet)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Killer Wail 5.1
        data = try self.getData(for: .killerWail51)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Kraken Royale
        data = try self.getData(for: .krakenRoyale)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Reefslider
        data = try self.getData(for: .reefslider)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Splattercolor Screen
        data = try self.getData(for: .splattercolorScreen)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Super Chump
        data = try self.getData(for: .superChump)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Tacticooler
        data = try self.getData(for: .tacticooler)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Tenta Missiles
        data = try self.getData(for: .tentaMissiles)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Triple Inkstrike
        data = try self.getData(for: .tripleInkstrike)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Triple Splashdown
        data = try self.getData(for: .tripleSplashdown)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Trizooka
        data = try self.getData(for: .trizooka)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Ultra Stamp
        data = try self.getData(for: .ultraStamp)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Wave Breaker
        data = try self.getData(for: .waveBreaker)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
        
        // Zipcaster
        data = try self.getData(for: .zipcaster)
        deviceHp = StatHelper.specialDeviceHp(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(deviceHp)
    }

    // MARK: - Special Hook Ink Consumption
    func test_StatHelper_specialHookInkConsumption_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Zipcaster
        let data = try self.getData(for: .zipcaster)
        let hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(hookConsumption)
    }
    
    func test_StatHelper_specialHookInkConsumption_nil() throws {

        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try self.getData(for: .bigBubbler)
        var hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
                
        // Booyah Bomb
        data = try self.getData(for: .booyahBomb)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Crab Tank
        data = try self.getData(for: .crabTank)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Ink Storm
        data = try self.getData(for: .inkStorm)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Ink Vac
        data = try self.getData(for: .inkVac)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Inkjet
        data = try self.getData(for: .inkjet)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Killer Wail 5.1
        data = try self.getData(for: .killerWail51)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Kraken Royale
        data = try self.getData(for: .krakenRoyale)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Reefslider
        data = try self.getData(for: .reefslider)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Splattercolor Screen
        data = try self.getData(for: .splattercolorScreen)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Super Chump
        data = try self.getData(for: .superChump)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Tacticooler
        data = try self.getData(for: .tacticooler)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Tenta Missiles
        data = try self.getData(for: .tentaMissiles)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Triple Inkstrike
        data = try self.getData(for: .tripleInkstrike)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Triple Splashdown
        data = try self.getData(for: .tripleSplashdown)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Trizooka
        data = try self.getData(for: .trizooka)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Ultra Stamp
        data = try self.getData(for: .ultraStamp)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Wave Breaker
        data = try self.getData(for: .waveBreaker)
        hookConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
    }
    
    // MARK: - Special Hook Ink Consumption Per Second
    func test_StatHelper_specialHookInkConsumptionPerSecond_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Zipcaster
        let data = try self.getData(for: .zipcaster)
        let hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(hookConsumption)
    }

    func test_StatHelper_specialHookInkConsumptionPerSecond_nil() throws {

        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try self.getData(for: .bigBubbler)
        var hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
                
        // Booyah Bomb
        data = try self.getData(for: .booyahBomb)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Crab Tank
        data = try self.getData(for: .crabTank)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Ink Storm
        data = try self.getData(for: .inkStorm)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Ink Vac
        data = try self.getData(for: .inkVac)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Inkjet
        data = try self.getData(for: .inkjet)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Killer Wail 5.1
        data = try self.getData(for: .killerWail51)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Kraken Royale
        data = try self.getData(for: .krakenRoyale)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Reefslider
        data = try self.getData(for: .reefslider)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Splattercolor Screen
        data = try self.getData(for: .splattercolorScreen)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Super Chump
        data = try self.getData(for: .superChump)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Tacticooler
        data = try self.getData(for: .tacticooler)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Tenta Missiles
        data = try self.getData(for: .tentaMissiles)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Triple Inkstrike
        data = try self.getData(for: .tripleInkstrike)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Triple Splashdown
        data = try self.getData(for: .tripleSplashdown)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Trizooka
        data = try self.getData(for: .trizooka)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Ultra Stamp
        data = try self.getData(for: .ultraStamp)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
        
        // Wave Breaker
        data = try self.getData(for: .waveBreaker)
        hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(hookConsumption)
    }

    // MARK: - Reticle Radius
    func test_StatHelper_specialReticleRadius_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Tenta Missiles
        let data = try self.getData(for: .tentaMissiles)
        let radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(radius)
    }
    
    func test_StatHelper_specialReticleRadius_nil() throws {

        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try self.getData(for: .bigBubbler)
        var radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
                
        // Booyah Bomb
        data = try self.getData(for: .booyahBomb)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Crab Tank
        data = try self.getData(for: .crabTank)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Ink Storm
        data = try self.getData(for: .inkStorm)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Ink Vac
        data = try self.getData(for: .inkVac)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Inkjet
        data = try self.getData(for: .inkjet)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Killer Wail 5.1
        data = try self.getData(for: .killerWail51)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Kraken Royale
        data = try self.getData(for: .krakenRoyale)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Reefslider
        data = try self.getData(for: .reefslider)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Splattercolor Screen
        data = try self.getData(for: .splattercolorScreen)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Super Chump
        data = try self.getData(for: .superChump)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Tacticooler
        data = try self.getData(for: .tacticooler)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Triple Inkstrike
        data = try self.getData(for: .tripleInkstrike)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Triple Splashdown
        data = try self.getData(for: .tripleSplashdown)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Trizooka
        data = try self.getData(for: .trizooka)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Ultra Stamp
        data = try self.getData(for: .ultraStamp)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Wave Breaker
        data = try self.getData(for: .waveBreaker)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Zipcaster
        data = try self.getData(for: .zipcaster)
        radius = StatHelper.specialReticleRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
    }
    
    // MARK: - Throw Distance
    func test_StatHelper_specialThrowDistance_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Ink Storm
        var data = try self.getData(for: .inkStorm)
        var dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(dist)
        
        // Splattercolor Screen
        data = try self.getData(for: .splattercolorScreen)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(dist)
        
        // Triple Inkstrike
        data = try self.getData(for: .tripleInkstrike)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(dist)
    }
    
    func test_StatHelper_specialThrowDistance_nil() throws {

        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try self.getData(for: .bigBubbler)
        var dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
                
        // Booyah Bomb
        data = try self.getData(for: .booyahBomb)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Crab Tank
        data = try self.getData(for: .crabTank)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Ink Vac
        data = try self.getData(for: .inkVac)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Inkjet
        data = try self.getData(for: .inkjet)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Killer Wail 5.1
        data = try self.getData(for: .killerWail51)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Kraken Royale
        data = try self.getData(for: .krakenRoyale)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Reefslider
        data = try self.getData(for: .reefslider)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Super Chump
        data = try self.getData(for: .superChump)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Tacticooler
        data = try self.getData(for: .tacticooler)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Tenta Missiles
        data = try self.getData(for: .tentaMissiles)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Triple Splashdown
        data = try self.getData(for: .tripleSplashdown)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Trizooka
        data = try self.getData(for: .trizooka)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Ultra Stamp
        data = try self.getData(for: .ultraStamp)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Wave Breaker
        data = try self.getData(for: .waveBreaker)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
        
        // Zipcaster
        data = try self.getData(for: .zipcaster)
        dist = StatHelper.specialThrowDistance(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(dist)
    }

    // MARK: - Move Speed
    func test_StatHelper_specialMoveSpeed_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Splattercolor Screen
        let data = try self.getData(for: .splattercolorScreen)
        let speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(speed)
    }
    
    func test_StatHelper_specialMoveSpeed_nil() throws {

        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try self.getData(for: .bigBubbler)
        var speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
                
        // Booyah Bomb
        data = try self.getData(for: .booyahBomb)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Crab Tank
        data = try self.getData(for: .crabTank)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Ink Storm
        data = try self.getData(for: .inkStorm)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Ink Vac
        data = try self.getData(for: .inkVac)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Inkjet
        data = try self.getData(for: .inkjet)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Killer Wail 5.1
        data = try self.getData(for: .killerWail51)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Kraken Royale
        data = try self.getData(for: .krakenRoyale)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Reefslider
        data = try self.getData(for: .reefslider)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Super Chump
        data = try self.getData(for: .superChump)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Tacticooler
        data = try self.getData(for: .tacticooler)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Tenta Missiles
        data = try self.getData(for: .tentaMissiles)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Triple Inkstrike
        data = try self.getData(for: .tripleInkstrike)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Triple Splashdown
        data = try self.getData(for: .tripleSplashdown)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Trizooka
        data = try self.getData(for: .trizooka)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Ultra Stamp
        data = try self.getData(for: .ultraStamp)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Wave Breaker
        data = try self.getData(for: .waveBreaker)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
        
        // Zipcaster
        data = try self.getData(for: .zipcaster)
        speed = StatHelper.specialMoveSpeed(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(speed)
    }

    // MARK: - Auto Charge Rate
    func test_StatHelper_specialAutoChargeRate_nil() throws {

        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try self.getData(for: .bigBubbler)
        var rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
                
        // Booyah Bomb
        data = try self.getData(for: .booyahBomb)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Crab Tank
        data = try self.getData(for: .crabTank)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Ink Storm
        data = try self.getData(for: .inkStorm)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Ink Vac
        data = try self.getData(for: .inkVac)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Inkjet
        data = try self.getData(for: .inkjet)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Killer Wail 5.1
        data = try self.getData(for: .killerWail51)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Kraken Royale
        data = try self.getData(for: .krakenRoyale)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Reefslider
        data = try self.getData(for: .reefslider)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Splattercolor Screen
        data = try self.getData(for: .splattercolorScreen)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Super Chump
        data = try self.getData(for: .superChump)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Tacticooler
        data = try self.getData(for: .tacticooler)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Tenta Missiles
        data = try self.getData(for: .tentaMissiles)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Triple Inkstrike
        data = try self.getData(for: .tripleInkstrike)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Triple Splashdown
        data = try self.getData(for: .tripleSplashdown)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Trizooka
        data = try self.getData(for: .trizooka)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Ultra Stamp
        data = try self.getData(for: .ultraStamp)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Wave Breaker
        data = try self.getData(for: .waveBreaker)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
        
        // Zipcaster
        data = try self.getData(for: .zipcaster)
        rate = StatHelper.specialAutoChargeRate(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(rate)
    }

    // MARK: - Max Radius
    func test_StatHelper_specialMaxRadius_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Wave Breaker
        let data = try self.getData(for: .waveBreaker)
        let radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(radius)
    }
    
    func test_StatHelper_specialMaxRadius_nil() throws {

        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try self.getData(for: .bigBubbler)
        var radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
                
        // Booyah Bomb
        data = try self.getData(for: .booyahBomb)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Crab Tank
        data = try self.getData(for: .crabTank)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Ink Storm
        data = try self.getData(for: .inkStorm)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Ink Vac
        data = try self.getData(for: .inkVac)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Inkjet
        data = try self.getData(for: .inkjet)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Killer Wail 5.1
        data = try self.getData(for: .killerWail51)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Kraken Royale
        data = try self.getData(for: .krakenRoyale)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Reefslider
        data = try self.getData(for: .reefslider)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Splattercolor Screen
        data = try self.getData(for: .splattercolorScreen)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Super Chump
        data = try self.getData(for: .superChump)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Tacticooler
        data = try self.getData(for: .tacticooler)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Tenta Missiles
        data = try self.getData(for: .tentaMissiles)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Triple Inkstrike
        data = try self.getData(for: .tripleInkstrike)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Triple Splashdown
        data = try self.getData(for: .tripleSplashdown)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Trizooka
        data = try self.getData(for: .trizooka)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Ultra Stamp
        data = try self.getData(for: .ultraStamp)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
        
        // Zipcaster
        data = try self.getData(for: .zipcaster)
        radius = StatHelper.specialMaxRadius(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(radius)
    }

    // MARK: - Radius Range
    func test_StatHelper_specialRadiusRange_nil() throws {

        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try self.getData(for: .bigBubbler)
        var range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
                
        // Booyah Bomb
        data = try self.getData(for: .booyahBomb)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Crab Tank
        data = try self.getData(for: .crabTank)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Ink Storm
        data = try self.getData(for: .inkStorm)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Ink Vac
        data = try self.getData(for: .inkVac)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Inkjet
        data = try self.getData(for: .inkjet)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Killer Wail 5.1
        data = try self.getData(for: .killerWail51)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Kraken Royale
        data = try self.getData(for: .krakenRoyale)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Reefslider
        data = try self.getData(for: .reefslider)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Splattercolor Screen
        data = try self.getData(for: .splattercolorScreen)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Super Chump
        data = try self.getData(for: .superChump)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Tacticooler
        data = try self.getData(for: .tacticooler)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Tenta Missiles
        data = try self.getData(for: .tentaMissiles)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Triple Inkstrike
        data = try self.getData(for: .tripleInkstrike)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Triple Splashdown
        data = try self.getData(for: .tripleSplashdown)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Trizooka
        data = try self.getData(for: .trizooka)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Ultra Stamp
        data = try self.getData(for: .ultraStamp)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Wave Breaker
        data = try self.getData(for: .waveBreaker)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
        
        // Zipcaster
        data = try self.getData(for: .zipcaster)
        range = StatHelper.specialRadiusRange(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(range)
    }

    // TODO: Power Up Duration
    func test_StatHelper_specialPowerUpDuration_notNil() throws {
        
        let ap = AbilityPoints()
        
        // Tacticooler
        let data = try self.getData(for: .tacticooler)
        let radius = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNotNil(radius)
    }
    
    func test_StatHelper_specialPowerUpDuration_nil() throws {

        let ap = AbilityPoints()
        
        // Big Bubbler
        var data = try self.getData(for: .bigBubbler)
        var powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
                
        // Booyah Bomb
        data = try self.getData(for: .booyahBomb)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Crab Tank
        data = try self.getData(for: .crabTank)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Ink Storm
        data = try self.getData(for: .inkStorm)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Ink Vac
        data = try self.getData(for: .inkVac)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Inkjet
        data = try self.getData(for: .inkjet)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Killer Wail 5.1
        data = try self.getData(for: .killerWail51)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Kraken Royale
        data = try self.getData(for: .krakenRoyale)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Reefslider
        data = try self.getData(for: .reefslider)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Splattercolor Screen
        data = try self.getData(for: .splattercolorScreen)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Super Chump
        data = try self.getData(for: .superChump)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Tenta Missiles
        data = try self.getData(for: .tentaMissiles)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Triple Inkstrike
        data = try self.getData(for: .tripleInkstrike)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Triple Splashdown
        data = try self.getData(for: .tripleSplashdown)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Trizooka
        data = try self.getData(for: .trizooka)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Ultra Stamp
        data = try self.getData(for: .ultraStamp)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Wave Breaker
        data = try self.getData(for: .waveBreaker)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
        
        // Zipcaster
        data = try self.getData(for: .zipcaster)
        powerUp = StatHelper.specialPowerUpDuration(ap: ap, values: self.values, specialInfo: data)
        XCTAssertNil(powerUp)
    }


    
    /// Convenience function to get `SpecialWeaponData` for a specified `Special Weapon`
    func getData(for weapon: SpecialWeapon) throws -> SpecialWeaponData {
        switch weapon {
        case .bigBubbler:
            let gameParams = try service.decode(BigBubbler.self, from: "WeaponSpGreatBarrier.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .booyahBomb:
            let gameParams = try service.decode(BooyahBomb.self, from: "WeaponSpNiceBall.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .crabTank:
            let gameParams = try service.decode(CrabTank.self, from: "WeaponSpChariot.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .inkStorm:
            let gameParams = try service.decode(InkStorm.self, from: "WeaponSpInkStorm.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .inkVac:
            let gameParams = try service.decode(InkVac.self, from: "WeaponSpBlower.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .inkjet:
            let gameParams = try service.decode(Inkjet.self, from: "WeaponSpJetpack.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .killerWail51:
            let gameParams = try service.decode(KillerWail51.self, from: "WeaponSpMicroLaser.game__GameParameterTable")

            return SpecialWeaponData(container: gameParams)
            
        case .krakenRoyale:
            let gameParams = try service.decode(KrakenRoyale.self, from: "WeaponSpCastle.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .reefslider:
            let gameParams = try service.decode(Reefslider.self, from: "WeaponSpSkewer.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .splattercolorScreen:
            let gameParams = try service.decode(SplattercolorScreen.self, from: "WeaponSpChimney.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .superChump:
            let gameParams = try service.decode(SuperChump.self, from: "WeaponSpFirework.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .tacticooler:
            let gameParams = try service.decode(Tacticooler.self, from: "WeaponSpEnergyStand.game__GameParameterTable")

            return SpecialWeaponData(container: gameParams)
            
        case .tentaMissiles:
            let gameParams = try service.decode(TentaMissiles.self, from: "WeaponSpMultiMissile.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .tripleInkstrike:
            let gameParams = try service.decode(TripleInkstrike.self, from: "WeaponSpTripleTornado.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .tripleSplashdown:
            let gameParams = try service.decode(TripleSplashdown.self, from: "WeaponSpPogo.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .trizooka:
            let gameParams = try service.decode(Trizooka.self, from: "WeaponSpUltraShot.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .ultraStamp:
            let gameParams = try service.decode(UltraStamp.self, from: "WeaponSpUltraStamp.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .waveBreaker:
            let gameParams = try service.decode(WaveBreaker.self, from: "WeaponSpShockSonar.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .zipcaster:
            let gameParams = try service.decode(Zipcaster.self, from: "WeaponSpSuperHook.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
        }
    }
}
