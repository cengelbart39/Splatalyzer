//
//  BuildStats.swift
//
//
//  Created by Christopher Engelbart on 1/10/24.
//

import Foundation

struct BuildStats {
    let subWeapon: SubWeapon
    let specialWeapon: SpecialWeapon
    let brellaCanopyHp: Int?
    let fullChargeSeconds: Double?
    let maxChargeHoldSeconds: Double?
    let speedType: WeaponSpeedType
    let multiShots: Int?
    
    let specialPoint: AbilityStat
    let specialLost: AbilityStat
    let specialLostSplattedByRP: AbilityStat
    let fullInkTankOptions: [InkTankOption]
    let mainDamages: [DamageStat]
    let specialDamages: [DamageStat]
    let subDefenseDamages: [DamageEffectStat]
    let mainWhiteInkSeconds: Double?
    let subWhiteInkSeconds: Double
    let subInkConsumptionPercentage: AbilityStat
    let squidInkRecoverySeconds: AbilityStat
    let humanoidInkRecoverySeconds: AbilityStat
    let runSpeed: AbilityStat
    let shootingRunSpeed: AbilityStat?
    let shootingRunSpeedCharging: AbilityStat?
    let shootingRunSpeedFullCharge: AbilityStat?
    let shootingRunSpeedSecondaryMode: AbilityStat?
    let swimSpeed: AbilityStat
    let swimSpeedWithRainmaker: AbilityStat
    let runSpeedInEnemyInk: AbilityStat
    let damageInEnemyInkPerSecond: AbilityStat
    let enemyInkDamageLimit: AbilityStat
    let framesBeforeDamageInEnemyInk: AbilityStat
    let quickRespawnTime: AbilityStat
    let quickRespawnTimeSplatteByRP: AbilityStat
    let superJumpGroundFrames: AbilityStat
    let shotSpreadAir: AbilityStat?
    let shotSpreadGround: Double?
    let shotAutofireSpreadAir: AbilityStat?
    let shotAutofireSpreadGround: Double?
    let squidSurgeChargeFrame: AbilityStat
    let pointSensorMarkedSeconds: AbilityStat
    let inkMineMarkedSeconds: AbilityStat
    let angleShooterMarkedSeconds: AbilityStat
    let toxicMistMovementReduction: AbilityStat
    let quickSuperJumpBoost: AbilityStat?
    let subVelocity: AbilityStat?
    let subFirstPhaseDuration: AbilityStat?
    let subSecondPhaseDuration: AbilityStat?
    let subMarkedSeconds: AbilityStat?
    let subMarkedRadius: AbilityStat?
    let subExplosionRadius: AbilityStat?
    let subHp: AbilityStat?
    let specialDuration: AbilityStat?
    let specialDamageDistance: AbilityStat?
    let specialFieldHp: AbilityStat?
    let specialDeviceHp: AbilityStat?
    let specialHookInkConsumption: AbilityStat?
    let specialInkConsumptionPerSecond: AbilityStat?
    let specialReticleRadius: AbilityStat?
    let specialThrowDistance: AbilityStat?
    let specialMoveSpeed: AbilityStat?
    let specialAutoChargeRate: AbilityStat?
    let specialMaxRadius: AbilityStat?
    let specialRadiusRange: AbilityStat?
    let specialPowerUpDuration: AbilityStat?
    
