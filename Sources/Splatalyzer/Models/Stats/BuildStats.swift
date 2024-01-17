//
//  BuildStats.swift
//
//
//  Created by Christopher Engelbart on 1/10/24.
//

import Foundation

public struct BuildStats: Equatable {
    public let mainWeapon: MainWeapon
    public let subWeapon: SubWeapon
    public let specialWeapon: SpecialWeapon
    public let brellaCanopyHp: Int?
    public let fullChargeSeconds: Double?
    public let maxChargeHoldSeconds: Double?
    public let speedType: WeaponSpeedType
    public let multiShots: Int?
    
    public let specialPoint: AbilityStat
    public let specialLost: AbilityStat
    public let specialLostSplattedByRP: AbilityStat
    public let fullInkTankOptions: [InkTankOption]
    public let mainDamages: [DamageStat]
    public let specialDamages: [DamageStat]
    public let subDefenseDamages: [SubWeapon : [DamageEffectStat]]
    public let mainWhiteInkSeconds: Double?
    public let subWhiteInkSeconds: Double
    public let subInkConsumptionPercentage: AbilityStat
    public let squidInkRecoverySeconds: AbilityStat
    public let humanoidInkRecoverySeconds: AbilityStat
    public let runSpeed: AbilityStat
    public let shootingRunSpeed: AbilityStat?
    public let shootingRunSpeedCharging: AbilityStat?
    public let shootingRunSpeedFullCharge: AbilityStat?
    public let shootingRunSpeedSecondaryMode: AbilityStat?
    public let swimSpeed: AbilityStat
    public let swimSpeedWithRainmaker: AbilityStat
    public let runSpeedInEnemyInk: AbilityStat
    public let damageInEnemyInkPerSecond: AbilityStat
    public let enemyInkDamageLimit: AbilityStat
    public let framesBeforeDamageInEnemyInk: AbilityStat
    public let quickRespawnTime: AbilityStat
    public let quickRespawnTimeSplattedByRP: AbilityStat
    public let superJumpGroundFrames: AbilityStat
    public let superJumpTimeTotal: AbilityStat
    public let shotSpreadAir: AbilityStat?
    public let shotSpreadGround: Double?
    public let shotAutofireSpreadAir: AbilityStat?
    public let shotAutofireSpreadGround: Double?
    public let squidSurgeChargeFrame: AbilityStat
    public let pointSensorMarkedSeconds: AbilityStat
    public let inkMineMarkedSeconds: AbilityStat
    public let angleShooterMarkedSeconds: AbilityStat
    public let toxicMistMovementReduction: AbilityStat
    public let quickSuperJumpBoost: AbilityStat?
    public let subVelocity: AbilityStat?
    public let subFirstPhaseDuration: AbilityStat?
    public let subSecondPhaseDuration: AbilityStat?
    public let subMarkedSeconds: AbilityStat?
    public let subMarkedRadius: AbilityStat?
    public let subExplosionRadius: AbilityStat?
    public let subHp: AbilityStat?
    public let specialDuration: AbilityStat?
    public let specialDamageDistance: AbilityStat?
    public let specialFieldHp: AbilityStat?
    public let specialDeviceHp: AbilityStat?
    public let specialHookInkConsumption: AbilityStat?
    public let specialInkConsumptionPerSecond: AbilityStat?
    public let specialReticleRadius: AbilityStat?
    public let specialThrowDistance: AbilityStat?
    public let specialMoveSpeed: AbilityStat?
    public let specialAutoChargeRate: AbilityStat?
    public let specialMaxRadius: AbilityStat?
    public let specialRadiusRange: AbilityStat?
    public let specialPowerUpDuration: AbilityStat?
    
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
        
        self.mainWeapon = mainInfo.mainWeaponId
        self.subWeapon = mainInfo.subWeapon
        self.specialWeapon = mainInfo.specialWeapon
        
        self.brellaCanopyHp = mainInfo.canopyHP != nil ? mainInfo.canopyHP! / 10 : nil
        
        self.fullChargeSeconds = mainInfo.chargeFrameFullCharge.framesToSeconds()
        
        self.maxChargeHoldSeconds = mainInfo.keepChargeFullFrame.framesToSeconds()
        
        self.speedType = mainInfo.weaponSpeedType ?? .mid
        
        self.multiShots = StatHelper.multiShotDict[mainInfo.mainWeaponId]
        
