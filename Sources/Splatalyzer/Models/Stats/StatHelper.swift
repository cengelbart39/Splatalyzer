//
//  StatHelper.swift
//  
//
//  Created by Christopher Engelbart on 1/10/24.
//

import Foundation

public struct StatHelper {
    public static let multiShotDict: [MainWeapon : Int] = [
        .l3Nozzlenose : 3,
        .l3NozzlenoseD : 3,
        .h3Nozzlenose : 3,
        .h3NozzlenoseD : 3,
        .reeflux450 : 3,
        .reeflux450Deco : 3,
        .bloblobber : 4,
        .bloblobberDeco : 4,
        .dreadWringer : 2
    ]
    
    public static func specialPoint(
        ap: AbilityPoints,
        values: AbilityValues,
        mainInfo: MainWeaponData
    ) -> AbilityStat {
        let ability = Ability.specialPowerUp
        
        let spuAp = ap[ability] ?? 0
        
        let apEffect = APEffect(for: .increaseRtSpecial, in: values, of: spuAp, weapon: mainInfo)
        
        return AbilityStat(
            baseValue: Double(mainInfo.specialPoints),
            modifiedBy: [ability],
            value: ceil(Double(mainInfo.specialPoints) / apEffect.effect)
        )
    }
    
    public static func specialLost(
        ap: AbilityPoints,
        abilities: AbilityValues,
        gearBuild: GearBuild,
        mainInfo: MainWeaponData,
        splattedByRP: Bool = false
    ) -> AbilityStat {
        let ownRespawnPunisherLost = 0.225
        let enemyRespawnPunisherLost = 0.15
        
        let ability = Ability.specialSaver
        let ssAp = ap[ability] ?? 0
        
        let hasRespawnPunisher = gearBuild.hasAbility(.respawnPunisher)
        
        let extraSpecialLost = hasRespawnPunisher ? ownRespawnPunisherLost : 0
        
        let apEffect = APEffect(for: .specialGaugeRtRestart, in: abilities, of: ssAp, weapon: mainInfo)
        
        let splattedPenalty = splattedByRP ? enemyRespawnPunisherLost : 0
        
        return AbilityStat(
            baseValue: StatHelper.specialSavedAfterDeath(
                apEffect.baseEffect - splattedPenalty
            ),
            modifiedBy: [.specialSaver, .respawnPunisher],
            value: StatHelper.specialSavedAfterDeath(
                apEffect.effect - splattedPenalty - extraSpecialLost
            )
        )
    }
    
    public static func specialSavedAfterDeath(_ x: Double) -> Double {
        return (1 - x) * 100.0
    }
    
    public static func fullInkTankOptions(
        ap: AbilityPoints,
        abilities: AbilityValues,
        mainInfo: MainWeaponData,
        subInfo: SubWeaponData
    ) -> [InkTankOption] {
        var result = [InkTankOption]()
        
        let subConsume = SubWeaponConsume(ap, abilities, mainInfo, subInfo)
        
        for fromFullInkTank in 0...subConsume.maxSubsFromFullInkTank {
            for type in InkConsumeType.allCases {
                let apEffect = APEffect(
                    for: .consumeRtMain,
                    in: abilities,
                    of: ap[.inkSaverMain] ?? 0,
                    weapon: mainInfo)
                
                if let value = mainInfo.inkConsume(for: type) {
                    let mainConsume = value * apEffect.effect
                    
                    let value = (mainInfo.inkTankSize - subConsume.inkConsume * Double(fromFullInkTank)) / mainConsume
                    
                    let option = InkTankOption(
                        subsFromFullInkTank: fromFullInkTank,
                        type: type,
                        value: value)
                    
                    result.append(option)
                    
                } else {
                    continue
                }
            }
        }
        
        return result
    }
    
    public static func mainDamages(mainInfo: MainWeaponData) -> [DamageStat] {
        var result = [DamageStat]()
        
        for type in DamageType.allCases {
            if let subValue = mainInfo.damage(for: type) as? Double {
                
                let stat = DamageStat(
                    type: type,
                    value: subValue / 10,
                    distance: nil,
                    shotsToSplat: StatHelper.shotsToSplat(
                        for: subValue,
                        of: type,
                        with: StatHelper.multiShotDict[mainInfo.mainWeaponId]
                    ),
                    multiShots: StatHelper.multiShotDict[mainInfo.mainWeaponId]
                )
                
                result.append(stat)
                
            } else if let arr = mainInfo.damage(for: type) as? [DistanceDamage] {
                
                for item in arr {
                    let stat = DamageStat(
                        type: type,
                        value: Double(item.damage) / 10,
                        distance: item.distance,
                        shotsToSplat: nil,
                        multiShots: StatHelper.multiShotDict[mainInfo.mainWeaponId])
                    
                    result.append(stat)
                }
            }
        }
        
        return result
    }
    