    init(
        _ mainInfo: MainWeaponData,
        _ subInfo: SubWeaponData,
        _ angleShooterInfo: SubWeaponData,
        _ inkMineInfo: SubWeaponData,
        _ pointSensorInfo: SubWeaponData,
        _ specialInfo: SpecialWeaponData,
        _ gearBuild: GearBuild,
        _ abilityValues: AbilityValues,
        ldeIntensity: Int,
        usingTacticooler: Bool
    ) {
        let ap = gearBuild.toAbilityPoints(ldeIntensity: ldeIntensity, usingTacticooler: usingTacticooler)
        
        self.subWeapon = mainInfo.subWeapon
        
        self.specialWeapon = mainInfo.specialWeapon
        
        self.brellaCanopyHp = mainInfo.canopyHP != nil ? mainInfo.canopyHP! / 10 : nil
        
        self.fullChargeSeconds = mainInfo.chargeFrameFullCharge.framesToSeconds()
        
        self.maxChargeHoldSeconds = mainInfo.keepChargeFullFrame.framesToSeconds()
        
        self.speedType = mainInfo.weaponSpeedType ?? .mid
        
        self.multiShots = StatHelper.multiShotDict[mainInfo.mainWeaponId]
        
        self.specialPoint = StatHelper.specialPoint(ap, abilityValues, mainInfo)
        
        self.specialLost = StatHelper.specialLost(ap, abilityValues, gearBuild, mainInfo)
        
        self.specialLostSplattedByRP = StatHelper.specialLost(ap, abilityValues, gearBuild, mainInfo, splattedByRP: true)
        
        self.fullInkTankOptions = StatHelper.fullInkTankOptions(ap, abilityValues, mainInfo, subInfo)
        
        self.mainDamages = StatHelper.mainDamages(mainInfo)

        self.specialDamages = StatHelper.specialDamages(specialInfo)
        
        self.subDefenseDamages = StatHelper.subDefenseDamages(ap, abilityValues, subInfo)
        
        self.mainWhiteInkSeconds = mainInfo.inkRecoverStop.framesToSeconds() ?? nil
        
        self.subWhiteInkSeconds = subInfo.inkRecoverStop.framesToSeconds()
        
        self.subInkConsumptionPercentage = StatHelper.subInkConsumptionPercentage(ap, abilityValues, mainInfo, subInfo)
        
        self.squidInkRecoverySeconds = StatHelper.inkRecoverySeconds(effectKey: .inkRecoverFrmStealth, ap, abilityValues, mainInfo)
        
        self.humanoidInkRecoverySeconds = StatHelper.inkRecoverySeconds(effectKey: .inkRecoverFrmStd, ap, abilityValues, mainInfo)
        
        self.runSpeed = StatHelper.runSpeed(ap, abilityValues, mainInfo)
        
        self.shootingRunSpeed = StatHelper.shootingRunSpeed(for: .moveSpeed, ap, abilityValues, mainInfo)
        
        self.shootingRunSpeedCharging = StatHelper.shootingRunSpeed(for: .moveSpeedCharge, ap, abilityValues, mainInfo)
        
        self.shootingRunSpeedFullCharge = StatHelper.shootingRunSpeed(for: .moveSpeedFullCharge, ap, abilityValues, mainInfo)
        
        self.shootingRunSpeedSecondaryMode = StatHelper.shootingRunSpeed(for: .moveSpeedVariable, ap, abilityValues, mainInfo)
        
        self.swimSpeed = StatHelper.swimSpeed(ap, abilityValues, gearBuild, mainInfo)
        
        self.swimSpeedWithRainmaker = StatHelper.swimSpeedWithRainmaker(ap, abilityValues, gearBuild, mainInfo)
        
        self.runSpeedInEnemyInk = StatHelper.runSpeedInEnemyInk(ap, abilityValues, mainInfo)
        
        self.damageInEnemyInkPerSecond = StatHelper.damageInEnemyInkPerSecond(ap, abilityValues, mainInfo)
        
        self.enemyInkDamageLimit = StatHelper.enemyInkDamageLimit(ap, abilityValues, mainInfo)
        
        self.framesBeforeDamageInEnemyInk = StatHelper.framesBeforeDamageInEnemyInk(ap, abilityValues, mainInfo)
        
        self.quickRespawnTime = StatHelper.respawnTime(ap, abilityValues, gearBuild, mainInfo, splatedByRP: false, hasTacticooler: usingTacticooler)
        
        self.quickRespawnTimeSplatteByRP = StatHelper.respawnTime(ap, abilityValues, gearBuild, mainInfo, splatedByRP: true, hasTacticooler: usingTacticooler)
        
        self.superJumpGroundFrames = StatHelper.superJumpGroundFrames(ap, abilityValues, mainInfo)
        
        self.shotSpreadAir = StatHelper.shotSpreadAir(ap, abilityValues, mainInfo)
        
        self.shotSpreadGround = mainInfo.standDegSwerve
        
        self.shotAutofireSpreadAir = StatHelper.shotAutofireSpreadAir(ap, abilityValues, mainInfo)
        
        self.shotAutofireSpreadGround = mainInfo.variableStandDegSwerve
        
        self.squidSurgeChargeFrame = StatHelper.squidSurgeChargeFrames(ap, abilityValues, mainInfo)
        
        self.pointSensorMarkedSeconds = StatHelper.markedSeconds(ap, abilityValues, mainInfo, pointSensorInfo)
        
        self.inkMineMarkedSeconds = StatHelper.markedSeconds(ap, abilityValues, mainInfo, inkMineInfo)
        
        self.angleShooterMarkedSeconds = StatHelper.markedSeconds(ap, abilityValues, mainInfo, angleShooterInfo)
        
        self.toxicMistMovementReduction = StatHelper.toxicMistMovementReduction(ap, abilityValues, mainInfo)
        
        self.quickSuperJumpBoost = StatHelper.quickSuperJumpBoost(ap, abilityValues, subInfo)
        
        self.subVelocity = StatHelper.subVelocity(ap, abilityValues, subInfo)
        
        self.subFirstPhaseDuration = StatHelper.subPhaseDuration(ap, abilityValues, subInfo, first: true)
        
        self.subSecondPhaseDuration = StatHelper.subPhaseDuration(ap, abilityValues, subInfo, first: false)
        
        self.subMarkedSeconds = StatHelper.subMarkingSeconds(ap, abilityValues, subInfo)
        
        self.subMarkedRadius = StatHelper.subMarkingRadius(ap, abilityValues, subInfo)
        
        self.subExplosionRadius = StatHelper.subExplosionRadius(ap, abilityValues, subInfo)
        
        self.subHp = StatHelper.subHp(ap, abilityValues, subInfo)
        
        self.specialDuration = StatHelper.specialDuration(ap, abilityValues, specialInfo)
        
        self.specialDamageDistance = StatHelper.specialDamageDistance(ap, abilityValues, specialInfo)
        
        self.specialFieldHp = StatHelper.specialFieldHp(ap, abilityValues, specialInfo)
        
        self.specialDeviceHp = StatHelper.specialDeviveHp(ap, abilityValues, specialInfo)
        
        self.specialHookInkConsumption = StatHelper.specialHookInkConsumption(ap, abilityValues, specialInfo)
        
        self.specialInkConsumptionPerSecond = StatHelper.specialInkConsumptionPerSecond(ap, abilityValues, specialInfo)
        
        self.specialReticleRadius = StatHelper.specialReticleRadius(ap, abilityValues, specialInfo)
        
        self.specialThrowDistance = StatHelper.specialThrowDistance(ap, abilityValues, specialInfo)
        
        self.specialMoveSpeed = StatHelper.specialMoveSpeed(ap, abilityValues, specialInfo)
        
        self.specialAutoChargeRate = StatHelper.specialAutoChargeRate(ap, abilityValues, specialInfo)
        
        self.specialMaxRadius = StatHelper.specialMaxRadius(ap, abilityValues, specialInfo)
        
        self.specialRadiusRange = StatHelper.specialRadiusRange(ap, abilityValues, specialInfo)
        
        self.specialPowerUpDuration = StatHelper.specialPowerUpDuration(ap, abilityValues, specialInfo)
    }
}