        self.specialPoint = StatHelper.specialPoint(ap: ap, values: abilityValues, mainInfo: mainInfo)
        
        self.specialLost = StatHelper.specialLost(ap: ap, abilities: abilityValues, gearBuild: gearBuild, mainInfo: mainInfo)
        
        self.specialLostSplattedByRP = StatHelper.specialLost(ap: ap, abilities: abilityValues, gearBuild: gearBuild, mainInfo: mainInfo, splattedByRP: true)
        
        self.fullInkTankOptions = StatHelper.fullInkTankOptions(ap: ap, abilities: abilityValues, mainInfo: mainInfo, subInfo: subInfo)
        
        self.mainDamages = StatHelper.mainDamages(mainInfo: mainInfo)

        self.specialDamages = StatHelper.specialDamages(specialInfo: specialInfo)
        
        self.subDefenseDamages = StatHelper.subDefenseDamages(ap: ap, abilities: abilityValues, subData: allSubInfo)
        
        self.mainWhiteInkSeconds = mainInfo.inkRecoverStop.framesToSeconds() ?? nil
        
        self.subWhiteInkSeconds = subInfo.inkRecoverStop.framesToSeconds()
        
        self.subInkConsumptionPercentage = StatHelper.subInkConsumptionPercentage(ap: ap, abilities: abilityValues, mainInfo: mainInfo, subInfo: subInfo)
        
        self.squidInkRecoverySeconds = StatHelper.inkRecoverySeconds(effectKey: .inkRecoverFrmStealth, ap: ap, abilities: abilityValues, mainInfo: mainInfo)
        
        self.humanoidInkRecoverySeconds = StatHelper.inkRecoverySeconds(effectKey: .inkRecoverFrmStd, ap: ap, abilities: abilityValues, mainInfo: mainInfo)
        
        self.runSpeed = StatHelper.runSpeed(ap: ap, abilities: abilityValues, mainInfo: mainInfo)
        
        self.shootingRunSpeed = StatHelper.shootingRunSpeed(for: .moveSpeed, ap: ap, abilities: abilityValues, mainInfo: mainInfo)
        
        self.shootingRunSpeedCharging = StatHelper.shootingRunSpeed(for: .moveSpeedCharge, ap: ap, abilities: abilityValues, mainInfo: mainInfo)
        
        self.shootingRunSpeedFullCharge = StatHelper.shootingRunSpeed(for: .moveSpeedFullCharge, ap: ap, abilities: abilityValues, mainInfo: mainInfo)
        
        self.shootingRunSpeedSecondaryMode = StatHelper.shootingRunSpeed(for: .moveSpeedVariable, ap: ap, abilities: abilityValues, mainInfo: mainInfo)
        
        self.swimSpeed = StatHelper.swimSpeed(ap: ap, values: abilityValues, gearBuild: gearBuild, mainInfo: mainInfo)
        
        self.swimSpeedWithRainmaker = StatHelper.swimSpeedWithRainmaker(ap: ap, values: abilityValues, gearBuild: gearBuild, mainInfo: mainInfo)
        
        self.runSpeedInEnemyInk = StatHelper.runSpeedInEnemyInk(ap: ap, values: abilityValues, mainInfo: mainInfo)
        
        self.damageInEnemyInkPerSecond = StatHelper.damageInEnemyInkPerSecond(ap: ap, values: abilityValues, mainInfo: mainInfo)
        
        self.enemyInkDamageLimit = StatHelper.enemyInkDamageLimit(ap: ap, values: abilityValues, mainInfo: mainInfo)
        
        self.framesBeforeDamageInEnemyInk = StatHelper.framesBeforeDamageInEnemyInk(ap: ap, values: abilityValues, mainInfo: mainInfo)
        
        self.quickRespawnTime = StatHelper.respawnTime(ap: ap, values: abilityValues, gearBuild: gearBuild, mainInfo: mainInfo, splatedByRP: false, hasTacticooler: usingTacticooler)
        
        self.quickRespawnTimeSplattedByRP = StatHelper.respawnTime(ap: ap, values: abilityValues, gearBuild: gearBuild, mainInfo: mainInfo, splatedByRP: true, hasTacticooler: usingTacticooler)
        
        self.superJumpGroundFrames = StatHelper.superJumpGroundFrames(ap: ap, values: abilityValues, mainInfo: mainInfo)
        
        self.superJumpTimeTotal = StatHelper.superJumpTimeTotal(ap: ap, values: abilityValues, mainInfo: mainInfo)
        
