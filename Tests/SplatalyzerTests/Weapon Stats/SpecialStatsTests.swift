//
//  SpecialStatsTests.swift
//  
//
//  Created by Christopher Engelbart on 2/27/24.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.buildStats))
struct SpecialStatsTests {
    
    @Test("Duration Not Nil Sp.Stats", arguments: [
        SpecialWeapon.crabTank, .inkjet, .inkStorm, .killerWail51, .krakenRoyale, .trizooka, .ultraStamp
    ])
    func durationNotNil(_ weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        let duration = StatHelper.specialDuration(ap: AbilityPoints(), specialInfo: data)
        
        #expect(duration != nil)
    }
    
    @Test("Duration Nil Sp.Stats", arguments: [
        SpecialWeapon.bigBubbler, .booyahBomb, .inkVac, .reefslider, .splattercolorScreen, .superChump, .tacticooler, .tentaMissiles, .tripleInkstrike, .tripleSplashdown, .waveBreaker, .zipcaster
    ])
    func durationNil(_ weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        let duration = StatHelper.specialDuration(ap: AbilityPoints(), specialInfo: data)
        
        #expect(duration == nil)
    }
    
    @Test("Damage Distance Not Nil Sp.Stats", arguments: [
        SpecialWeapon.inkjet, .reefslider, .superChump, .tripleSplashdown, .trizooka
    ])
    func damageDistanceNotNil(_ weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        
        let dmgDist = StatHelper.specialDamageDistance(ap: AbilityPoints(), specialInfo: data)
        
        #expect(dmgDist != nil)
    }
    
    @Test("Damage Distance Nil Sp.Stats", arguments: [
        SpecialWeapon.bigBubbler, .booyahBomb, .crabTank, .inkStorm, .inkVac, .killerWail51, .krakenRoyale, .splattercolorScreen, .tacticooler, .tentaMissiles, .tripleInkstrike, .ultraStamp, .waveBreaker, .zipcaster
    ])
    func damageDistanceNil(_ weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        
        let dmgDist = StatHelper.specialDamageDistance(ap: AbilityPoints(), specialInfo: data)
        
        #expect(dmgDist == nil)
    }
    
    @Test("Paint Radius Not Nil Sp.Stats", arguments: [
        SpecialWeapon.inkjet, .reefslider, .superChump, .tripleSplashdown, .trizooka
    ])
    func paintRadiusNotNil(_ weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        
        let dmgDist = StatHelper.specialPaintRadius(ap: AbilityPoints(), specialInfo: data)
        
        #expect(dmgDist != nil)
    }
    
    @Test("Paint Radius Nil Sp.Stats", arguments: [
        SpecialWeapon.bigBubbler, .booyahBomb, .crabTank, .inkStorm, .inkVac, .killerWail51, .krakenRoyale, .splattercolorScreen, .tacticooler, .tentaMissiles, .tripleInkstrike, .ultraStamp, .waveBreaker, .zipcaster
    ])
    func paintRadiusNil(_ weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        
        let dmgDist = StatHelper.specialPaintRadius(ap: AbilityPoints(), specialInfo: data)
        
        #expect(dmgDist == nil)
    }
    
    @Test("Field HP Not Nil Sp.Stats")
    func fieldHpNotNil() throws {
        let data = try SpecialWeaponData(for: .bigBubbler)
        
        let fieldHp = StatHelper.specialFieldHp(ap: AbilityPoints(), specialInfo: data)
        
        #expect(fieldHp != nil)
    }
    
    @Test("Field HP Nil Sp.Stats", arguments: [
        SpecialWeapon.inkVac, .krakenRoyale, .crabTank, .splattercolorScreen, .tacticooler, .superChump, .inkStorm, .inkjet, .killerWail51, .tentaMissiles, .booyahBomb, .tripleSplashdown, .waveBreaker, .reefslider, .zipcaster, .tripleInkstrike, .trizooka, .ultraStamp
    ])
    func fieldHpNil(_ weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        
        let fieldHp = StatHelper.specialFieldHp(ap: AbilityPoints(), specialInfo: data)
        
        #expect(fieldHp == nil)
    }
    
    @Test("Device HP Not Nil Sp.Stats")
    func deviceHpNotNil() throws {
        let data = try SpecialWeaponData(for: .bigBubbler)
        
        let fieldHp = StatHelper.specialDeviceHp(ap: AbilityPoints(), specialInfo: data)
        
        #expect(fieldHp != nil)
    }
    
