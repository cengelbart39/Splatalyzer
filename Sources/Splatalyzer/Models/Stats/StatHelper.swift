//
//  StatHelper.swift
//  
//
//  Created by Christopher Engelbart on 1/10/24.
//

import Foundation

struct StatHelper {
    static let multiShotDict: [MainRowId : Int] = [
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
    
    static func specialPoint(
        _ ap: AbilityPoints,
        _ abilities: AbilityValues,
        _ mainInfo: MainWeaponData
    ) -> AbilityStat {
        let ability = Ability.specialPowerUp
        
        let spuAp = ap[ability] ?? 0
        
        let apEffect = APEffect(for: .increaseRtSpecial, in: abilities, of: spuAp, weapon: mainInfo)
        
        return AbilityStat(
            baseValue: Double(mainInfo.specialPoints),
            modifiedBy: [ability],
            value: ceil(Double(mainInfo.specialPoints) / apEffect.effect)
        )
    }
    
    static func specialLost(
        _ ap: AbilityPoints,
        _ abilities: AbilityValues,
        _ gearBuild: GearBuild,
        _ mainInfo: MainWeaponData,
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
    
    static func specialSavedAfterDeath(_ x: Double) -> Double {
        return (1 - x) * 100.0
    }
    
    static func fullInkTankOptions(
        _ ap: AbilityPoints,
        _ abilities: AbilityValues,
        _ mainInfo: MainWeaponData,
        _ subInfo: SubWeaponData
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
    
    static func mainDamages(
        _ mainInfo: MainWeaponData
    ) -> [DamageStat] {
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
    
    static func specialDamages(
        _ specialInfo: SpecialWeaponData
    ) -> [DamageStat] {
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
    
    static func subDefenseDamages(
        _ ap: AbilityPoints,
        _ abilities: AbilityValues,
        _ subInfo: SubWeaponData
    ) -> [DamageEffectStat] {
        let sruAp = ap[.subResistanceUp] ?? 0
        
        var result = [DamageEffectStat]()
        
        for type in DamageType.allCases {
            let value = subInfo.damage(for: type)
            
            if let value = value as? Double {
                let stat = DamageEffectStat(
                    type: type,
                    baseValue: value / 10,
                    effectValue: StatHelper.subDamageValue(
                        ap: sruAp,
                        abilities: abilities,
                        baseValue: value / 10,
                        subInfo: subInfo
                    ),
                    distance: 0,
                    distanceArr: [],
                    subWeapon: subInfo.id)
                
                result.append(stat)
                
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
                            subInfo: subInfo
                        ),
                        distance: subValue.distance,
                        distanceArr: [],
                        subWeapon: subInfo.id)
                    
                    localResults.append(stat)
                }
                
                if subInfo.id == .burstBomb {
                    let stat = DamageEffectStat(
                        type: type,
                        baseValue: localResults.sumBaseValue(),
                        effectValue: localResults.sumBaseValue(),
                        distance: 0,
                        distanceArr: [],
                        subWeapon: subInfo.id)
                    
                    localResults.insert(stat, at: 0)
                    
                } else if subInfo.id == .fizzyBomb || subInfo.id == .curlingBomb {
                    
                    let allSorted = localResults.sorted(by: { $0.baseValue < $1.baseValue })
                    
                    let firstHalf = Array(allSorted[0..<allSorted.count/2])
                    let secondHalf = Array(allSorted[allSorted.count/2 ... allSorted.count])
                    
                    let stat1 = DamageEffectStat(
                        type: type,
                        baseValue: secondHalf.first!.baseValue,
                        effectValue: secondHalf.first!.effectValue,
                        distance: nil,
                        distanceArr: [
                            secondHalf.minDistance(),
                            secondHalf.maxDistance()
                        ],
                        subWeapon: subInfo.id)
                    
                    let stat2 = DamageEffectStat(
                        type: type,
                        baseValue: firstHalf.first!.baseValue,
                        effectValue: firstHalf.first!.effectValue,
                        distance: nil,
                        distanceArr: [
                            firstHalf.minDistance(),
                            firstHalf.maxDistance()
                        ],
                        subWeapon: subInfo.id)
                    
                    result.append(contentsOf: [stat1, stat2])
                }
            }
        }
        
        return result
    }
    
    static func shotsToSplat(
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
    
    static func subDamageValue(
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
    
    static func subInkConsumptionPercentage(
        _ ap: AbilityPoints,
        _ abilities: AbilityValues,
        _ mainInfo: MainWeaponData,
        _ subInfo: SubWeaponData
    ) -> AbilityStat {
        let subConsume = SubWeaponConsume(ap, abilities, mainInfo, subInfo)
        
        return AbilityStat(
            baseValue: (subInfo.inkConsume * 100) / mainInfo.inkTankSize,
            modifiedBy: [.inkSaverSub],
            value: (subConsume.inkConsume * 100) / mainInfo.inkTankSize)
    }
    
    static func inkRecoverySeconds(
        effectKey: AbilityValue,
        _ ap: AbilityPoints,
        _ abilities: AbilityValues,
        _ mainInfo: MainWeaponData
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
    
    static func runSpeed(
        _ ap: AbilityPoints,
        _ abilities: AbilityValues,
        _ mainInfo: MainWeaponData
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
    
    static func shootingRunSpeed(
        for type: ShootingRunSpeedType,
        _ ap: AbilityPoints,
        _ abilities: AbilityValues,
        _ mainInfo: MainWeaponData
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
    
    static func swimSpeed(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ gearBuild: GearBuild,
        _ mainInfo: MainWeaponData
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
    
    static func swimSpeedWithRainmaker(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ gearBuild: GearBuild,
        _ mainInfo: MainWeaponData
    ) -> AbilityStat {
        let withoutRM = StatHelper.swimSpeed(ap, values, gearBuild, mainInfo)
        
        let rainmakerSpeedPenalty = 0.8
        
        return AbilityStat(
            baseValue: withoutRM.baseValue * rainmakerSpeedPenalty,
            modifiedBy: withoutRM.modifiedBy,
            value: withoutRM.value * rainmakerSpeedPenalty)
    }
    
    static func runSpeedInEnemyInk(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ mainInfo: MainWeaponData
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
    
    static func damageInEnemyInkPerSecond(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ mainInfo: MainWeaponData
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
    
    static func enemyInkDamageLimit(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ mainInfo: MainWeaponData
    ) -> AbilityStat {
        let iru = Ability.inkResistanceUp
        let iruAp = ap[iru] ?? 0
        
        let apEffect = APEffect(
            for: .opInkDamageLmt,
            in: values,
            of: iruAp,
            weapon: mainInfo)
        
        return AbilityStat(
            baseValue: apEffect.baseEffectToDamage() * 60,
            modifiedBy: [iru],
            value: apEffect.effectToDamage() * 60)
    }
    
    static func framesBeforeDamageInEnemyInk(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ mainInfo: MainWeaponData
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
    
    static func respawnTime(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ gearBuild: GearBuild,
        _ mainInfo: MainWeaponData,
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
        
        let ownRPExtraFrames = hasRP ? 68.0 : 0.0
        let splattedByExtraFrames = hasRP ? 45.0 : 0.0
        let respawnChaseFrame = 150.0
        let fasterRespawn = 60.0
        
        return AbilityStat(
            baseValue: respawnChaseFrame + chase.baseEffect + splattedByExtraFrames + around.baseEffect - fasterRespawn,
            modifiedBy: [qr, .respawnPunisher],
            value: respawnChaseFrame + chase.effect + around.effect + splattedByExtraFrames + ownRPExtraFrames - fasterRespawn)
    }
    
    static func superJumpGroundFrames(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ mainInfo: MainWeaponData
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
    
    static func superJumpTotalFrames(
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
    
    static func shotSpreadAir(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ mainInfo: MainWeaponData
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
    
    static func shotAutofireSpreadAir(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ mainInfo: MainWeaponData
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
    
    static func squidSurgeChargeFrames(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ mainInfo: MainWeaponData
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
    
    static func markedSeconds(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ mainInfo: MainWeaponData,
        _ subInfo: SubWeaponData
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
    
    static func toxicMistMovementReduction(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ mainInfo: MainWeaponData
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
    
    static func quickSuperJumpBoost(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ subInfo: SubWeaponData
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
    
    static func quickSuperJumpValue(
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
    
    static func subVelocity(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ subInfo: SubWeaponData
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
    
    static func subPhaseDuration(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ subInfo: SubWeaponData,
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
    
    static func subMarkingSeconds(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ subInfo: SubWeaponData
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
    
    static func subMarkingRadius(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ subInfo: SubWeaponData
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
    
    static func subExplosionRadius(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ subInfo: SubWeaponData
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
    
    static func subHp(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ subInfo: SubWeaponData
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
    
    static func specialDuration(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ specialInfo: SpecialWeaponData
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
    
    static func specialDamageDistance(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ specialInfo: SpecialWeaponData
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
    
    static func specialPaintRadius(
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
    
    static func specialFieldHp(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ specialInfo: SpecialWeaponData
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
    
    static func specialDeviveHp(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ specialInfo: SpecialWeaponData
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
    
    static func specialHookInkConsumption(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ specialInfo: SpecialWeaponData
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
    
    static func specialInkConsumptionPerSecond(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ specialInfo: SpecialWeaponData
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
    
    static func specialReticleRadius(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ specialInfo: SpecialWeaponData
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
    
    static func specialThrowDistance(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ specialInfo: SpecialWeaponData
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
    
    static func specialMoveSpeed(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ specialInfo: SpecialWeaponData
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
    
    static func specialAutoChargeRate(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ specialInfo: SpecialWeaponData
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
    
    static func specialMaxRadius(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ specialInfo: SpecialWeaponData
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
    
    static func specialRadiusRange(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ specialInfo: SpecialWeaponData
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
    
    static func specialPowerUpDuration(
        _ ap: AbilityPoints,
        _ values: AbilityValues,
        _ specialInfo: SpecialWeaponData
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
    
    static func abilityValues(
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
}