        self.shotSpreadAir = StatHelper.shotSpreadAir(ap: ap, values: abilityValues, mainInfo: mainInfo)
        
        self.shotSpreadGround = mainInfo.standDegSwerve
        
        self.shotAutofireSpreadAir = StatHelper.shotAutofireSpreadAir(ap: ap, values: abilityValues, mainInfo: mainInfo)
        
        self.shotAutofireSpreadGround = mainInfo.variableStandDegSwerve
        
        self.squidSurgeChargeFrame = StatHelper.squidSurgeChargeFrames(ap: ap, values: abilityValues, mainInfo: mainInfo)
        
        self.pointSensorMarkedSeconds = StatHelper.subMarkedSeconds(ap: ap, values: abilityValues, mainInfo: mainInfo, subInfo: allSubInfo[.pointSensor]!)
        
        self.inkMineMarkedSeconds = StatHelper.inkMineMarkedSeconds(ap: ap, values: abilityValues, mainInfo: mainInfo, inkMine: allSubInfo[.inkMine]!)
        
        self.angleShooterMarkedSeconds = StatHelper.subMarkedSeconds(ap: ap, values: abilityValues, mainInfo: mainInfo, subInfo: allSubInfo[.angleShooter]!)
        
        self.toxicMistMovementReduction = StatHelper.toxicMistMovementReduction(ap: ap, values: abilityValues, mainInfo: mainInfo)
        
        self.quickSuperJumpBoost = StatHelper.quickSuperJumpBoost(ap: ap, values: abilityValues, subInfo: subInfo)
        
        self.subVelocity = StatHelper.subVelocity(ap: ap, values: abilityValues, subInfo: subInfo)
        
        self.subFirstPhaseDuration = StatHelper.subPhaseDuration(ap: ap, values: abilityValues, subInfo: subInfo, first: true)
        
        self.subSecondPhaseDuration = StatHelper.subPhaseDuration(ap: ap, values: abilityValues, subInfo: subInfo, first: false)
        
        self.subMarkedSeconds = StatHelper.subMarkingSeconds(ap: ap, values: abilityValues, subInfo: subInfo)
        
        self.subMarkedRadius = StatHelper.subMarkingRadius(ap: ap, values: abilityValues, subInfo: subInfo)
        
        self.subExplosionRadius = StatHelper.subExplosionRadius(ap: ap, values: abilityValues, subInfo: subInfo)
        
        self.subHp = StatHelper.subHp(ap: ap, values: abilityValues, subInfo: subInfo)
        
        self.specialDuration = StatHelper.specialDuration(ap: ap, values: abilityValues, specialInfo: specialInfo)
        
        self.specialDamageDistance = StatHelper.specialDamageDistance(ap: ap, values: abilityValues, specialInfo: specialInfo)
        
        self.specialFieldHp = StatHelper.specialFieldHp(ap: ap, values: abilityValues, specialInfo: specialInfo)
        
        self.specialDeviceHp = StatHelper.specialDeviceHp(ap: ap, values: abilityValues, specialInfo: specialInfo)
        
        self.specialHookInkConsumption = StatHelper.specialHookInkConsumption(ap: ap, values: abilityValues, specialInfo: specialInfo)
        
        self.specialInkConsumptionPerSecond = StatHelper.specialInkConsumptionPerSecond(ap: ap, values: abilityValues, specialInfo: specialInfo)
        
        self.specialReticleRadius = StatHelper.specialReticleRadius(ap: ap, values: abilityValues, specialInfo: specialInfo)
        
        self.specialThrowDistance = StatHelper.specialThrowDistance(ap: ap, values: abilityValues, specialInfo: specialInfo)
        
        self.specialMoveSpeed = StatHelper.specialMoveSpeed(ap: ap, values: abilityValues, specialInfo: specialInfo)
        
        self.specialAutoChargeRate = StatHelper.specialAutoChargeRate(ap: ap, values: abilityValues, specialInfo: specialInfo)
        
        self.specialMaxRadius = StatHelper.specialMaxRadius(ap: ap, values: abilityValues, specialInfo: specialInfo)
        
        self.specialRadiusRange = StatHelper.specialRadiusRange(ap: ap, values: abilityValues, specialInfo: specialInfo)
        
        self.specialPowerUpDuration = StatHelper.specialPowerUpDuration(ap: ap, values: abilityValues, specialInfo: specialInfo)
    }
}
