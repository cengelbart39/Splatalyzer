//
//  StatHelper.swift
//  
//
//  Created by Christopher Engelbart on 1/10/24.
//

import Foundation

/// A structure that contains constants and functions to process and calculate stats for ``BuildStats``
public struct StatHelper {
    /// The number of shots that main weapons have on one button press
    ///
    /// Only main weapons that have more than 1 shot per button press are listed.
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
    
    
    /// Calculates the default and effect special point value for the main weapon.
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - mainInfo: Information about the Main Weapon
    /// - Returns: The default and effect special point value
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
            value: ceil(Double(mainInfo.specialPoints) / apEffect.effect),
            unit: .points,
            title: String(localized: "Points to Special")
        )
    }
    
    /// Calculates and the default and build special lost value when splatted
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - gearBuild: The user's ``GearBuild``
    ///   - mainInfo: Information about the Main Weapon
    ///   - splattedByRP: Whether the player has been splatted by an enemy player with Respawn Punisher
    /// - Returns: The default and build special lost value
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
            ),
            unit: .percentage,
            title: splattedByRP ?
                String(localized: "Special Lost When Splatted With RP", comment: "Refers to Respawn Punisher") :
                String(localized: "Special Lost When Splatted")
        )
    }
    
    /// Calculation and formatting for the percentage of the special guage saved after player death
    /// - Parameter x: Special lost value
    /// - Returns: Formatted  percentage value
    public static func specialSavedAfterDeath(_ x: Double) -> Double {
        return ((1 - x) * 100.0).cutToDecimalPlaces()
    }
    
    /// Calculates how many shots of the main weapon can be performed after
    /// using any number subs.
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - abilities: A decoded instance of ``AbilityValues``
    ///   - mainInfo: Information about the Main Weapon
    ///   - subInfo: Information about the associated sub weapon
    /// - Returns: A dictionary with a key for every number of subs that can be used before ink depeletion and an array of how many shots can be taken
    public static func fullInkTankOptions(
        ap: AbilityPoints,
        abilities: AbilityValues,
        mainInfo: MainWeaponData,
        subInfo: SubWeaponData
    ) -> [Int : [InkTankOption]] {
        var result = [Int : [InkTankOption]]()
        
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
                        value: value.roundToDecimalPlaces())
                    
                    if result[fromFullInkTank] == nil {
                        result[fromFullInkTank] = [option]
                        
                    } else {
                        result[fromFullInkTank]!.append(option)
                    }
                    
                } else {
                    continue
                }
            }
        }
        
        return result
    }
    
    /// Calculates the damage done by the main weapon to enemy players
    /// - Parameter mainInfo: Information about the main weapon
    /// - Returns: Information about the damage done, type of damage, and the number of shots to splat
    public static func mainDamages(mainInfo: MainWeaponData) -> [DamageStat] {
        var result = [DamageStat]()
        
        for type in DamageType.allCases {
            if let subValue = mainInfo.damage(for: type) as? Double {
                
                let stat = DamageStat(
                    type: type == .distance ? .splash : type,
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
                        type: type == .distance ? .splash : type,
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
    
    /// Damage done by the associated special weapon
    /// - Parameter specialInfo: Information about the special weapon
    /// - Returns: Information about the damage done, type of damage, and the number of shots to splat
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
    
    /// Calculates the amount of damage done by every sub weapon in the game by default and with abilities.
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - abilities: A decoded instance of ``AbilityValues``
    ///   - subData: ``SubWeaponData`` for every sub weapon
    /// - Returns: A dictionary of every sub weapon and an array of the amount of damage done, type of damage, and the range of the attack.
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
    
    /// Calculates the number of shots it takes to splat for certain weapons.
    /// - Parameters:
    ///   - value: A damage value
    ///   - type: The type of damage
    ///   - multiShots: The number of shots per button press for a weapon according to ``multiShotDict``
    /// - Returns: The number of shots it takes to splat an enemy player
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
    
    /// The amount of damage, if any, done by a specified sub weapon
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - abilities: A decoded instance of ``AbilityValues``
    ///   - baseValue: The default amount of damage
    ///   - subInfo: Information about a sub weapon
    /// - Note: If a sub weapon does no damage, it will always default to 0 damage.
    /// - Returns: The amount of damage accounting for active AP
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
    
    /// The percentage of the ink tank a sub weapon uses
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - abilities: A decoded instance of ``AbilityValues``
    ///   - mainInfo: Information about the main weapon
    ///   - subInfo: Information about the sub weapon
    /// - Returns: The default and build ink tank consumption percentage
    public static func subInkConsumptionPercentage(
        ap: AbilityPoints,
        abilities: AbilityValues,
        mainInfo: MainWeaponData,
        subInfo: SubWeaponData
    ) -> AbilityStat {
        let subConsume = SubWeaponConsume(ap, abilities, mainInfo, subInfo)
        
        return AbilityStat(
            baseValue: ((subInfo.inkConsume * 100) / mainInfo.inkTankSize).roundToDecimalPlaces(),
            modifiedBy: [.inkSaverSub],
            value: ((subConsume.inkConsume * 100) / mainInfo.inkTankSize).roundToDecimalPlaces(),
            unit: .percentage,
            title: String(localized: "Ink Tank Consumption")
        )
    }
    
    /// The ink tank recovery time in squid/octopus or humanoid form
    /// - Parameters:
    ///   - effectKey: An ``AbilityValue`` that helps initialize ``APEffect``
    ///   - ap: The AP of the user's gear build
    ///   - abilities: A decoded instance of ``AbilityValues``
    ///   - mainInfo: Information about the main weapon
    /// - Precondition: It is assumed that `effectKey` is either `.inkRecoverFrmStealth` or `.inkRecoverFrmStd`. This function was not designed to handle other values.
    /// - Returns: The default and build ink tank recovery seconds
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
            baseValue: (apEffect.baseEffect * mainInfo.inkTankSize).framesToSeconds().cutToDecimalPlaces(3),
            modifiedBy: [.inkRecoveryUp],
            value: (apEffect.effect * mainInfo.inkTankSize).framesToSeconds().cutToDecimalPlaces(3),
            unit: .seconds,
            title: effectKey == .inkRecoverFrmStealth ? String(localized: "Ink Tank Recovery Time (Squid Form)") : String(localized: "Ink Tank Recovery Time (Humanoid Form)")
        )
    }
    
    /// The player's run speed
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - abilities: A decoded instance of ``AbilityValues``
    ///   - mainInfo: Information about the main weapon
    /// - Returns: The default and build run speed
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
            baseValue: (apEffect.baseEffect * 10).cutToDecimalPlaces(3),
            modifiedBy: [ability],
            value: (apEffect.effect * 10).cutToDecimalPlaces(3),
            unit: .unitsPerFrame,
            title: String(localized: "Run Speed")
        )
    }
    
    /// The player's run speed while shooting their main weapon
    /// - Parameters:
    ///   - type: A value of ``ShootingRunSpeedType`` to calculate for
    ///   - ap: The AP of the user's gear build
    ///   - abilities: A decoded instance of ``AbilityValues``
    ///   - mainInfo: Information about the main weapon
    /// - Returns: The default and build shooting run speed. Can be `nil` for weapons which don't support certain shooting run speed types.
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
                baseValue: (moveSpeed * apEffect.baseEffect * 10).cutToDecimalPlaces(3),
                modifiedBy: [.runSpeedUp],
                value: (moveSpeed * apEffect.effect * 10).cutToDecimalPlaces(3),
                unit: .unitsPerFrame,
                title: String(localized: "Run Speed While Shooting")
            )
            
        } else {
            return nil
        }
    }
    
    /// Calculates the player's swim speed
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - abilities: A decoded instance of ``AbilityValues``
    ///   - gearBuild: The plauer's gear build
    ///   - mainInfo: Information about the main weapon
    /// - Returns: The default and build swim speed.
    ///
    /// This calculaton accounts for Swim Speed Up, Ninja Squid, and Main Weapon Weight.
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
            baseValue: (apEffect.baseEffect * 10).cutToDecimalPlaces(3),
            modifiedBy: [.swimSpeedUp, .ninjaSquid],
            value: (apEffect.effect * 10 * ninjaSquidMultiplier).cutToDecimalPlaces(3),
            unit: .unitsPerFrame,
            title: String(localized: "Swim Speed")
        )
    }
    
    /// Calculates the player's swim speed while holding the Rainmaker
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - abilities: A decoded instance of ``AbilityValues``
    ///   - gearBuild: The plauer's gear build
    ///   - mainInfo: Information about the main weapon
    /// - SeeAlso: This calculation relies on ``swimSpeed(ap:values:gearBuild:mainInfo:)`` as base for its return value
    /// - Returns: The default and build swim speed while holding the Rainmaker.
    public static func swimSpeedWithRainmaker(
        ap: AbilityPoints,
        values: AbilityValues,
        gearBuild: GearBuild,
        mainInfo: MainWeaponData
    ) -> AbilityStat {
        let withoutRM = StatHelper.swimSpeed(ap: ap, values: values, gearBuild: gearBuild, mainInfo: mainInfo)
        
        let rainmakerSpeedPenalty = 0.8
        
        return AbilityStat(
            baseValue: (withoutRM.baseValue * rainmakerSpeedPenalty).cutToDecimalPlaces(3),
            modifiedBy: withoutRM.modifiedBy,
            value: (withoutRM.value * rainmakerSpeedPenalty).cutToDecimalPlaces(3),
            unit: .unitsPerFrame,
            title: String(localized: "Swim Speed While Holding The Rainmaker")
        )
    }
    
    /// Calculates run speed while in enemy ink
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - abilities: A decoded instance of ``AbilityValues``
    ///   - mainInfo: Information about the main weapon
    /// - Returns: The default and build run speed in enemy ink
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
            baseValue: (apEffect.baseEffect * 10).cutToDecimalPlaces(3),
            modifiedBy: [iru],
            value: (apEffect.effect * 10).cutToDecimalPlaces(3),
            unit: .unitsPerFrame,
            title: String(localized: "Run Speed In Enemy Ink")
        )
    }
    
    /// Calculates the damage in enemy ink per second
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - abilities: A decoded instance of ``AbilityValues``
    ///   - mainInfo: Information about the main weapon
    /// - Returns: The default and build damage in enemy ink per second
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
            value: apEffect.effectToDamage() * 60,
            unit: .hp,
            title: String(localized: "Damage In Enemy Ink")
        )
    }
    
    /// Calculates the upperbound for damage in enemy ink
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - abilities: A decoded instance of ``AbilityValues``
    ///   - mainInfo: Information about the main weapon
    /// - Returns: The default and build upperbound for damage in enemy ink
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
            value: apEffect.effectToDamage(),
            unit: .hp,
            title: String(localized: "Max Damage from Enemy Ink")
        )
    }
    
    /// Calculates the frames before damage in enemy ink
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - abilities: A decoded instance of ``AbilityValues``
    ///   - mainInfo: Information about the main weapon
    /// - Returns: The default and build frames before damage in enemy ink
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
            value: ceil(apEffect.effect),
            unit: .frames,
            title: String(localized: "Frames Before Damage In Enemy Ink")
        )
    }
    
    /// Calculates the player's respawn time after being splatted
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - gearBuild: The player's gear build
    ///   - mainInfo: Information about the main weapon
    ///   - splatedByRP: Whether the player was splatted by an enemy player with Respawn Punisher
    ///   - hasTacticooler: Whether Tacticooler effects should be considered
    /// - Returns: The default and build respawn time with or without Respawn Punisher and Tacticooler
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
        
        let ownRPExtraFrames = hasRP ? 68.0 : 0.0
        let splattedByExtraFrames = splatedByRP ? 45.0 : 0.0
        let respawnChaseFrame = 150.0
        let fasterRespawn = 60.0
        
        return AbilityStat(
            baseValue: (respawnChaseFrame + chase.baseEffect + splattedByExtraFrames + around.baseEffect - fasterRespawn).framesToSeconds(),
            modifiedBy: [qr, .respawnPunisher],
            value: (respawnChaseFrame + chase.effect + around.effect + splattedByExtraFrames + ownRPExtraFrames - fasterRespawn).framesToSeconds(),
            unit: .seconds,
            title: splatedByRP ? String(localized: "Quick Respawn Time When Splatted by RP", comment: "Refers to Respawn Punisher effect") : String(localized: "Quick Respawn Time")
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
            value: ceil(apEffect.effect),
            unit: .frames,
            title: String(localized: "Super Jump Vulnerable Frames")
        )
    }
    
    /// Calculates the total time it takes for a player to Super Jump.
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - mainInfo: Information about the main weapon
    /// - Returns: The default and build total Super Jump time
    public static func superJumpTimeTotal(
        ap: AbilityPoints,
        values: AbilityValues,
        mainInfo: MainWeaponData
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
            value: (ceil(charge.effect) + ceil(move.effect)).framesToSeconds(),
            unit: .seconds,
            title: String(localized: "Total Super Jump Time")
        )
    }
    
    /// Calculates the number of Super Jump vulnerable frames
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - mainInfo: Information about the main weapon
    /// - Returns: The default and build Super Jump vulnerable frames
    public static func superJumpTotalFrames(
        ap: AbilityPoints,
        values: AbilityValues,
        mainInfo: MainWeaponData
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
            value: (ceil(charge.effect) + ceil(move.effect)).framesToSeconds(),
            unit: .frames,
            title: String(localized: "Super Jump Vulnerable Frames")
        )
    }
    
    /// Calculates the shot spread while the player is jumping
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - mainInfo: Information about the main weapon
    /// - Returns: The default and build shot spread while jumping; can be `nil` if either `mainInfo.standDegSwerve` or `mainInfo.jumpDegSwerve` don't exist.
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
            baseValue: jumpSpread.roundToDecimalPlaces(),
            modifiedBy: [ability],
            value: (reducedExtraSpeed + groundSpread).roundToDecimalPlaces(),
            unit: .degrees,
            title: String(localized: "Shot Spread While Jumping")
        )
    }
    
    /// Calculates the secondary mode shot spread while jumping
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - mainInfo: Information about the main weapon
    /// - Returns: The default and build secondary mode shot spread while jumping; can be `nil` if either `mainInfo.variableStandDegSwerve` or `mainInfo.variableJumpDegSwerve` don't exist.
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
            baseValue: jumpSpread.roundToDecimalPlaces(),
            modifiedBy: [ability],
            value: (reducedExtraSpeed + groundSpread).roundToDecimalPlaces(),
            unit: .degrees,
            title: String(localized: "Secondary Mode Spread While Jumping")
        )
    }
    
    /// Calculates the number of frames it takes to fully charge a Squid Surge
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - mainInfo: Information about the main weapon
    /// - Returns: The default and build frames it takes to fully charge a Squid Surge.
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
            value: ceil(apEffect.effect),
            unit: .degrees,
            title: String(localized: "Squid Surge Charge To Full")
        )
    }
    
    /// Calculates the number of seconds an enemy player is marked for by a sub weapon.
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - mainInfo: Information about the main weapon
    ///   - subInfo: Information about Point Sensor or Angle Shooter
    /// - Note: Only `SubWeaponData` for Angle Shooter or Point Sensor are expected to give meaningful results.
    /// - Returns: The default and build number of seconds an enemy player is marked for.
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
            value: (subEffect.baseEffect * mainEffect.effect).framesToSeconds(),
            unit: .seconds,
            title: String(localized: "\(subInfo.id.rawValue) Tracking Time", comment: "Refers to the marking seconds of the Angle Shooter, Point Sensor sub, or the build's sub weapon.")
        )
    }
    
    /// Calculates the number of seconds an enemy player is tracked for by the Ink Mine sub weapon.
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - mainInfo: Information about the main weapon
    ///   - inkMine: Information about the Ink Mine sub weapon
    /// - Precondition: Although the function can take any `SubWeaponData`, it expects it to be for Ink Mine to give a meaningful result.
    /// - Returns: The default and build number of seconds an enemy player is marked for by the Ink Mine sub weapon.
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
            value: (subEffect.baseEffect * mainEffect.effect).framesToSeconds(),
            unit: .seconds,
            title: String(localized: "\(inkMine.id.rawValue) Tracking Seconds", comment: "Refers to the tracking time of the Ink Mien sub.")
        )
    }
    
    /// Calculates the percentage in which Toxic Mist reduces enemy player movement speed
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - mainInfo: Information about the main weapon
    /// - Returns: The default and build the percentage in which Toxic Mist reduces enemy player movement speed
    /// - Note: Unlike ``subMarkingSeconds(ap:values:subInfo:)`` or ``inkMineMarkedSeconds(ap:values:mainInfo:inkMine:)``, it doesn't rely on `SubWeaponData` about Toxic Mist.
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
            baseValue: (apEffect.baseEffect * 100).roundToDecimalPlaces(),
            modifiedBy: [sru],
            value: (apEffect.effect * 100).roundToDecimalPlaces(),
            unit: .percentage,
            title: String(localized: "\(SubWeapon.toxicMist.rawValue) Movement Reduction", comment: "Refers to the movement reduction effect of Toxic Mist.")
        )
    }
    
    /// Calculates the Quick Super Jump AP supplied to players jumping to a Squid Beakon.
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - subInfo: Information about the Squid Beakon sub weapon
    /// - Important: Sub weapons other than the Squid Beakon, can produce non-`nil` results.
    /// - Returns: Returns the Quick Super Jump AP supplied. Can be `nil` depending on if there is a meaningful effect supplied by the sub weapon.
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
            value: effectCalc,
            unit: .ap,
            title: String(localized: "Quick Super Jump Boost")
        )
    }
    
    /// A calculation for Quick Super Jump AP
    /// - Parameters:
    ///   - multiplier: The effect provided by a sub weapon
    ///   - ap: The AP of the user's gear build
    /// - Note: The formula used in the function is taken from [sendou.ink](https://github.com/Sendouc/sendou.ink/blob/27f3fbdbceb61f36a6e927f0865456e1832bd0b4/app/features/build-analyzer/core/stats.ts#L1378).
    /// - Returns: The Quick Super Jump AP
    public static func quickSuperJumpValue(
        for multiplier: HighMidLow,
        with ap: Int
    ) -> Double {
        let high = multiplier.high!
        let mid = multiplier.mid!
        let low = multiplier.low!
        
        // Lean: This is the base that is used with their weird formula (I didn't even bother renaming the vars and just used what my disassembler gave me)

        // Splatalyzer: Adapted for HighMidLow struct and Swift
        let v7 = ((mid - low) / high - 17.8 / high) / ((17.8 / high) * (17.8 / high - 1))
        
        let v8 = (Double(ap) / high) * ((Double(ap) / high) * v7 + (1 - v7))
        
        return floor(low + (high - low) * v8)
    }
    
    /// Calculates the velocity of a sub weapon
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - subInfo: Information about a sub weapon
    /// - Returns: The default and build sub velocity; can be `nil` for certian sub weapons.
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
            baseValue: apEffect.baseEffect.roundToDecimalPlaces(3),
            modifiedBy: [spu],
            value: apEffect.effect.roundToDecimalPlaces(3),
            unit: .unitsPerFrame,
            title: String(localized: "Velocity (Decides Range)")
        )
    }
    
    /// Calculates phase duration for the Sprinkler sub weapon
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - subInfo: Information about a sub weapon
    ///   - first: If `true`, calcualte for Full Power; if `false`, calculate for Mid-Phase
    /// - Returns: The default and build phase duration. Can be `nil` for some sub weapons.
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
            value: apEffect.effect.framesToSeconds(),
            unit: .seconds,
            title: first ? String(localized: "Full Power Phase Duration") : String(localized: "Mid-Phase Duration")
        )
    }
    
    /// Calculates the marking duration of the weapon kit's sub weapon
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - subInfo: Information about the kit's sub weapon
    /// - Returns: The default and build marking duration. Can be `nil` depending on the sub weapon.
    /// - Note: This applies to the sub weapon of the main weapon. There can be overlap with ``inkMineMarkedSeconds(ap:values:mainInfo:inkMine:)`` or ``subMarkedSeconds(ap:values:mainInfo:subInfo:)``.
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
            value: apEffect.effect.framesToSeconds(),
            unit: .seconds,
            title: String(localized: "Marking Duration")
        )
    }
    
    /// Calculates the marking radius of the weapon kit's sub weapon.
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - subInfo: Information about the kit's sub weapon
    /// - Returns: The default and build marking radius. Can be `nil` depending on the sub weapon.
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
            value: apEffect.effect,
            unit: .radius,
            title: String(localized: "Marking Radius")
        )
    }
    
    /// Calculates the explosion radius of the weapon kit's subw weapon
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - subInfo: Information about the kit's sub weapon
    /// - Returns: The default and build sub explosion radius. Can be `nil` depending on the sub weapon.
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
            value: apEffect.effect,
            unit: .radius,
            title: String(localized: "Explosion Radius")
        )
    }
    
    /// Calculates the durability of the weapon kit's sub weapon
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - subInfo: Information about the kit's sub weapon
    /// - Returns: The default and build sub ddurability. Can be `nil` depending on the sub weapon.
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
            baseValue: (apEffect.baseEffect / 10).roundToDecimalPlaces(1),
            modifiedBy: [spu],
            value: (apEffect.effect / 10).roundToDecimalPlaces(1),
            unit: .hp,
            title: String(localized: "Durability")
        )
    }
    
    /// Calculates the duration of the player's special.
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - specialInfo: Information about the player's special weapon
    /// - Returns: The default and build special duration. Can return `nil` if there is no meaningful effect.
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
            value: apEffect.effect.framesToSeconds(),
            unit: .seconds,
            title: String(localized: "\(specialInfo.id.rawValue) Duration", comment: "Refers to the duration of certain special weapons.")
        )
    }
    
    /// Calculates the damage done by the player's special weapon over some distance.
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - specialInfo: Information about the player's special weapon
    /// - Returns: The default and build special damage over some distance. Can return `nil` if there is no meaningful effect.
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
            baseValue: apEffect.baseEffect.roundToDecimalPlaces(4),
            modifiedBy: [spu],
            value: apEffect.effect.roundToDecimalPlaces(4),
            unit: .damage,
            title: String(localized: "\(specialInfo.id.rawValue) Damage Distance", comment: "Refers to the damage done by a special weapon over some specified distance.")
        )
    }
    
    /// Calculates the paint radius of the player's special weapon.
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - specialInfo: Information about the player's special weapon
    /// - Returns: The default and build special shield durability. Can return `nil` if there is no meaningful effect.
    public static func specialPaintRadius(
        ap: AbilityPoints,
        values: AbilityValues,
        specialInfo: SpecialWeaponData
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
            baseValue: apEffect.baseEffect.roundToDecimalPlaces(4),
            modifiedBy: [spu],
            value: apEffect.effect.roundToDecimalPlaces(4),
            unit: .radius,
            title: String(localized: "\(specialInfo.id.rawValue) Paint Radius", comment: "Refers to the painting radius of certain specials.")
        )
    }
    
    /// Calculates the shield durability of the Big Bubbler special weapon.
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - specialInfo: Information about the player's special weapon
    /// - Returns: The default and build shield durability. Can return `nil` if there is no meaningful effect  or not Big Bubbler.
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
            value: round(apEffect.effect / 10),
            unit: .hp,
            title: String(localized: "\(specialInfo.id.rawValue) Shield Durability", comment: "Refers to the durability of the Big Bubbler shield.")
        )
    }
    
    /// Calculates the device durability of the Big Bubbler special weapon.
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - specialInfo: Information about the player's special weapon
    /// - Returns: The default and build device durability. Can return `nil` if there is no meaningful effect  or not Big Bubbler.
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
            value: round(apEffect.effect / 10),
            unit: .hp,
            title: String(localized: "\(specialInfo.id.rawValue) Device Durability", comment: "Refers to the durability of the Big Bubbler device.")
        )
    }
    
    /// Calculates the Hook Ink Consumption of the Zipcaster special weapon
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - specialInfo: Information about the player's special weapon
    /// - Returns: The default and build hook ink consumption. Can return `nil` if there is no meaningful effect or not Zipcaster.
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
            baseValue: ((apEffect.baseEffect * 100) / zipcasterInkTankSize).roundToDecimalPlaces(),
            modifiedBy: [spu],
            value: ((apEffect.effect * 100) / zipcasterInkTankSize).roundToDecimalPlaces(),
            unit: .percentage,
            title: String(localized: "\(specialInfo.id.rawValue) Hook Ink Consumption", comment: "Refers to the ink consumption of the Zipcaster hook.")
        )
    }
    
    /// Calculates the Hook Ink Consumption per Second of the Zipcaster special weapon
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - specialInfo: Information about the player's special weapon
    /// - Returns: The default and build hook ink consumption per second. Can return `nil` if there is no meaningful effect or not Zipcaster.
    public static func specialHookInkConsumptionPerSecond(
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
            baseValue: ((apEffect.baseEffect * 100) / zipcasterInkTankSize).roundToDecimalPlaces(),
            modifiedBy: [spu],
            value: ((apEffect.effect * 100) / zipcasterInkTankSize).roundToDecimalPlaces(),
            unit: .percentage,
            title: String(localized: "\(specialInfo.id.rawValue) Hook Ink Consumption Per Second", comment: "Refers to the ink consumption of the Zipcaster special while idling.")
        )
    }
    
    /// Calculates the Reticle Radius of the Tenta Missile special weapon
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - specialInfo: Information about the player's special weapon
    /// - Returns: The default and build reticle radius. Can return `nil` if there is no meaningful effect or not Tenta Missiles.
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
            baseValue: apEffect.baseEffect.roundToDecimalPlaces(),
            modifiedBy: [spu],
            value: apEffect.effect.roundToDecimalPlaces(),
            unit: .radius,
            title: String(localized: "\(specialInfo.id.rawValue) Reticle Radius", comment: "Refers to the reticle radius of the Tenta Missile special.")
        )
    }
    
    /// Calculates the throw distance of the Splattercolor Screen special weapon
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - specialInfo: Information about the player's special weapon
    /// - Returns: The default and build throw distance. Can return `nil` if there is no meaningful effect or not Splattercolor Screen.
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
            baseValue: apEffect.baseEffect.roundToDecimalPlaces(),
            modifiedBy: [spu],
            value: apEffect.effect.roundToDecimalPlaces(),
            unit: .distance,
            title: String(localized: "\(specialInfo.id.rawValue) Throw Distance", comment: "Refers to the throwing distance of the Splattercolor Screen special.")
        )
    }
    
    /// Calculates the move speed of the Splattercolor Screen special weapon
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - specialInfo: Information about the player's special weapon
    /// - Returns: The default and build move speed. Can return `nil` if there is no meaningful effect or not Splattercolor Screen.
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
            baseValue: apEffect.baseEffect.roundToDecimalPlaces(4),
            modifiedBy: [spu],
            value: apEffect.effect.roundToDecimalPlaces(4),
            unit: .unitsPerFrame,
            title: String(localized: "\(specialInfo.id.rawValue) Movement Speed", comment: "Refers to the player's movement speed while using certain specials.")
        )
    }
    
    /// Calculates the auto charge rate of the Booyah Bomb special weapon
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - specialInfo: Information about the player's special weapon
    /// - Returns: The default and build auto charge rate. Can return `nil` if there is no meaningful effect or not Booyah Bomb.
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
            baseValue: (apEffect.baseEffect * 100).roundToDecimalPlaces(),
            modifiedBy: [spu],
            value: (apEffect.effect * 100).roundToDecimalPlaces(),
            unit: .none,
            title: String(localized: "Special Auto Charge Rate")
        )
    }
    
    /// Calculates the max radius of the Wave Breaker special weapon
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - specialInfo: Information about the player's special weapon
    /// - Returns: The default and build auto charge rate. Can return `nil` if there is no meaningful effect or not Wave Breaker.
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
            baseValue: apEffect.baseEffect.roundToDecimalPlaces(),
            modifiedBy: [spu],
            value: apEffect.effect.roundToDecimalPlaces(),
            unit: .radius,
            title: String(localized: "\(specialInfo.id.rawValue) Max Radius", comment: "Refers to the maximum radius of the Big Bubbler or Wave Breaker special.")
        )
    }
    
    /// Calculates the radius range (max and min) of certain special weapons
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - specialInfo: Information about the player's special weapon
    /// - Returns: The default and build radius range. Can return `nil` if there is no meaningful effect.
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
            baseValue: minEffect.baseEffect.roundToDecimalPlaces() - maxEffect.baseEffect.roundToDecimalPlaces(),
            modifiedBy: [spu],
            value: minEffect.effect.roundToDecimalPlaces() - maxEffect.effect.roundToDecimalPlaces(),
            unit: .radius,
            title: String(localized: "\(specialInfo.id.rawValue) Radius Range", comment: "Refers to the maximum and minimum radius of the certain specials.")
        )
    }
    
    /// Calculates the duration of Special Power Up
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - specialInfo: Information about the player's special weapon
    /// - Returns: The default and build SPU duration. Can return `nil` if there is no meaningful effect.
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
            value: apEffect.effect,
            unit: .none,
            title: String(localized: "Special Power Up Duration")
        )
    }
    
    /// Determies the ``HighMidLow`` value used for an ``AbilityValue``
    /// - Parameters:
    ///   - value: A key in `values`
    ///   - values: A decoded instance of ``AbilityValues``
    ///   - weapon: Source of weapon overwrites (if any)
    /// - Returns: A ``HighMidLow`` for `value`; if overwrite and decoded value are both `nil` goes to 0.
    public static func abilityValues(
        for value: AbilityValue,
        in values: AbilityValues,
        weapon: WeaponDatable
    ) -> HighMidLow {
        let overwrites = weapon.overwrites.value(for: value)
        
        let hml = values.dictionary[value]
        
        let effect =  HighMidLow(
            high: overwrites?.high ?? hml?.high ?? 0.0,
            mid: overwrites?.mid ?? hml?.mid ?? 0.0,
            low: overwrites?.low ?? hml?.low ?? 0.0)
        
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