    public static func specialDamages(specialInfo: SpecialWeaponData) -> [DamageStat] {
        var result = [DamageStat]()
        
        for type in DamageType.allCases {
            let subValue = specialInfo.damage(for: type)
            
            if let subValue = subValue as? Double {
                
                let stat = DamageStat(
                    type: type,
                    value: subValue / 10,
                    distance: nil,
                    shotsToSplat: StatHelper.shotsToSplat(
                        for: subValue,
                        of: type,
                        with: nil
                    ),
                    multiShots: nil
                )
                
                result.append(stat)
                
            } else if let arr = subValue as? [DistanceDamage] {
                
                for item in arr {
                    let stat = DamageStat(
                        type: type,
                        value: Double(item.damage) / 10,
                        distance: item.distance,
                        shotsToSplat: nil,
                        multiShots: nil)
                    
                    result.append(stat)
                }
            }
        }
        
        if specialInfo.id == .zipcaster {
            let stat = DamageStat(
                type: result.first!.type,
                value: result.sumValue(),
                distance: 0,
                shotsToSplat: nil,
                multiShots: nil)
            
            result.insert(stat, at: 0)
            
        } else if specialInfo.id == .crabTank {
            let cannonDamage = result.filter { $0.type == .specialCannon }
            let firstCannonIndex = result.firstIndex(where: { $0.type == .specialCannon })!
            
            let stat = DamageStat(
                type: .specialCannon,
                value: cannonDamage.sumValue(),
                distance: 0,
                shotsToSplat: nil,
                multiShots: nil)
            
            result.insert(stat, at: firstCannonIndex)
        }
        
        return result
    }
    
    public static func subDefenseDamages(
        ap: AbilityPoints,
        abilities: AbilityValues,
        subData: [SubWeapon : SubWeaponData]
    ) -> [SubWeapon : [DamageEffectStat]] {
        let sruAp = ap[.subResistanceUp] ?? 0
        
        var result = [SubWeapon : [DamageEffectStat]]()
        
        for (weapon, data) in subData {
            
            var weaponResults = [DamageEffectStat]()
            
            for type in DamageType.allCases {
                let value = data.damage(for: type)
                
                if let value = value as? Double {
                    let stat = DamageEffectStat(
                        type: type,
                        baseValue: value / 10,
                        effectValue: StatHelper.subDamageValue(
                            ap: sruAp,
                            abilities: abilities,
                            baseValue: value / 10,
                            subInfo: data
                        ),
                        distance: 0,
                        distanceArr: [],
                        subWeapon: weapon)
                    
                    weaponResults.append(stat)
                    
                } else if let value = value as? [DistanceDamage] {
                    var localResults = [DamageEffectStat]()
                    
                    for subValue in value {
                        let stat = DamageEffectStat(
                            type: type,
                            baseValue: Double(subValue.damage) / 10,
                            effectValue: StatHelper.subDamageValue(
                                ap: sruAp,
                                abilities: abilities,
                                baseValue: Double(subValue.damage) / 10,
                                subInfo: data
                            ),
                            distance: subValue.distance,
                            distanceArr: [],
                            subWeapon: weapon)
                        
                        localResults.append(stat)
                    }
                    
                    if weapon == .burstBomb {
                        let stat = DamageEffectStat(
                            type: type,
                            baseValue: localResults.sumBaseValue(),
                            effectValue: localResults.sumBaseValue(),
                            distance: 0,
                            distanceArr: [],
                            subWeapon: weapon)
                        
                        localResults.insert(stat, at: 0)
                        
                    } else if weapon == .fizzyBomb || weapon == .curlingBomb {
                        
                        let allSorted = localResults.sorted(by: { $0.baseValue < $1.baseValue })
                        
                        if !allSorted.isEmpty {
                            let firstHalf = Array(allSorted[0..<allSorted.count/2])
                            let secondHalf = Array(allSorted[allSorted.count/2 ..< allSorted.count])
                            
                            let stat1 = DamageEffectStat(
                                type: type,
                                baseValue: secondHalf.first!.baseValue,
                                effectValue: secondHalf.first!.effectValue,
                                distance: nil,
                                distanceArr: [
                                    secondHalf.minDistance(),
                                    secondHalf.maxDistance()
                                ],
                                subWeapon: weapon)
                            
                            let stat2 = DamageEffectStat(
                                type: type,
                                baseValue: firstHalf.first!.baseValue,
                                effectValue: firstHalf.first!.effectValue,
                                distance: nil,
                                distanceArr: [
                                    firstHalf.minDistance(),
                                    firstHalf.maxDistance()
                                ],
                                subWeapon: weapon)
                            
                            for item in firstHalf {
                                let index = localResults.firstIndex(of: item)!
                                localResults.remove(at: index)
                            }
                            
                            for item in secondHalf {
                                let index = localResults.firstIndex(of: item)!
                                localResults.remove(at: index)
                            }
                            
                            localResults.append(contentsOf: [stat1, stat2])
                        }
                    }
                    
                    weaponResults.append(contentsOf: localResults)
                }
            }
            
            result[weapon] = weaponResults.filter { !($0.baseValue == 0 && $0.effectValue == 0 && $0.distance == 0) }
        }
            
        return result
    }
    
