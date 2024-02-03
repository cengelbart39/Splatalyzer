//
//  BuildStats.swift
//
//
//  Created by Christopher Engelbart on 1/10/24.
//

import Foundation

/// Represents all stats for a``GearBuild``
public struct BuildStats: Equatable {
    /// Statistics about the Main Weapon
    public let mainStats: MainWeaponStats
    
    /// Statistics about the Sub Weapon
    public let subStats: SubWeaponStats
    
    /// Statistics about the Special Weapon
    public let specialStats: SpecialWeaponStats
    
    /// Statistics about Sub Weapon Defense
    public let subDefenseStats: SubDefenseStats
    
    /// Statistics about player Movement
    public let moveStats: MovementStats
    
    /// Statistics that don't fall in any particular category
    public let miscStats: MiscStats
    
    /// The number of main weapon shots per button press
    public let multiShots: Int?
    
    /// The number of shots that can be taken after a number of sub weapon uses.
    public let fullInkTankOptions: [Int : [InkTankOption]]
    
    /// Damage done by the Main Weapon
    public let mainDamages: [DamageStat]
    
    /// Damage done by the Special Weapon
    public let specialDamages: [DamageStat]
    
    /// Damage done by every Sub Weapon. Keys refer to the specific sub weapon.
    public let subDefenseDamages: [SubWeapon : [DamageEffectStat]]
    
    
    /// Calculates stats for a ``GearBuild`` and weapon kit pair
    /// - Parameters:
    ///   - mainInfo: Information about the main weapon
    ///   - allSubInfo: Information about every sub weapon
    ///   - specialInfo: Information about the associated special weapon
    ///   - gearBuild: The user's gear build
    ///   - abilityValues: Decoded instance of ``AbilityValues``
    ///   - ldeIntensity: The intensity of Last-Ditch Effort; a range from 0 to 21
    ///   - usingTacticooler: Whether Tacticooler effects should be accounted for
    public init(
        mainInfo: MainWeaponData,
        allSubInfo: [SubWeapon : SubWeaponData],
        specialInfo: SpecialWeaponData,
        gearBuild: GearBuild,
        abilityValues: AbilityValues,
        ldeIntensity: Int,
        usingTacticooler: Bool
    ) {
        let ap = gearBuild.toAbilityPoints(ldeIntensity: ldeIntensity, usingTacticooler: usingTacticooler)
        
        let subInfo = allSubInfo[mainInfo.subWeapon]!
        
        self.mainStats = MainWeaponStats(
            weapon: mainInfo.mainWeaponId,
            
            shotSpreadAir: StatHelper.shotSpreadAir(
                ap: ap, values: abilityValues, mainInfo: mainInfo),
            
            shotSpreadGround: mainInfo.standDegSwerve,
            
            shotAutofireSpreadAir: StatHelper.shotAutofireSpreadAir(
                ap: ap, values: abilityValues, mainInfo: mainInfo),
            
            shotAutofireSpreadGround: mainInfo.variableStandDegSwerve,
            
            whiteInkSeconds: mainInfo.inkRecoverStop.framesToSeconds() ?? nil,
            
            brellaCanopyHp: mainInfo.canopyHP != nil ? mainInfo.canopyHP! / 10 : nil,
            
            fullChargeSeconds: mainInfo.chargeFrameFullCharge.framesToSeconds(),
            
            maxChargeSeconds: mainInfo.keepChargeFullFrame.framesToSeconds()
        )
        
        self.subStats = SubWeaponStats(
            weapon: mainInfo.subWeapon,
            
            inkConsumptionPercentage: StatHelper.subInkConsumptionPercentage(
                ap: ap, abilities: abilityValues, mainInfo: mainInfo, subInfo: subInfo),
            
            whiteInkSeconds: subInfo.inkRecoverStop.framesToSeconds(),
            
            velocity: StatHelper.subVelocity(
                ap: ap, values: abilityValues, subInfo: subInfo),
            
            firstPhaseDuration: StatHelper.subPhaseDuration(
                ap: ap, values: abilityValues, subInfo: subInfo, first: true),
            
            secondPhaseDuration: StatHelper.subPhaseDuration(
                ap: ap, values: abilityValues, subInfo: subInfo, first: false),
            
            markingTimeInSeconds: StatHelper.subMarkingSeconds(
                ap: ap, values: abilityValues, subInfo: subInfo),
            
            markingRadius: StatHelper.subMarkingRadius(
                ap: ap, values: abilityValues, subInfo: subInfo),
            
            explosionRadius: StatHelper.subExplosionRadius(
                ap: ap, values: abilityValues, subInfo: subInfo),
            
            subHp: StatHelper.subHp(
                ap: ap, values: abilityValues, subInfo: subInfo),
            
            quickSuperJumpBoost: StatHelper.quickSuperJumpBoost(
                ap: ap, values: abilityValues, subInfo: subInfo)
        )
        
        self.specialStats = SpecialWeaponStats(
            weapon: mainInfo.specialWeapon,
            
            point: StatHelper.specialPoint(
                ap: ap, values: abilityValues, mainInfo: mainInfo),
            
            lost: StatHelper.specialLost(
                ap: ap, abilities: abilityValues, gearBuild: gearBuild, mainInfo: mainInfo),
            
            lostSplattedByRP: StatHelper.specialLost(
                ap: ap, abilities: abilityValues, gearBuild: gearBuild, mainInfo: mainInfo, splattedByRP: true),
            
            duration: StatHelper.specialDuration(
                ap: ap, values: abilityValues, specialInfo: specialInfo),
            
            damageDistance: StatHelper.specialDamageDistance(
                ap: ap, values: abilityValues, specialInfo: specialInfo),
            
            paintRadius: StatHelper.specialPaintRadius(
                ap: ap, values: abilityValues, specialInfo: specialInfo),
            
            fieldHp: StatHelper.specialFieldHp(
                ap: ap, values: abilityValues, specialInfo: specialInfo),
            
            deviceHp: StatHelper.specialDeviceHp(
                ap: ap, values: abilityValues, specialInfo: specialInfo),
            
            hookInkConsumption: StatHelper.specialHookInkConsumption(
                ap: ap, values: abilityValues, specialInfo: specialInfo),
            
            hookInkConsumptionPerSecond: StatHelper.specialHookInkConsumptionPerSecond(
                ap: ap, values: abilityValues, specialInfo: specialInfo),
            
            reticleRadius: StatHelper.specialReticleRadius(
                ap: ap, values: abilityValues, specialInfo: specialInfo),
            
            throwDistance: StatHelper.specialThrowDistance(
                ap: ap, values: abilityValues, specialInfo: specialInfo),
            
            moveSpeed: StatHelper.specialMoveSpeed(
                ap: ap, values: abilityValues, specialInfo: specialInfo),
            
            autoChargeRate: StatHelper.specialAutoChargeRate(
                ap: ap, values: abilityValues, specialInfo: specialInfo),
            
            maxRadius: StatHelper.specialMaxRadius(
                ap: ap, values: abilityValues, specialInfo: specialInfo),
            
            radiusRange: StatHelper.specialRadiusRange(
                ap: ap, values: abilityValues, specialInfo: specialInfo),
            
            powerUpDuration: StatHelper.specialPowerUpDuration(
                ap: ap, values: abilityValues, specialInfo: specialInfo)
        )
        
        self.subDefenseStats = SubDefenseStats(
            toxicMistMovementReduction: StatHelper.toxicMistMovementReduction(
                ap: ap, values: abilityValues, mainInfo: mainInfo),
            
            pointSensorMarkedSeconds: StatHelper.subMarkedSeconds(
                ap: ap, values: abilityValues, mainInfo: mainInfo, subInfo: allSubInfo[.pointSensor]!),
            
            inkMineMarkedSeconds: StatHelper.inkMineMarkedSeconds(
                ap: ap, values: abilityValues, mainInfo: mainInfo, inkMine: allSubInfo[.inkMine]!),
            
            angleShooterMarkedSeconds: StatHelper.subMarkedSeconds(
                ap: ap, values: abilityValues, mainInfo: mainInfo, subInfo: allSubInfo[.angleShooter]!)
        )
        
        self.moveStats = MovementStats(
            speedType: mainInfo.weaponSpeedType ?? .mid,
            
            swimSpeed: StatHelper.swimSpeed(
                ap: ap, values: abilityValues, gearBuild: gearBuild, mainInfo: mainInfo),
            
            swimSpeedWithRainmaker: StatHelper.swimSpeedWithRainmaker(
                ap: ap, values: abilityValues, gearBuild: gearBuild, mainInfo: mainInfo),
            
            runSpeed: StatHelper.runSpeed(
                ap: ap, abilities: abilityValues, mainInfo: mainInfo),
            
            shootingRunSpeed: StatHelper.shootingRunSpeed(
                for: .moveSpeed, ap: ap, abilities: abilityValues, mainInfo: mainInfo),
            
            shootingRunSpeedCharging: StatHelper.shootingRunSpeed(
                for: .moveSpeedCharge, ap: ap, abilities: abilityValues, mainInfo: mainInfo),
            
            shootingRunSpeedFullCharge: StatHelper.shootingRunSpeed(
                for: .moveSpeedFullCharge, ap: ap, abilities: abilityValues, mainInfo: mainInfo),
            
            shootingRunSpeedSecondary: StatHelper.shootingRunSpeed(
                for: .moveSpeedVariable, ap: ap, abilities: abilityValues, mainInfo: mainInfo),
            
            squidSurgeChargeFrames: StatHelper.squidSurgeChargeFrames(
                ap: ap, values: abilityValues, mainInfo: mainInfo),
            
            runSpeedInEnemyInk: StatHelper.runSpeedInEnemyInk(
                ap: ap, values: abilityValues, mainInfo: mainInfo),
            
            framesBeforeDamageInEnemyInk: StatHelper.framesBeforeDamageInEnemyInk(
                ap: ap, values: abilityValues, mainInfo: mainInfo),
            
            damageInEnemyInkPerSecond: StatHelper.damageInEnemyInkPerSecond(
                ap: ap, values: abilityValues, mainInfo: mainInfo),
            
            enemyInkDamageLimit: StatHelper.enemyInkDamageLimit(
                ap: ap, values: abilityValues, mainInfo: mainInfo)
        )
        
        self.miscStats = MiscStats(
            squidInkRecovery: StatHelper.inkRecoverySeconds(
                effectKey: .inkRecoverFrmStealth, ap: ap, abilities: abilityValues, mainInfo: mainInfo),
            
            humanoidInkRecovery: StatHelper.inkRecoverySeconds(
                effectKey: .inkRecoverFrmStd, ap: ap, abilities: abilityValues, mainInfo: mainInfo),
            
            quickRespawnTime: StatHelper.respawnTime(
                ap: ap, values: abilityValues, gearBuild: gearBuild, mainInfo: mainInfo, splatedByRP: false, hasTacticooler: usingTacticooler),
            
            quickRespawnTimeRP: StatHelper.respawnTime(
                ap: ap, values: abilityValues, gearBuild: gearBuild, mainInfo: mainInfo, splatedByRP: true, hasTacticooler: usingTacticooler),
            
            superJumpGroundFrames: StatHelper.superJumpGroundFrames(
                ap: ap, values: abilityValues, mainInfo: mainInfo),
            
            superJumpTimeTotal: StatHelper.superJumpTimeTotal(
                ap: ap, values: abilityValues, mainInfo: mainInfo)
        )
                        
        self.multiShots = StatHelper.multiShotDict[mainInfo.mainWeaponId]
        
        self.fullInkTankOptions = StatHelper.fullInkTankOptions(ap: ap, abilities: abilityValues, mainInfo: mainInfo, subInfo: subInfo)
        
        self.mainDamages = StatHelper.mainDamages(mainInfo: mainInfo)

        self.specialDamages = StatHelper.specialDamages(specialInfo: specialInfo)
        
        self.subDefenseDamages = StatHelper.subDefenseDamages(ap: ap, abilities: abilityValues, subData: allSubInfo)
    }
}