    @Test("Device HP Nil Sp.Stats", arguments: [
        SpecialWeapon.inkVac, .krakenRoyale, .crabTank, .splattercolorScreen, .tacticooler, .superChump, .inkStorm, .inkjet, .killerWail51, .tentaMissiles, .booyahBomb, .tripleSplashdown, .waveBreaker, .reefslider, .zipcaster, .tripleInkstrike, .trizooka, .ultraStamp
    ])
    func deviceHpNil(_ weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        
        let fieldHp = StatHelper.specialDeviceHp(ap: AbilityPoints(), specialInfo: data)
        
        #expect(fieldHp == nil)
    }
    
    @Test("Hook Consumption Not Nil Sp.Stats")
    func hookConsumptionNotNil() throws {
        let data = try SpecialWeaponData(for: .zipcaster)
        
        let hookConsumption = StatHelper.specialHookInkConsumption(ap: AbilityPoints(), specialInfo: data)
        
        #expect(hookConsumption != nil)
    }
    
    @Test("Hook Consumption Nil Sp.Stats", arguments: [
        SpecialWeapon.inkVac, .krakenRoyale, .crabTank, .splattercolorScreen, .tacticooler, .superChump, .inkStorm, .inkjet, .killerWail51, .tentaMissiles, .booyahBomb, .tripleSplashdown, .waveBreaker, .reefslider, .bigBubbler, .tripleInkstrike, .trizooka, .ultraStamp
    ])
    func hookConsumptionNil(_ weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        
        let hookConsumption = StatHelper.specialHookInkConsumption(ap: AbilityPoints(), specialInfo: data)
        
        #expect(hookConsumption == nil)
    }
    
    @Test("Hook Consumption Per Sec Not Nil Sp.Stats")
    func hookConsumptionPerSecNotNil() throws {
        let data = try SpecialWeaponData(for: .zipcaster)
        
        let hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: AbilityPoints(), specialInfo: data)
        