    public static func shotsToSplat(
        for value: Double,
        of type: DamageType,
        with multiShots: Int?
    ) -> Double? {
        if [DamageType.normalMax, DamageType.normalMaxFullCharge, DamageType.direct].contains(type) {
            return nil
            
        } else {
            let multiplier = Double(multiShots ?? 1)
            
            return ceil(1000 / (value * multiplier))
        }
    }
    
    public static func subDamageValue(
        ap: Int,
        abilities: AbilityValues,
        baseValue: Double,
        subInfo: SubWeaponData
    ) -> Double {
        if baseValue > 100 { return baseValue }
        
        if let value = subInfo.abilityValue() {
            let apEffect = APEffect(
                for: value,
                in: abilities,
                of: ap,
                weapon: subInfo)
            
            return baseValue * apEffect.effect
            
        } else {
            return 0
        }
    }
    
    public static func subInkConsumptionPercentage(
        ap: AbilityPoints,
        abilities: AbilityValues,
        mainInfo: MainWeaponData,
        subInfo: SubWeaponData
    ) -> AbilityStat {
        let subConsume = SubWeaponConsume(ap, abilities, mainInfo, subInfo)
        
        return AbilityStat(
            baseValue: (subInfo.inkConsume * 100) / mainInfo.inkTankSize,
            modifiedBy: [.inkSaverSub],
            value: (subConsume.inkConsume * 100) / mainInfo.inkTankSize)
    }
    
    public static func inkRecoverySeconds(
        effectKey: AbilityValue,
    ap: AbilityPoints,
        abilities: AbilityValues,
        mainInfo: MainWeaponData
    ) -> AbilityStat {
        let ability = Ability.inkRecoveryUp
        
        let iruAp = ap[ability] ?? 0
        
        let apEffect = APEffect(
            for: effectKey,
            in: abilities,
            of: iruAp,
            weapon: mainInfo)
        
        return AbilityStat(
            baseValue: (apEffect.baseEffect * mainInfo.inkTankSize) .framesToSeconds(),
            modifiedBy: [.inkRecoveryUp],
            value: (apEffect.effect * mainInfo.inkTankSize) .framesToSeconds()
        )
    }
    
    public static func runSpeed(
        ap: AbilityPoints,
        abilities: AbilityValues,
        mainInfo: MainWeaponData
    ) -> AbilityStat {
        let ability = Ability.runSpeedUp
        
        let rsuAp = ap[.runSpeedUp] ?? 0
        
        let apEffect = APEffect(
            for: AbilityValue.getMoveVelHumanLvl(for: mainInfo.weaponSpeedType ?? .mid),
            in: abilities,
            of: rsuAp,
            weapon: mainInfo)
        
        return AbilityStat(
            baseValue: apEffect.baseEffect * 10,
            modifiedBy: [ability],
            value: apEffect.effect * 10)
    }
    
    public static func shootingRunSpeed(
        for type: ShootingRunSpeedType,
        ap: AbilityPoints,
        abilities: AbilityValues,
        mainInfo: MainWeaponData
    ) -> AbilityStat? {
        let moveSpeed = mainInfo.shootingRunSpeed(for: type)
        
        if let moveSpeed = moveSpeed {
            let rsuAp = ap[.runSpeedUp] ?? 0
            
            let apEffect = APEffect(
                for: .moveVelRtShot,
                in: abilities,
                of: rsuAp,
                weapon: mainInfo)
            
            return AbilityStat(
                baseValue: moveSpeed * apEffect.baseEffect * 10,
                modifiedBy: [.runSpeedUp],
                value: moveSpeed * apEffect.effect * 10)
            
        } else {
            return nil
        }
    }
    
    public static func swimSpeed(
        ap: AbilityPoints,
        values: AbilityValues,
        gearBuild: GearBuild,
        mainInfo: MainWeaponData
    ) -> AbilityStat {
        let ability = Ability.swimSpeedUp
        
        let ssuAp = ap[ability] ?? 0
        
        let value = AbilityValue.getMoveVelStealthLvl(for: mainInfo.weaponSpeedType ?? .mid)
        
        let apEffect = APEffect(
            for: value,
            in: values,
            of: ssuAp,
            weapon: mainInfo)
        
        let ninjaSquidMultiplier = gearBuild.hasAbility(.ninjaSquid) ? 0.9 : 1
        
        return AbilityStat(
            baseValue: apEffect.baseEffect * 10,
            modifiedBy: [.swimSpeedUp, .ninjaSquid],
            value: apEffect.effect * 10 * ninjaSquidMultiplier)
    }
    
