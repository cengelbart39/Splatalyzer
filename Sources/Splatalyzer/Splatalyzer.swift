// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import Observation

/// Class that enables the analysis of gear builds into statistics
public final class Splatalyzer {

    public init() { }
    
    /// Analyzes the main weapon and gear build to produce build statistics.
    /// - Parameter build: Information about the current build: main weapon, gear, LDE intensity, and whether to consider Tacticooler effects
    /// - Throws: Can throw ``SplatalyzerError`` or ``JSONError``
    public func analyze(_ build: BuildOptions) throws -> BuildStats {
        guard build.isGearValid() else {
            throw SplatalyzerError.invalidGearConfig
        }
        
        guard build.isLDEIntensityValid() else {
            throw SplatalyzerError.invalidLDEIntensity
        }
                
        let mainData = try MainWeaponData(for: build.mainWeapon)
        
        var allSubData = [SubWeapon : SubWeaponData]()
        
        for sub in SubWeapon.allCases {
            let subData = try SubWeaponData(for: sub)
            allSubData[sub] = subData
        }
        
        let specialData = try SpecialWeaponData(for: mainData.specialWeapon)
        
        let stats = BuildStats(
            mainInfo: mainData,
            allSubInfo: allSubData,
            specialInfo: specialData,
            gearBuild: build.gear,
            abilityOptions: build.abilityOptions,
            usingTacticooler: build.usingTacticooler,
            usingFlowAura: build.usingFlowAura)
        
        return stats
    }
    
    /// Calculates the data for a given statistic at all AP values
    /// - Parameters:
    ///   - item: The statistic to calculate data for
    ///   - mainWeapon: The main weapon to calculate data for
    /// - Returns: The value for the statistic at all AP values and information to display within a chart
    public func generateChartData(for item: StatItem, using mainWeapon: MainWeapon) throws -> AbilityEffectChartInfo {
        let mainData = try MainWeaponData(for: mainWeapon)
        
        let specialData = try SpecialWeaponData(for: mainData.specialWeapon)
        
        var subData: SubWeaponData
        
        if item == .pointSensorMarkedSeconds {
            subData = try SubWeaponData(for: .pointSensor)
            
        } else if item == .inkMineMarkedSeconds {
            subData = try SubWeaponData(for: .inkMine)
            
        } else if item == .angleShooterMarkedSeconds {
            subData = try SubWeaponData(for: .angleShooter)
            
        } else {
            subData = try SubWeaponData(for: mainData.subWeapon)
        }
        
        var chartSeries = [AbilityEffectChartSeries]()
        let abilities = item.modifiedBy
        var chartTitle: String? = nil
        
        for i in 0..<abilities.count {
            var workingAbilities = [abilities[0]]
            var ap = [abilities[0] : -1]
            var gearBuild = GearBuild()
            var seriesData = [AbilityEffectChartData]()
            
            if abilities.count >= 2 && i == 1 {
                gearBuild.headgear.main = abilities[1]
                workingAbilities.append(abilities[1])
            }
            
            for apValue in 0...57 {
                ap[abilities[0]] = apValue
                
                let stat = statItemToStat(item: item, ap: ap, gearBuild: gearBuild, mainData: mainData, subData: subData, specialData: specialData)
                
                guard let stat = stat else { continue }
                if chartTitle == nil { chartTitle = stat.title }
                
                let data = AbilityEffectChartData(ap: apValue, abilityStat: stat)
                // print("AP: \(apValue) | Value: \(data.value)")
                seriesData.append(data)
            }
            
            let series = AbilityEffectChartSeries(title: self.abilitiesToSeriesTitle(workingAbilities), data: seriesData)
            chartSeries.append(series)
        }
        
        let chartInfo = AbilityEffectChartInfo(
            chartTitle: chartTitle ?? "Ability Effect Chart",
            yAxisUnit: item.unit,
            series: chartSeries
        )
        
        return chartInfo
    }
    
    /// Determines the title of the series based on the abilities
    private func abilitiesToSeriesTitle(_ abilities: [Ability]) -> String {
        if abilities.count == 1 {
            return String(localized: "\(abilities[0].localized) Only", comment: "Used in the chart legend to refer to considering the effect of a single ability. e.g., Swim Speed Only.")
            
        } else {
            return String(localized: "With \(abilities[1].localized)", comment: "Used in the chart legend to refer to considering a second effect of a second abbility.")
        }
    }
    