        #expect(hookConsumption != nil)
    }
    
    @Test("Hook Consumption Per Sec Nil Sp.Stats", arguments: [
        SpecialWeapon.inkVac, .krakenRoyale, .crabTank, .splattercolorScreen, .tacticooler, .superChump, .inkStorm, .inkjet, .killerWail51, .tentaMissiles, .booyahBomb, .tripleSplashdown, .waveBreaker, .reefslider, .bigBubbler, .tripleInkstrike, .trizooka, .ultraStamp
    ])
    func hookConsumptionPerSecNil(_ weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        
        let hookConsumption = StatHelper.specialHookInkConsumptionPerSecond(ap: AbilityPoints(), specialInfo: data)
        
        #expect(hookConsumption == nil)
    }
    
    @Test("Reticle Radius Not Nil Sp.Stats")
    func reticleRadiusNotNil() throws {
        let data = try SpecialWeaponData(for: .tentaMissiles)
        
        let hookConsumption = StatHelper.specialReticleRadius(ap: AbilityPoints(), specialInfo: data)
        
        #expect(hookConsumption != nil)
    }
    
    @Test("Reticle Radius Nil Sp.Stats", arguments: [
        SpecialWeapon.inkVac, .krakenRoyale, .crabTank, .splattercolorScreen, .tacticooler, .superChump, .inkStorm, .inkjet, .killerWail51, .zipcaster, .booyahBomb, .tripleSplashdown, .waveBreaker, .reefslider, .bigBubbler, .tripleInkstrike, .trizooka, .ultraStamp
    ])
    func reticleRadiusNil(_ weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        
        let hookConsumption = StatHelper.specialReticleRadius(ap: AbilityPoints(), specialInfo: data)
        
        #expect(hookConsumption == nil)
    }
    
    @Test("Throw Distance Not Nil Sp.Stats", arguments: [
        SpecialWeapon.inkStorm, .splattercolorScreen, .tripleInkstrike
    ])
    func throwDistanceNotNil(_ weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        
        let throwDist = StatHelper.specialThrowDistance(ap: AbilityPoints(), specialInfo: data)
        
        #expect(throwDist != nil)
    }
    
    @Test("Throw Distance Nil Sp.Stats", arguments: [
        SpecialWeapon.inkVac, .krakenRoyale, .crabTank, .tacticooler, .superChump, .bigBubbler, .inkjet, .killerWail51, .tentaMissiles, .booyahBomb, .tripleSplashdown, .waveBreaker, .reefslider, .zipcaster, .trizooka, .ultraStamp
    ])
    func throwDistanceNil(_ weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        
        let throwDist = StatHelper.specialThrowDistance(ap: AbilityPoints(), specialInfo: data)
        
        #expect(throwDist == nil)
    }
    
    @Test("Move Speed Not Nil Sp.Stats")
    func moveSpeedNotNil() throws {
        let data = try SpecialWeaponData(for: .splattercolorScreen)
        
        let speed = StatHelper.specialMoveSpeed(ap: AbilityPoints(), specialInfo: data)
        
        #expect(speed != nil)
    }
    
    @Test("Move Speed Nil Sp.Stats", arguments: [
        SpecialWeapon.inkVac, .krakenRoyale, .crabTank, .tacticooler, .superChump, .bigBubbler, .inkStorm, .inkjet, .killerWail51, .tentaMissiles, .booyahBomb, .tripleSplashdown, .waveBreaker, .reefslider, .zipcaster, .tripleInkstrike, .trizooka, .ultraStamp
    ])
    func moveSpeedNil(_ weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        
        let speed = StatHelper.specialMoveSpeed(ap: AbilityPoints(), specialInfo: data)
        
        #expect(speed == nil)
    }
    
    @Test("Auto Charge Rate Not Nil Sp.Stats")
    func autoChargeRateNotNil() throws {
        let data = try SpecialWeaponData(for: .booyahBomb)
        
        let rate = StatHelper.specialAutoChargeRate(ap: AbilityPoints(), specialInfo: data)
        
        #expect(rate != nil)
    }
    
    @Test("Auto Charge Rate Nil Sp.Stats", arguments: [
        SpecialWeapon.inkVac, .krakenRoyale, .crabTank, .splattercolorScreen, .tacticooler, .superChump, .bigBubbler, .inkStorm, .inkjet, .killerWail51, .tentaMissiles, .tripleSplashdown, .waveBreaker, .reefslider, .zipcaster, .tripleInkstrike, .trizooka, .ultraStamp
    ])
    func autoChargeRateNil(_ weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        
        let rate = StatHelper.specialAutoChargeRate(ap: AbilityPoints(), specialInfo: data)
        
        #expect(rate == nil)
    }
    
    @Test("Max Radius Not Nil Sp.Stats")
    func maxRadiusNotNil() throws {
        let data = try SpecialWeaponData(for: .waveBreaker)
        
        let rate = StatHelper.specialMaxRadius(ap: AbilityPoints(), specialInfo: data)
        
        #expect(rate != nil)
    }
    
    @Test("Max Radius Nil Sp.Stats", arguments: [
        SpecialWeapon.inkVac, .krakenRoyale, .crabTank, .splattercolorScreen, .tacticooler, .superChump, .bigBubbler, .inkStorm, .inkjet, .killerWail51, .tentaMissiles, .booyahBomb, .tripleSplashdown, .reefslider, .zipcaster, .tripleInkstrike, .trizooka, .ultraStamp
    ])
    func maxRadiusNil(_ weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        
        let rate = StatHelper.specialMaxRadius(ap: AbilityPoints(), specialInfo: data)
        
        #expect(rate == nil)
    }
    
    @Test("Radius Range Not Nil Sp.Stats")
    func radiusRangeNotNil() throws {
        let data = try SpecialWeaponData(for: .inkVac)
        
        let range = StatHelper.specialRadiusRange(ap: AbilityPoints(), specialInfo: data)
        
        #expect(range != nil)
    }
    
    @Test("Radius Range Nil Sp.Stats", arguments: [
        SpecialWeapon.krakenRoyale, .crabTank, .splattercolorScreen, .tacticooler, .superChump, .bigBubbler, .inkStorm, .inkjet, .killerWail51, .tentaMissiles, .booyahBomb, .tripleSplashdown, .waveBreaker, .reefslider, .tripleInkstrike, .trizooka, .ultraStamp
    ])
    func radiusRangeNil(_ weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        
        let range = StatHelper.specialRadiusRange(ap: AbilityPoints(), specialInfo: data)
        
        #expect(range == nil)
    }
    
    @Test("Power Up Duration Not Nil Sp.Stats")
    func powerUpDurationNotNil() throws {
        let data = try SpecialWeaponData(for: .tacticooler)
        
        let range = StatHelper.specialPowerUpDuration(ap: AbilityPoints(), specialInfo: data)
        
        #expect(range != nil)
    }
    
    @Test("Power Up Duration Nil Sp.Stats", arguments: [
        SpecialWeapon.inkVac, .krakenRoyale, .crabTank, .splattercolorScreen, .superChump, .bigBubbler, .inkStorm, .inkjet, .killerWail51, .tentaMissiles, .booyahBomb, .tripleSplashdown, .waveBreaker, .reefslider, .zipcaster, .tripleInkstrike, .trizooka, .ultraStamp
    ])
    func powerUpDurationNil(_ weapon: SpecialWeapon) throws {
        let data = try SpecialWeaponData(for: weapon)
        
        let range = StatHelper.specialPowerUpDuration(ap: AbilityPoints(), specialInfo: data)
        
        #expect(range == nil)
    }
}