    public static func swimSpeedWithRainmaker(
        ap: AbilityPoints,
        values: AbilityValues,
        gearBuild: GearBuild,
        mainInfo: MainWeaponData
    ) -> AbilityStat {
        let withoutRM = StatHelper.swimSpeed(ap: ap, values: values, gearBuild: gearBuild, mainInfo: mainInfo)
        
        let rainmakerSpeedPenalty = 0.8
        
        return AbilityStat(
            baseValue: withoutRM.baseValue * rainmakerSpeedPenalty,
            modifiedBy: withoutRM.modifiedBy,
            value: withoutRM.value * rainmakerSpeedPenalty)
    }
    
    public static func runSpeedInEnemyInk(
        ap: AbilityPoints,
        values: AbilityValues,
        mainInfo: MainWeaponData
    ) -> AbilityStat {
        let iru = Ability.inkResistanceUp
        let iruAp = ap[iru] ?? 0
        
        let apEffect = APEffect(
            for: .opInkMoveVel,
            in: values,
            of: iruAp,
            weapon: mainInfo)
        
        return AbilityStat(
            baseValue: apEffect.baseEffect * 10,
            modifiedBy: [iru],
            value: apEffect.effect * 10)
    }
    
    public static func damageInEnemyInkPerSecond(
        ap: AbilityPoints,
        values: AbilityValues,
        mainInfo: MainWeaponData
    ) -> AbilityStat {
        let iru = Ability.inkResistanceUp
        let iruAp = ap[iru] ?? 0
        
        let apEffect = APEffect(
            for: .opInkDamagePerFrame,
            in: values,
            of: iruAp,
            weapon: mainInfo)
        
        return AbilityStat(
            baseValue: apEffect.baseEffectToDamage() * 60,
            modifiedBy: [iru],
            value: apEffect.effectToDamage() * 60)
    }
    
    public static func enemyInkDamageLimit(
        ap: AbilityPoints,
        values: AbilityValues,
        mainInfo: MainWeaponData
    ) -> AbilityStat {
        let iru = Ability.inkResistanceUp
        let iruAp = ap[iru] ?? 0
        
        let apEffect = APEffect(
            for: .opInkDamageLmt,
            in: values,
            of: iruAp,
            weapon: mainInfo)
        
        return AbilityStat(
            baseValue: apEffect.baseEffectToDamage(),
            modifiedBy: [iru],
            value: apEffect.effectToDamage())
    }
    
    public static func framesBeforeDamageInEnemyInk(
        ap: AbilityPoints,
        values: AbilityValues,
        mainInfo: MainWeaponData
    ) -> AbilityStat {
        let iru = Ability.inkResistanceUp
        let iruAp = ap[iru] ?? 0
        
        let apEffect = APEffect(
            for: .opInkArmorHP,
            in: values,
            of: iruAp,
            weapon: mainInfo)
        
        return AbilityStat(
            baseValue: ceil(apEffect.baseEffect),
            modifiedBy: [iru],
            value: ceil(apEffect.effect))
    }
    
    public static func respawnTime(
        ap: AbilityPoints,
        values: AbilityValues,
        gearBuild: GearBuild,
        mainInfo: MainWeaponData,
        splatedByRP: Bool,
        hasTacticooler: Bool
    ) -> AbilityStat {
        let qr = Ability.quickRespawn
        let hasRP = gearBuild.hasAbility(.respawnPunisher)
        
        var qrAp = ap[qr] ?? 0
        
        if splatedByRP && !hasTacticooler {
            qrAp = Int(ceil(Double(qrAp) * 0.15))
        }
        
        let chase = APEffect(
            for: .dyingChaseFrm,
            in: values,
            of: qrAp,
            weapon: mainInfo)
        
        let around = APEffect(
            for: .dyingAroundFrm,
            in: values,
            of: qrAp,
            weapon: mainInfo)
        
        let ownRPExtraFrames = splatedByRP ? 68.0 : 0.0
        let splattedByExtraFrames = splatedByRP ? 45.0 : 0.0
        let respawnChaseFrame = 150.0
        let fasterRespawn = 60.0
        
        return AbilityStat(
            baseValue: (respawnChaseFrame + chase.baseEffect + splattedByExtraFrames + around.baseEffect - fasterRespawn).framesToSeconds(),
            modifiedBy: [qr, .respawnPunisher],
            value: (respawnChaseFrame + chase.effect + around.effect + splattedByExtraFrames + ownRPExtraFrames - fasterRespawn).framesToSeconds()
        )
    }
    
    public static func superJumpGroundFrames(
        ap: AbilityPoints,
        values: AbilityValues,
        mainInfo: MainWeaponData
    ) -> AbilityStat {
        let ability = Ability.quickSuperJump
        
        let qsjAp = ap[ability] ?? 0
        
        let apEffect = APEffect(
            for: .superJumpChargeFrm,
            in: values,
            of: qsjAp,
            weapon: mainInfo)
        
        return AbilityStat(
            baseValue: ceil(apEffect.baseEffect),
            modifiedBy: [.quickSuperJump],
            value: ceil(apEffect.effect))
    }
    