    /// Calculates the data of a statistic based on the given ``StatItem``
    private func statItemToStat(
        item: StatItem,
        ap: AbilityPoints,
        gearBuild: GearBuild,
        mainData: MainWeaponData,
        subData: SubWeaponData,
        specialData: SpecialWeaponData
    ) -> AbilityStat? {
        switch item {
        case .mainShotSpreadAir:
            return StatHelper.shotSpreadAir(ap: ap, mainInfo: mainData)
            
        case .mainShotAutofireSpreadAir:
            return StatHelper.shotAutofireSpreadAir(ap: ap, mainInfo: mainData)
            
        case .subInkConsumptionPercentage:
            return StatHelper.subInkConsumptionPercentage(ap: ap, mainInfo: mainData, subInfo: subData)
            
        case .subVelocity:
            return StatHelper.subVelocity(ap: ap, subInfo: subData)
            
        case .subFirstPhaseDuration:
            return StatHelper.subPhaseDuration(ap: ap, subInfo: subData, first: true)
            
        case .subSecondPhaseDuration:
            return StatHelper.subPhaseDuration(ap: ap, subInfo: subData, first: false)
            
        case .subMarkingTimeInSeconds:
            return StatHelper.subMarkingSeconds(ap: ap, subInfo: subData)
            
        case .subMarkingRadius:
            return StatHelper.subMarkingRadius(ap: ap, subInfo: subData)
            
        case .subExplosionRadius:
            return StatHelper.subExplosionRadius(ap: ap, subInfo: subData)
            
        case .subHp:
            return StatHelper.subHp(ap: ap, subInfo: subData)
            
        case .subQuickSuperJumpBoost:
            return StatHelper.quickSuperJumpBoost(ap: ap, subInfo: subData)
            
        case .specialPoint:
            return StatHelper.specialPoint(ap: ap, mainInfo: mainData)
            
        case .specialLost:
            return StatHelper.specialLost(ap: ap, gearBuild: gearBuild, mainInfo: mainData, splattedByRP: false)
            
        case .specialLostByRP:
            return StatHelper.specialLost(ap: ap, gearBuild: gearBuild, mainInfo: mainData, splattedByRP: true)
            
        case .specialDuration:
            return StatHelper.specialDuration(ap: ap, specialInfo: specialData)
            
        case .specialDamageDistance:
            return StatHelper.specialDamageDistance(ap: ap, specialInfo: specialData)
            
        case .specialPaintRadius:
            return StatHelper.specialPaintRadius(ap: ap, specialInfo: specialData)
            
        case .specialFieldHp:
            return StatHelper.specialFieldHp(ap: ap, specialInfo: specialData)
            
        case .specialDeviceHp:
            return StatHelper.specialDeviceHp(ap: ap, specialInfo: specialData)
            
        case .specialHookInkConsumption:
            return StatHelper.specialHookInkConsumption(ap: ap, specialInfo: specialData)
            
        case .specialHookInkConsumptionPerSecond:
            return StatHelper.specialHookInkConsumptionPerSecond(ap: ap, specialInfo: specialData)
            
        case .specialReticleRadius:
            return StatHelper.specialReticleRadius(ap: ap, specialInfo: specialData)
            
        case .specialThrowDistance:
            return StatHelper.specialThrowDistance(ap: ap, specialInfo: specialData)
            
        case .specialMoveSpeed:
            return StatHelper.specialMoveSpeed(ap: ap, specialInfo: specialData)
            
        case .specialAutoChargeRate:
            return StatHelper.specialAutoChargeRate(ap: ap, specialInfo: specialData)
            
        case .specialMaxRadius:
            return StatHelper.specialMaxRadius(ap: ap, specialInfo: specialData)
            
        case .specialRadiusMax:
            return StatHelper.specialRadiusMax(ap: ap, specialInfo: specialData)
            
        case .specialRadiusMin:
            return StatHelper.specialRadiusMin(ap: ap, specialInfo: specialData)
            
        case .specialPowerUpDuration:
            return StatHelper.specialPowerUpDuration(ap: ap, specialInfo: specialData)
            
        case .toxicMistMovementReduction:
            return StatHelper.toxicMistMovementReduction(ap: ap, mainInfo: mainData)
            
        case .inkMineMarkedSeconds:
            return StatHelper.inkMineMarkedSeconds(ap: ap, mainInfo: mainData, inkMine: subData)
            
        case .pointSensorMarkedSeconds, .angleShooterMarkedSeconds:
            return StatHelper.subMarkedSeconds(ap: ap, mainInfo: mainData, subInfo: subData)
            
        case .swimSpeed:
            return StatHelper.swimSpeed(ap: ap, gearBuild: gearBuild, mainInfo: mainData)
            
        case .swimSpeedWithRainmaker:
            return StatHelper.swimSpeedWithRainmaker(ap: ap, gearBuild: gearBuild, mainInfo: mainData)
            
        case .runSpeed:
            return StatHelper.runSpeed(ap: ap, mainInfo: mainData)
            
        case .shootingRunSpeed:
            return StatHelper.shootingRunSpeed(for: .moveSpeed, ap: ap, mainInfo: mainData)
            
        case .shootingRunSpeedCharging:
            return StatHelper.shootingRunSpeed(for: .moveSpeedCharge, ap: ap, mainInfo: mainData)
            
        case .shootingRunSpeedFullCharge:
            return StatHelper.shootingRunSpeed(for: .moveSpeedFullCharge, ap: ap, mainInfo: mainData)
            
        case .shootingRunSpeedSecondary:
            return StatHelper.shootingRunSpeed(for: .moveSpeedVariable, ap: ap, mainInfo: mainData)
            
        case .squidSurgeChargeFrames:
            return StatHelper.squidSurgeChargeFrames(ap: ap, mainInfo: mainData)
            
        case .runSpeedInEnemyInk:
            return StatHelper.runSpeedInEnemyInk(ap: ap, mainInfo: mainData)
            
        case .framesBeforeDamageInEnemyInk:
            return StatHelper.framesBeforeDamageInEnemyInk(ap: ap, mainInfo: mainData)
            
        case .damageInEnemyInkPerSecond:
            return StatHelper.damageInEnemyInkPerSecond(ap: ap, mainInfo: mainData)
            
        case .enemyInkDamageLimit:
            return StatHelper.enemyInkDamageLimit(ap: ap, mainInfo: mainData)
            
        case .squidInkRecovery:
            return StatHelper.inkRecoverySeconds(effectKey: .inkRecoverFrmStealth, ap: ap, mainInfo: mainData)
            
        case .humanoidInkRecovery:
            return StatHelper.inkRecoverySeconds(effectKey: .inkRecoverFrmStd, ap: ap, mainInfo: mainData)
            
        case .quickRespawnTime:
            return StatHelper.respawnTime(ap: ap, gearBuild: gearBuild, mainInfo: mainData, splatedByRP: false, hasTacticooler: false)
            
        case .quickRespawnTimeRP:
            return StatHelper.respawnTime(ap: ap, gearBuild: gearBuild, mainInfo: mainData, splatedByRP: true, hasTacticooler: false)
            
        case .superJumpGroundFrames:
            return StatHelper.superJumpGroundFrames(ap: ap, mainInfo: mainData)
            
        case .superJumpTimeTotal:
            return StatHelper.superJumpTimeTotal(ap: ap, mainInfo: mainData)
        }
    }
}

/// Errors that can be thrown by the ``Splatalyzer`` class
public enum SplatalyzerError: Error, LocalizedError {
    
    /// Gear abilities are configured in an invalid way
    case invalidGearConfig
    
    /// LDE intensity is not in `0...21`
    case invalidLDEIntensity
    
    public var errorDescription: String? {
        switch self {
        case .invalidGearConfig:
            return NSLocalizedString("Error: The gear build configuration is invalid.", comment: "")
            
        case .invalidLDEIntensity:
            return NSLocalizedString("Error: A Last-Ditch Effort intensity was passed in that was outside of the 0-21 range.", comment: "")
        }
    }
}