    public static func superJumpTotalFrames(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ mainInfo: MainWeaponData
    ) -> AbilityStat {
        let ability = Ability.quickSuperJump
        
        let qsjAp = ap[ability] ?? 0
        
        let charge = APEffect(
            for: .superJumpChargeFrm,
            in: values,
            of: qsjAp,
            weapon: mainInfo)
        
        let move = APEffect(
            for: .superJumpMoveFrm,
            in: values,
            of: qsjAp,
            weapon: mainInfo)
        
        return AbilityStat(
            baseValue: (ceil(charge.baseEffect) + ceil(move.baseEffect)).framesToSeconds(),
            modifiedBy: [.quickSuperJump],
            value: (ceil(charge.effect) + ceil(move.effect)).framesToSeconds())
    }
    
    public static func shotSpreadAir(
        ap: AbilityPoints,
        values: AbilityValues,
        mainInfo: MainWeaponData
    ) -> AbilityStat? {
        let ability = Ability.intensifyAction
        
        let iaAp = ap[ability] ?? 0
        
        guard let groundSpread = mainInfo.standDegSwerve, let jumpSpread = mainInfo.jumpDegSwerve else {
            return nil
        }
        
        let apEffect = APEffect(
            for: .reduceJumpSwerveRate,
            in: values,
            of: iaAp,
            weapon: mainInfo)
        
        let extraSpeed = jumpSpread - groundSpread
        let reducedExtraSpeed = extraSpeed * (1 - apEffect.effect)
        
        return AbilityStat(
            baseValue: jumpSpread,
            modifiedBy: [ability],
            value: reducedExtraSpeed + groundSpread)
    }
    
    public static func shotAutofireSpreadAir(
        ap: AbilityPoints,
        values: AbilityValues,
        mainInfo: MainWeaponData
    ) -> AbilityStat? {
        let ability = Ability.intensifyAction
        
        let iaAp = ap[ability] ?? 0
        
        guard let groundSpread = mainInfo.variableStandDegSwerve, let jumpSpread = mainInfo.variableJumpDegSwerve else {
            return nil
        }
        
        let apEffect = APEffect(
            for: .reduceJumpSwerveRate,
            in: values,
            of: iaAp,
            weapon: mainInfo)
        
        let extraSpeed = jumpSpread - groundSpread
        let reducedExtraSpeed = extraSpeed * (1 - apEffect.effect)
        
        return AbilityStat(
            baseValue: jumpSpread,
            modifiedBy: [ability],
            value: reducedExtraSpeed + groundSpread)
    }
    
    public static func squidSurgeChargeFrames(
        ap: AbilityPoints,
        values: AbilityValues,
        mainInfo: MainWeaponData
    ) -> AbilityStat {
        let ability = Ability.intensifyAction
        
        let iaAp = ap[ability] ?? 0
        
        let apEffect = APEffect(
            for: .wallJumpChargeFrm,
            in: values,
            of: iaAp,
            weapon: mainInfo)
        
        return AbilityStat(
            baseValue: ceil(apEffect.baseEffect),
            modifiedBy: [ability],
            value: ceil(apEffect.effect))
    }
    
    public static func subMarkedSeconds(
        ap: AbilityPoints,
        values: AbilityValues,
        mainInfo: MainWeaponData,
        subInfo: SubWeaponData
    ) -> AbilityStat {
        let sru = Ability.subResistanceUp
        let sruAp = ap[sru] ?? 0
        
        let mainEffect = APEffect(
            for: .markingTimeRt,
            in: values,
            of: sruAp,
            weapon: mainInfo)
        
        let subEffect = APEffect(
            for: .markingFrameSubSpec,
            in: values,
            of: 0,
            weapon: subInfo)
        
        return AbilityStat(
            baseValue: (subEffect.baseEffect * mainEffect.baseEffect).framesToSeconds(),
            modifiedBy: [sru],
            value: (subEffect.baseEffect * mainEffect.effect).framesToSeconds())
    }
    
    public static func inkMineMarkedSeconds(
        ap: AbilityPoints,
        values: AbilityValues,
        mainInfo: MainWeaponData,
        inkMine: SubWeaponData
    ) -> AbilityStat {
        let sru = Ability.subResistanceUp
        let sruAp = ap[sru] ?? 0
        
        let mainEffect = APEffect(
            for: .markingTimeRtTrap,
            in: values,
            of: sruAp,
            weapon: mainInfo)
        
        let subEffect = APEffect(
            for: .markingFrameSubSpec,
            in: values,
            of: 0,
            weapon: inkMine)
        
        return AbilityStat(
            baseValue: (subEffect.baseEffect * mainEffect.baseEffect).framesToSeconds(),
            modifiedBy: [sru],
            value: (subEffect.baseEffect * mainEffect.effect).framesToSeconds())
    }
    
    public static func toxicMistMovementReduction(
        ap: AbilityPoints,
        values: AbilityValues,
        mainInfo: MainWeaponData
    ) -> AbilityStat {
        let sru = Ability.subResistanceUp
        let sruAp = ap[sru] ?? 0
        
        let apEffect = APEffect(
            for: .moveDownRtPoisonMist,
            in: values,
            of: sruAp,
            weapon: mainInfo)
        
        return AbilityStat(
            baseValue: apEffect.baseEffect * 100,
            modifiedBy: [sru],
            value: apEffect.effect * 100)
    }
    
    public static func quickSuperJumpBoost(
        ap: AbilityPoints,
        values: AbilityValues,
        subInfo: SubWeaponData
    ) -> AbilityStat? {
        let effect = abilityValues(for: .subSpecUpParam, in: values, weapon: subInfo)
        
        guard effect.hasEffect() else {
            return nil
        }
        
        let spu = Ability.subPowerUp
        let spuAp = ap[spu] ?? 0
        
        let baseCalc = quickSuperJumpValue(for: effect, with: 0)
        let effectCalc = quickSuperJumpValue(for: effect, with: spuAp)
        
        return AbilityStat(
            baseValue: baseCalc,
            modifiedBy: [spu],
            value: effectCalc)
    }
    
    public static func quickSuperJumpValue(
        for multiplier: HighMidLow,
        with ap: Int
    ) -> Double {
        let high = multiplier.high!
        let mid = multiplier.mid!
        let low = multiplier.low!
        
        // Lean: This is the base that is used with their weird formula (I didn't even bother renaming the vars and just used what my disassembler gave me)

        // Variable names adapted for HighMidLow struct
        let v7 = ((mid - low) / high - 17.8 / high) / ((17.8 / high) * (17.8 / high - 1))
        
        let v8 = (Double(ap) / high) * ((Double(ap) / high) * v7 + (1 - v7))
        
        return floor(low + (high - low) * v8)
    }
    
    public static func subVelocity(
        ap: AbilityPoints,
        values: AbilityValues,
        subInfo: SubWeaponData
    ) -> AbilityStat? {
        let hml = abilityValues(for: .subSpecUpParam, in: values, weapon: subInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.subPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: .subSpecUpParam,
            in: values,
            of: spuAp,
            weapon: subInfo)
        
        return AbilityStat(
            baseValue: apEffect.baseEffect,
            modifiedBy: [spu],
            value: apEffect.effect)
    }
    
    public static func subPhaseDuration(
        ap: AbilityPoints,
        values: AbilityValues,
        subInfo: SubWeaponData,
        first: Bool
    ) -> AbilityStat? {
        let hml = abilityValues(
            for: first ? .subFirstPhaseDuration : .subSecondPhaseDuration,
            in: values,
            weapon: subInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.subPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: first ? .subFirstPhaseDuration : .subSecondPhaseDuration,
            in: values,
            of: spuAp,
            weapon: subInfo)
        
        return AbilityStat(
            baseValue: apEffect.baseEffect.framesToSeconds(),
            modifiedBy: [spu],
            value: apEffect.effect.framesToSeconds())
    }
    
    public static func subMarkingSeconds(
        ap: AbilityPoints,
        values: AbilityValues,
        subInfo: SubWeaponData
    ) -> AbilityStat? {
        let hml = abilityValues(for: .subMarkingTimeInSeconds, in: values, weapon: subInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.subPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: .subMarkingTimeInSeconds,
            in: values,
            of: spuAp,
            weapon: subInfo)
        
        return AbilityStat(
            baseValue: apEffect.baseEffect.framesToSeconds(),
            modifiedBy: [spu],
            value: apEffect.effect.framesToSeconds())
    }
    
    public static func subMarkingRadius(
        ap: AbilityPoints,
        values: AbilityValues,
        subInfo: SubWeaponData
    ) -> AbilityStat? {
        let hml = abilityValues(for: .subMarkingRadius, in: values, weapon: subInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.subPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: .subMarkingRadius,
            in: values,
            of: spuAp,
            weapon: subInfo)
        
        return AbilityStat(
            baseValue: apEffect.baseEffect,
            modifiedBy: [spu],
            value: apEffect.effect)
    }
    
    public static func subExplosionRadius(
        ap: AbilityPoints,
        values: AbilityValues,
        subInfo: SubWeaponData
    ) -> AbilityStat? {
        let hml = abilityValues(for: .subExplosionRadius, in: values, weapon: subInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.subPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: .subExplosionRadius,
            in: values,
            of: spuAp,
            weapon: subInfo)
        
        return AbilityStat(
            baseValue: apEffect.baseEffect,
            modifiedBy: [spu],
            value: apEffect.effect)
    }
    
    public static func subHp(
        ap: AbilityPoints,
        values: AbilityValues,
        subInfo: SubWeaponData
    ) -> AbilityStat? {
        let hml = abilityValues(for: .subHp, in: values, weapon: subInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.subPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: .subHp,
            in: values,
            of: spuAp,
            weapon: subInfo)
        
        return AbilityStat(
            baseValue: apEffect.baseEffect / 10,
            modifiedBy: [spu],
            value: apEffect.effect / 10)
    }
    
    public static func specialDuration(
        ap: AbilityPoints,
        values: AbilityValues,
        specialInfo: SpecialWeaponData
    ) -> AbilityStat? {
        let hml = abilityValues(for: .specialDurationFrame, in: values, weapon: specialInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.specialPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: .specialDurationFrame,
            in: values,
            of: spuAp,
            weapon: specialInfo)
        
        return AbilityStat(
            baseValue: apEffect.baseEffect.framesToSeconds(),
            modifiedBy: [spu],
            value: apEffect.effect.framesToSeconds())
    }
    
    public static func specialDamageDistance(
        ap: AbilityPoints,
        values: AbilityValues,
        specialInfo: SpecialWeaponData
    ) -> AbilityStat? {
        let hml = abilityValues(for: .specialDamageDistance, in: values, weapon: specialInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.specialPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: .specialDamageDistance,
            in: values,
            of: spuAp,
            weapon: specialInfo)
        
        return AbilityStat(
            baseValue: apEffect.baseEffect,
            modifiedBy: [spu],
            value: apEffect.effect)
    }
    
    public static func specialPaintRadius(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ specialInfo: SpecialWeaponData
    ) -> AbilityStat? {
        let hml = abilityValues(for: .specialPaintRadius, in: values, weapon: specialInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.specialPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: .specialPaintRadius,
            in: values,
            of: spuAp,
            weapon: specialInfo)
        
        return AbilityStat(
            baseValue: apEffect.baseEffect,
            modifiedBy: [spu],
            value: apEffect.effect)
    }
    
    public static func specialFieldHp(
        ap: AbilityPoints,
        values: AbilityValues,
        specialInfo: SpecialWeaponData
    ) -> AbilityStat? {
        let hml = abilityValues(for: .specialFieldHp, in: values, weapon: specialInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.specialPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: .specialFieldHp,
            in: values,
            of: spuAp,
            weapon: specialInfo)
        
        return AbilityStat(
            baseValue: round(apEffect.baseEffect / 10),
            modifiedBy: [spu],
            value: round(apEffect.effect / 10))
    }
    
    public static func specialDeviceHp(
        ap: AbilityPoints,
        values: AbilityValues,
        specialInfo: SpecialWeaponData
    ) -> AbilityStat? {
        let hml = abilityValues(for: .specialDeviceHp, in: values, weapon: specialInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.specialPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: .specialDeviceHp,
            in: values,
            of: spuAp,
            weapon: specialInfo)
        
        return AbilityStat(
            baseValue: round(apEffect.baseEffect / 10),
            modifiedBy: [spu],
            value: round(apEffect.effect / 10))
    }
    
    public static func specialHookInkConsumption(
        ap: AbilityPoints,
        values: AbilityValues,
        specialInfo: SpecialWeaponData
    ) -> AbilityStat? {
        let hml = abilityValues(for: .specialHookInkConsumption, in: values, weapon: specialInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.specialPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: .specialHookInkConsumption,
            in: values,
            of: spuAp,
            weapon: specialInfo)
        
        let zipcasterInkTankSize = 1.5
        
        return AbilityStat(
            baseValue: (apEffect.baseEffect * 100) / zipcasterInkTankSize,
            modifiedBy: [spu],
            value: (apEffect.effect * 100) / zipcasterInkTankSize)
    }
    
    public static func specialInkConsumptionPerSecond(
        ap: AbilityPoints,
        values: AbilityValues,
        specialInfo: SpecialWeaponData
    ) -> AbilityStat? {
        let hml = abilityValues(for: .specialInkConsumptionPerSecond, in: values, weapon: specialInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.specialPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: .specialInkConsumptionPerSecond,
            in: values,
            of: spuAp,
            weapon: specialInfo)
        
        let zipcasterInkTankSize = 1.5
        
        return AbilityStat(
            baseValue: (apEffect.baseEffect * 100) / zipcasterInkTankSize,
            modifiedBy: [spu],
            value: (apEffect.effect * 100) / zipcasterInkTankSize)
    }
    
    public static func specialReticleRadius(
        ap: AbilityPoints,
        values: AbilityValues,
        specialInfo: SpecialWeaponData
    ) -> AbilityStat? {
        let hml = abilityValues(for: .specialReticleRadius, in: values, weapon: specialInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.specialPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: .specialReticleRadius,
            in: values,
            of: spuAp,
            weapon: specialInfo)
                
        return AbilityStat(
            baseValue: apEffect.baseEffect,
            modifiedBy: [spu],
            value: apEffect.effect)
    }
    
    public static func specialThrowDistance(
        ap: AbilityPoints,
        values: AbilityValues,
        specialInfo: SpecialWeaponData
    ) -> AbilityStat? {
        let hml = abilityValues(for: .specialThrowDistance, in: values, weapon: specialInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.specialPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: .specialThrowDistance,
            in: values,
            of: spuAp,
            weapon: specialInfo)
                
        return AbilityStat(
            baseValue: apEffect.baseEffect,
            modifiedBy: [spu],
            value: apEffect.effect)
    }
    
    public static func specialMoveSpeed(
        ap: AbilityPoints,
        values: AbilityValues,
        specialInfo: SpecialWeaponData
    ) -> AbilityStat? {
        let hml = abilityValues(for: .specialMoveSpeed, in: values, weapon: specialInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.specialPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: .specialMoveSpeed,
            in: values,
            of: spuAp,
            weapon: specialInfo)
                
        return AbilityStat(
            baseValue: apEffect.baseEffect,
            modifiedBy: [spu],
            value: apEffect.effect)
    }
    
    public static func specialAutoChargeRate(
        ap: AbilityPoints,
        values: AbilityValues,
        specialInfo: SpecialWeaponData
    ) -> AbilityStat? {
        let hml = abilityValues(for: .specialAutoChargeRate, in: values, weapon: specialInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.specialPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: .specialAutoChargeRate,
            in: values,
            of: spuAp,
            weapon: specialInfo)
                
        return AbilityStat(
            baseValue: apEffect.baseEffect * 100,
            modifiedBy: [spu],
            value: apEffect.effect * 100)
    }
    
    public static func specialMaxRadius(
        ap: AbilityPoints,
        values: AbilityValues,
        specialInfo: SpecialWeaponData
    ) -> AbilityStat? {
        let hml = abilityValues(for: .specialMaxRadius, in: values, weapon: specialInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.specialPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: .specialMaxRadius,
            in: values,
            of: spuAp,
            weapon: specialInfo)
                
        return AbilityStat(
            baseValue: apEffect.baseEffect,
            modifiedBy: [spu],
            value: apEffect.effect)
    }
    
    public static func specialRadiusRange(
        ap: AbilityPoints,
        values: AbilityValues,
        specialInfo: SpecialWeaponData
    ) -> AbilityStat? {
        let hmlMax = abilityValues(for: .specialMaxRadius, in: values, weapon: specialInfo)
        
        let hmlMin = abilityValues(for: .specialMinRadius, in: values, weapon: specialInfo)
        
        guard hmlMax.hasEffect() && hmlMin.hasEffect() else {
            return nil
        }
        
        let spu = Ability.specialPowerUp
        let spuAp = ap[spu] ?? 0
        
        let maxEffect = APEffect(
            for: .specialMaxRadius,
            in: values,
            of: spuAp,
            weapon: specialInfo)
        
        let minEffect = APEffect(
            for: .specialMinRadius,
            in: values,
            of: spuAp,
            weapon: specialInfo)
                
        return AbilityStat(
            baseValue: minEffect.baseEffect - maxEffect.baseEffect,
            modifiedBy: [spu],
            value: minEffect.effect - maxEffect.effect)
    }
    
    public static func specialPowerUpDuration(
        ap: AbilityPoints,
        values: AbilityValues,
        specialInfo: SpecialWeaponData
    ) -> AbilityStat? {
        let hml = abilityValues(for: .specialPowerUpDuration, in: values, weapon: specialInfo)
        
        guard hml.hasEffect() else {
            return nil
        }
        
        let spu = Ability.specialPowerUp
        let spuAp = ap[spu] ?? 0
        
        let apEffect = APEffect(
            for: .specialPowerUpDuration,
            in: values,
            of: spuAp,
            weapon: specialInfo)
                
        return AbilityStat(
            baseValue: apEffect.baseEffect,
            modifiedBy: [spu],
            value: apEffect.effect)
    }
    
    public static func abilityValues(
        for value: AbilityValue,
        in values: AbilityValues,
        weapon: WeaponDatable
    ) -> HighMidLow {
        let overwrites = weapon.overwrites.value(for: value)
        
        let value = values.dictionary[value]
        
        let effect =  HighMidLow(
            high: overwrites?.high ?? value?.high ?? 0.0,
            mid: overwrites?.mid ?? value?.mid ?? 0.0,
            low: overwrites?.low ?? value?.low ?? 0.0)
        
        return effect
    }
    
    public static func lerpN(_ x: Double, _ y: Double) -> Double {
        if x == 0 || x == 1 {
            return x
            
        } else if round(y * 1000) / 1000 == 0.5 {
            return x
            
        } else {
            return exp(-1 * ((log(x) * log(y)) / log(2)))
        }
    }
}
