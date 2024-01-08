//
//  MainWeaponData.swift
//
//
//  Created by Christopher Engelbart on 1/6/24.
//

import Foundation

/// An object representing the necessary Main Weapon information for build analysis.
///
/// Combines information from ``GameParametersContainer`` and ``WeaponInfoMain``
struct MainWeaponData {
    let specialPoints: Int
    let subWeapon: SubWeapon
    let specialWeapon: SpecialWeapon
    let overwrites: Overwrites
    let tripleShotSpanFrame: Int?
    let weaponSpeedType: WeaponSpeedType?
    let moveSpeed: Double?
    let moveSpeedCharge: Double?
    let moveSpeedFullCharge: Double?
    let moveSpeedVariable: Double?
    let damageValueMax: Int?
    let damageValueMin: Int?
    let damageValueDirect: Double?
    let damageValueDirectMax: Double?
    let damageValueDirectMin: Double?
    let damageSecondaryValueDirectMax: Double?
    let damageSecondaryValueDirectMin: Double?
    let damageLapOverValueMax: Int?
    let damageLapOverValueMin: Int?
    let blastSplashDirect: Double?
    let blastDamageDistance: [DistanceDamage]
    let damageValueFullCharge: Int?
    let damageValueFullChargeMax: Int?
    let damageValueMaxCharge: Int?
    let damageValueMinCharge: Int?
    let damageSplatanaVerticalDirect: Int?
    let damageSplatanaVertical: Int?
    let damageSplatanaHorizontalDirect: Int?
    let damageSplatanaHorizontal: Int?
    let bodyDamage: Int?
    let variableDamageMax: Int?
    let variableDamageMin: Int?
    let swingUnitGroupDamageMin: Int?
    let swingUnitGroupDamageMax: Int?
    let verticalSwingUnitGroupDamageMin: Int?
    let verticalSwingUnitGroupDamageMax: Int?
    let wideSwingUnitGroupDamageMin: Int?
    let wideSwingUnitGroupDamageMax: Int?
    let canopyHP: Int?
    let chargeFrameFullCharge: Int?
    let keepChargeFullFrame: Int?
    let jumpDegSwerve: Double?
    let standDegSwerve: Double?
    let variableJumpDegSwerve: Double?
    let variableStandDegSwerve: Double?
    let inkRecoverStop: Int?
    let inkConsume: Double?
    let inkConsumeSlosher: Double?
    let inkConsumeFullCharge: Double?
    let inkConsumeMinCharge: Double?
    let inkConsumeFullChargeSplatling: Double?
    let inkConsumeWeaponSwing: Double?
    let inkConsumeWeaponVerticalSwing: Double?
    let inkConsumeWeaponWideSwing: Double?
    let inkConsumeUmbrellaShelterCanopy: Double?
    let inkConsumeWeaponShelterShotgun: Double?
    let inkConsumeSideStep: Double?
    let inkConsumeSwing: Double?
    let inkConsumeChargeFullCharge: Double?
    
    /**
     Creates an instance for a Blaster weapon
     - Parameters:
        - weaponInfo: Weapon info from `WeaponInfoMain.json`
        - container: Weapon game parameters
     */
    init(weaponInfo: WeaponInfoMainItem, container: BlasterGameParameters) {
        let gameParams = container.gameParameters
                
        let damageValueDirect = gameParams.damageParam.valueMax == gameParams.damageParam.valueMin ? Double(gameParams.damageParam.valueMax) : nil
        
        let damageValueMax: Int? = damageValueDirect == nil ? nil : gameParams.damageParam.valueMax
                
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon
        self.specialWeapon = weaponInfo.specialWeapon
        self.overwrites = gameParams.mainWeaponSetting.getOverwrites()
        self.tripleShotSpanFrame = nil
        self.weaponSpeedType = gameParams.mainWeaponSetting.weaponSpeedType
        self.moveSpeed = gameParams.weaponParam.moveSpeed
        self.moveSpeedCharge = nil
        self.moveSpeedFullCharge = nil
        self.moveSpeedVariable = nil
        self.damageValueMax = damageValueMax
        self.damageValueMin = damageValueDirect == nil ? gameParams.damageParam.valueMin : nil
        self.damageValueDirect = damageValueDirect
        self.damageValueDirectMax = nil
        self.damageValueDirectMin = nil
        self.damageSecondaryValueDirectMax = nil
        self.damageSecondaryValueDirectMin = nil
        self.damageLapOverValueMax = nil
        self.damageLapOverValueMin = nil
        self.blastSplashDirect = nil
        self.blastDamageDistance = gameParams.blastParam.distanceDamage
        self.damageValueFullCharge = nil
        self.damageValueFullChargeMax = nil
        self.damageValueMaxCharge = nil
        self.damageValueMinCharge = nil
        self.damageSplatanaVerticalDirect = nil
        self.damageSplatanaVertical = nil
        self.damageSplatanaHorizontalDirect = nil
        self.damageSplatanaHorizontal = nil
        self.bodyDamage = nil
        self.variableDamageMax = nil
        self.variableDamageMin = nil
        self.swingUnitGroupDamageMin = nil
        self.swingUnitGroupDamageMax = nil
        self.verticalSwingUnitGroupDamageMin = nil
        self.verticalSwingUnitGroupDamageMax = nil
        self.wideSwingUnitGroupDamageMax = nil
        self.wideSwingUnitGroupDamageMin = nil
        self.canopyHP = nil
        self.chargeFrameFullCharge = nil
        self.keepChargeFullFrame = nil
        self.jumpDegSwerve = gameParams.weaponParam.jumpDegSwerve
        self.standDegSwerve = gameParams.weaponParam.standDegSwerve
        self.variableJumpDegSwerve = nil
        self.variableStandDegSwerve = nil
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkConsumeSlosher = nil
        self.inkConsumeFullCharge = nil
        self.inkConsumeMinCharge = nil
        self.inkConsumeFullChargeSplatling = nil
        self.inkConsumeWeaponSwing = nil
        self.inkConsumeWeaponVerticalSwing = nil
        self.inkConsumeWeaponWideSwing = nil
        self.inkConsumeUmbrellaShelterCanopy = nil
        self.inkConsumeWeaponShelterShotgun = nil
        self.inkConsumeSideStep = nil
        self.inkConsumeSwing = nil
        self.inkConsumeChargeFullCharge = nil
    }
    
    /**
     Creates an instance for a Brush weapon
     - Parameters:
        - weaponInfo: Weapon info from `WeaponInfoMain.json`
        - container: Weapon game parameters
     */
    init(weaponInfo: WeaponInfoMainItem, container: BrushGameParameters) {
        let gameParams = container.gameParameters
        
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon
        self.specialWeapon = weaponInfo.specialWeapon
        self.overwrites = Overwrites()
        self.tripleShotSpanFrame = nil
        self.weaponSpeedType = gameParams.mainWepaonSetting.weaponSpeedType
        self.moveSpeed = nil
        self.moveSpeedCharge = nil
        self.moveSpeedFullCharge = nil
        self.moveSpeedVariable = nil
        self.damageValueMax = nil
        self.damageValueMin = nil
        self.damageValueDirect = nil
        self.damageValueDirectMax = nil
        self.damageValueDirectMin = nil
        self.damageSecondaryValueDirectMax = nil
        self.damageSecondaryValueDirectMin = nil
        self.damageLapOverValueMax = nil
        self.damageLapOverValueMin = nil
        self.blastSplashDirect = nil
        self.blastDamageDistance = []
        self.damageValueFullCharge = nil
        self.damageValueFullChargeMax = nil
        self.damageValueMaxCharge = nil
        self.damageValueMinCharge = nil
        self.damageSplatanaVerticalDirect = nil
        self.damageSplatanaVertical = nil
        self.damageSplatanaHorizontalDirect = nil
        self.damageSplatanaHorizontal = nil
        self.bodyDamage = gameParams.bodyParam.damage
        self.variableDamageMax = nil
        self.variableDamageMin = nil
        self.swingUnitGroupDamageMax = max(
            gameParams.swingUnitGroupParam.damageParam.inside.damageMaxValue,
            gameParams.swingUnitGroupParam.damageParam.outside.damageMaxValue)
        self.swingUnitGroupDamageMin = min(
            gameParams.swingUnitGroupParam.damageParam.inside.damageMinValue,
            gameParams.swingUnitGroupParam.damageParam.outside.damageMinValue)
        self.verticalSwingUnitGroupDamageMax = nil
        self.verticalSwingUnitGroupDamageMin = nil
        self.wideSwingUnitGroupDamageMax = nil
        self.wideSwingUnitGroupDamageMin = nil
        self.canopyHP = nil
        self.chargeFrameFullCharge = nil
        self.keepChargeFullFrame = nil
        self.jumpDegSwerve = nil
        self.standDegSwerve = nil
        self.variableJumpDegSwerve = nil
        self.variableStandDegSwerve = nil
        self.inkRecoverStop = nil
        self.inkConsume = nil
        self.inkConsumeSlosher = nil
        self.inkConsumeFullCharge = nil
        self.inkConsumeMinCharge = nil
        self.inkConsumeFullChargeSplatling = nil
        self.inkConsumeWeaponSwing = gameParams.weaponSwingParam.inkConsume
        self.inkConsumeWeaponVerticalSwing = nil
        self.inkConsumeWeaponWideSwing = nil
        self.inkConsumeUmbrellaShelterCanopy = nil
        self.inkConsumeWeaponShelterShotgun = nil
        self.inkConsumeSideStep = nil
        self.inkConsumeSwing = nil
        self.inkConsumeChargeFullCharge = nil
    }
    
    /**
     Creates an instance for a Charger weapon
     - Parameters:
        - weaponInfo: Weapon info from `WeaponInfoMain.json`
        - container: Weapon game parameters
     */
    init(weaponInfo: WeaponInfoMainItem, container: ChargerGameParameters) {
        let gameParams = container.gameParameters
                
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon
        self.specialWeapon = weaponInfo.specialWeapon
        self.overwrites = gameParams.mainWeaponSetting.getOverwrites()
        self.tripleShotSpanFrame = nil
        self.weaponSpeedType = gameParams.mainWeaponSetting.weaponSpeedType
        self.moveSpeed = nil
        self.moveSpeedCharge = nil
        self.moveSpeedFullCharge = gameParams.weaponParam.moveSpeedFullCharge
        self.moveSpeedVariable = nil
        self.damageValueMax = nil
        self.damageValueMin = nil
        self.damageValueDirect = nil
        self.damageValueDirectMax = nil
        self.damageValueDirectMin = nil
        self.damageSecondaryValueDirectMax = nil
        self.damageSecondaryValueDirectMin = nil
        self.damageLapOverValueMax = nil
        self.damageLapOverValueMin = nil
        self.blastSplashDirect = nil
        self.blastDamageDistance = []
        self.damageValueFullCharge = gameParams.damageParam.valueFullCharge
        self.damageValueFullChargeMax = nil
        self.damageValueMaxCharge = gameParams.damageParam.valueMaxCharge
        self.damageValueMinCharge = gameParams.damageParam.valueMinCharge
        self.damageSplatanaVertical = nil
        self.damageSplatanaVerticalDirect = nil
        self.damageSplatanaHorizontal = nil
        self.damageSplatanaHorizontalDirect = nil
        self.bodyDamage = nil
        self.variableDamageMax = nil
        self.variableDamageMin = nil
        self.swingUnitGroupDamageMax = nil
        self.swingUnitGroupDamageMin = nil
        self.verticalSwingUnitGroupDamageMax = nil
        self.verticalSwingUnitGroupDamageMin = nil
        self.wideSwingUnitGroupDamageMax = nil
        self.wideSwingUnitGroupDamageMin = nil
        self.canopyHP = nil
        self.chargeFrameFullCharge = gameParams.weaponParam.chargeFrameFullCharge
        self.keepChargeFullFrame = gameParams.weaponKeepChargeParam?.keepChargeFullFrame != 1 ? gameParams.weaponKeepChargeParam?.keepChargeFullFrame : nil
        self.jumpDegSwerve = nil
        self.standDegSwerve = nil
        self.variableJumpDegSwerve = nil
        self.variableStandDegSwerve = nil
        self.inkRecoverStop = nil
        self.inkConsume = nil
        self.inkConsumeSlosher = nil
        self.inkConsumeFullCharge = gameParams.weaponParam.inkConsumeFullCharge
        self.inkConsumeMinCharge = gameParams.weaponParam.inkConsumeMinCharge
        self.inkConsumeWeaponSwing = nil
        self.inkConsumeFullChargeSplatling = nil
        self.inkConsumeWeaponVerticalSwing = nil
        self.inkConsumeWeaponWideSwing = nil
        self.inkConsumeUmbrellaShelterCanopy = nil
        self.inkConsumeWeaponShelterShotgun = nil
        self.inkConsumeSideStep = nil
        self.inkConsumeSwing = nil
        self.inkConsumeChargeFullCharge = nil
    }
    
    /**
     Creates an instance for a Dualie weapon
     - Parameters:
        - weaponInfo: Weapon info from `WeaponInfoMain.json`
        - container: Weapon game parameters
     */
    init(weaponInfo: WeaponInfoMainItem, container: ManeuverGameParameters) {
        let gameParams = container.gameParameters
                
        let damageParamValueDirect = gameParams.damageParam.valueMax == gameParams.damageParam.valueMin ? Double(gameParams.damageParam.valueMax) : nil
        
        let damageParamMax = damageParamValueDirect != nil ? nil : gameParams.damageParam.valueMax
        
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon
        self.specialWeapon = weaponInfo.specialWeapon
        self.overwrites = gameParams.mainWeaponSetting?.getOverwrites() ?? Overwrites()
        self.tripleShotSpanFrame = nil
        self.weaponSpeedType = gameParams.mainWeaponSetting?.weaponSpeedType
        self.moveSpeed = gameParams.weaponParam.moveSpeed
        self.moveSpeedCharge = nil
        self.moveSpeedFullCharge = nil
        self.moveSpeedVariable = nil
        self.damageValueMax = damageParamMax
        self.damageValueMin = damageParamValueDirect == nil ? gameParams.damageParam.valueMin : nil
        self.damageValueDirect = damageParamValueDirect
        self.damageValueDirectMax = nil
        self.damageValueDirectMin = nil
        self.damageSecondaryValueDirectMax = nil
        self.damageSecondaryValueDirectMin = nil
        self.damageLapOverValueMax = gameParams.damageLapOverParam?.valueMax
        self.damageLapOverValueMin = gameParams.damageLapOverParam?.valueMin
        self.blastSplashDirect = nil
        self.blastDamageDistance = []
        self.damageValueFullCharge = nil
        self.damageValueFullChargeMax = nil
        self.damageValueMaxCharge = nil
        self.damageValueMinCharge = nil
        self.damageSplatanaVertical = nil
        self.damageSplatanaVerticalDirect = nil
        self.damageSplatanaHorizontal = nil
        self.damageSplatanaHorizontalDirect = nil
        self.bodyDamage = nil
        self.variableDamageMax = nil
        self.variableDamageMin = nil
        self.swingUnitGroupDamageMax = nil
        self.swingUnitGroupDamageMin = nil
        self.verticalSwingUnitGroupDamageMax = nil
        self.verticalSwingUnitGroupDamageMin = nil
        self.wideSwingUnitGroupDamageMax = nil
        self.wideSwingUnitGroupDamageMin = nil
        self.canopyHP = nil
        self.chargeFrameFullCharge = nil
        self.keepChargeFullFrame = nil
        self.jumpDegSwerve = gameParams.weaponParam.jumpDegSwerve
        self.standDegSwerve = gameParams.weaponParam.standDegSwerve
        self.variableJumpDegSwerve = nil
        self.variableStandDegSwerve = nil
        self.inkRecoverStop = nil
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkConsumeSlosher = nil
        self.inkConsumeFullCharge = nil
        self.inkConsumeMinCharge = nil
        self.inkConsumeFullChargeSplatling = nil
        self.inkConsumeWeaponSwing = nil
        self.inkConsumeWeaponVerticalSwing = nil
        self.inkConsumeWeaponWideSwing = nil
        self.inkConsumeUmbrellaShelterCanopy = nil
        self.inkConsumeWeaponShelterShotgun = nil
        self.inkConsumeSideStep = gameParams.weaponParam.inkConsume
        self.inkConsumeSwing = nil
        self.inkConsumeChargeFullCharge = nil
    }
    
    /**
     Creates an instance for a Roller weapon
     - weaponInfo: Weapon info from `WeaponInfoMain.json`
     - container: Weapon game parameters
     */
    init(weaponInfo: WeaponInfoMainItem, container: RollerGameParameters) {
        let gameParams = container.gameParameters
        
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon
        self.specialWeapon = weaponInfo.specialWeapon
        self.overwrites = gameParams.mainWeaponSetting.getOverwrites()
        self.tripleShotSpanFrame = nil
        self.weaponSpeedType = gameParams.mainWeaponSetting.weaponSpeedType
        self.moveSpeed = nil
        self.moveSpeedCharge = nil
        self.moveSpeedFullCharge = nil
        self.moveSpeedVariable = nil
        self.damageValueMax = nil
        self.damageValueMin = nil
        self.damageValueDirect = nil
        self.damageValueDirectMax = nil
        self.damageValueDirectMin = nil
        self.damageSecondaryValueDirectMax = nil
        self.damageSecondaryValueDirectMin = nil
        self.damageLapOverValueMax = nil
        self.damageLapOverValueMin = nil
        self.blastSplashDirect = nil
        self.blastDamageDistance = []
        self.damageValueFullCharge = nil
        self.damageValueFullChargeMax = nil
        self.damageValueMaxCharge = nil
        self.damageValueMinCharge = nil
        self.damageSplatanaVerticalDirect = nil
        self.damageSplatanaVertical = nil
        self.damageSplatanaHorizontalDirect = nil
        self.damageSplatanaHorizontal = nil
        self.bodyDamage = gameParams.bodyParam.damage
        self.variableDamageMax = nil
        self.variableDamageMin = nil
        self.swingUnitGroupDamageMax = nil
        self.swingUnitGroupDamageMin = nil
        self.verticalSwingUnitGroupDamageMax = max(
            gameParams.verticalSwingUnitGroupParam.damageParam.inside.damageMaxValue,
            gameParams.verticalSwingUnitGroupParam.damageParam.outside.damageMaxValue
        )
        self.verticalSwingUnitGroupDamageMin = min(
            gameParams.verticalSwingUnitGroupParam.damageParam.inside.damageMinValue,
            gameParams.verticalSwingUnitGroupParam.damageParam.outside.damageMinValue
        )
        self.wideSwingUnitGroupDamageMax = max(
            gameParams.wideSwingUnitGroupParam.damageParam.inside.damageMaxValue,
            gameParams.wideSwingUnitGroupParam.damageParam.outside.damageMaxValue
        )
        self.wideSwingUnitGroupDamageMin = min(
            gameParams.wideSwingUnitGroupParam.damageParam.inside.damageMinValue,
            gameParams.wideSwingUnitGroupParam.damageParam.outside.damageMinValue
        )
        self.canopyHP = nil
        self.chargeFrameFullCharge = nil
        self.keepChargeFullFrame = nil
        self.jumpDegSwerve = nil
        self.standDegSwerve = nil
        self.variableJumpDegSwerve = nil
        self.variableStandDegSwerve = nil
        self.inkRecoverStop = nil
        self.inkConsume = nil
        self.inkConsumeSlosher = nil
        self.inkConsumeFullCharge = nil
        self.inkConsumeMinCharge = nil
        self.inkConsumeFullChargeSplatling = nil
        self.inkConsumeWeaponSwing = nil
        self.inkConsumeWeaponVerticalSwing = gameParams.weaponVerticalSwingParam.inkConsume
        self.inkConsumeWeaponWideSwing = gameParams.weaponWideSwingParam.inkConsume
        self.inkConsumeUmbrellaShelterCanopy = nil
        self.inkConsumeWeaponShelterShotgun = nil
        self.inkConsumeSideStep = nil
        self.inkConsumeSwing = nil
        self.inkConsumeChargeFullCharge = nil
    }
    
    /**
     Creates an instance for a Splatana weapon
     - Parameters:
        - weaponInfo: Weapon info from `WeaponInfoMain.json`
        - container: Weapon game parameters
     */
    init(weaponInfo: WeaponInfoMainItem, container: SaberGameParameters) {
        let gameParams = container.gameParameters
        
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon
        self.specialWeapon = weaponInfo.specialWeapon
        self.overwrites = gameParams.mainWeaponSetting.getOverwrites()
        self.tripleShotSpanFrame = nil
        self.weaponSpeedType = gameParams.mainWeaponSetting.weaponSpeedType
        self.moveSpeed = nil
        self.moveSpeedCharge = nil
        self.moveSpeedFullCharge = nil
        self.moveSpeedVariable = nil
        self.damageValueMax = nil
        self.damageValueMin = nil
        self.damageValueDirect = nil
        self.damageValueDirectMax = nil
        self.damageValueDirectMin = nil
        self.damageSecondaryValueDirectMax = nil
        self.damageSecondaryValueDirectMin = nil
        self.damageLapOverValueMax = nil
        self.damageLapOverValueMin = nil
        self.blastSplashDirect = nil
        self.blastDamageDistance = []
        self.damageValueFullCharge = nil
        self.damageValueFullChargeMax = nil
        self.damageValueMaxCharge = nil
        self.damageValueMinCharge = nil
        self.damageSplatanaVerticalDirect = gameParams.bulletSaberSlashVerticalParam.damageParam.damageValue
        self.damageSplatanaVertical  = gameParams.bulletSaberVerticalParam.damageParam.hitDamage
        self.damageSplatanaHorizontalDirect = gameParams.bulletSaberHorizontalParam.damageParam.hitDamage + gameParams.bulletSaberSlashHorizontalParam.damageParam.damageValue
        self.damageSplatanaHorizontal = gameParams.bulletSaberSlashHorizontalParam.damageParam.damageValue
        self.bodyDamage = nil
        self.variableDamageMax = nil
        self.variableDamageMin = nil
        self.swingUnitGroupDamageMax = nil
        self.swingUnitGroupDamageMin = nil
        self.verticalSwingUnitGroupDamageMax = nil
        self.verticalSwingUnitGroupDamageMin = nil
        self.wideSwingUnitGroupDamageMax = nil
        self.wideSwingUnitGroupDamageMin = nil
        self.canopyHP = nil
        self.chargeFrameFullCharge = nil
        self.keepChargeFullFrame = nil
        self.jumpDegSwerve = nil
        self.standDegSwerve = nil
        self.variableJumpDegSwerve = nil
        self.variableStandDegSwerve = nil
        self.inkRecoverStop = nil
        self.inkConsume = nil
        self.inkConsumeSlosher = nil
        self.inkConsumeFullCharge = nil
        self.inkConsumeMinCharge = nil
        self.inkConsumeFullChargeSplatling = nil
        self.inkConsumeWeaponSwing = nil
        self.inkConsumeWeaponVerticalSwing = nil
        self.inkConsumeWeaponWideSwing = nil
        self.inkConsumeUmbrellaShelterCanopy = nil
        self.inkConsumeWeaponShelterShotgun = nil
        self.inkConsumeSideStep = nil
        self.inkConsumeSwing = gameParams.weaponSaberParam.swingParam.inkConsume
        self.inkConsumeChargeFullCharge = gameParams.weaponSaberParam.chargeParam.inkConsumeFullCharge
    }
    
    /**
     Creates an instance for a Shooter weapon
     - weaponInfo: Weapon info from `WeaponInfoMain.json`
     - container: Weapon game parameters
     */
    init(weaponInfo: WeaponInfoMainItem, container: ShooterGameParameters) {
        let gameParams = container.gameParameters
        
        let damageValueDirect = gameParams.damageParam.valueMax == gameParams.damageParam.valueMin ? Double(gameParams.damageParam.valueMax) : nil
        
        let damageValueMax = damageValueDirect != nil ? nil : gameParams.damageParam.valueMax
        
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon
        self.specialWeapon = weaponInfo.specialWeapon
        self.overwrites = gameParams.mainWeaponSetting.getOverwrites()
        self.tripleShotSpanFrame = gameParams.weaponParam.tripleShotSpanFrame
        self.weaponSpeedType = gameParams.mainWeaponSetting.weaponSpeedType
        self.moveSpeed = gameParams.weaponParam.moveSpeed
        self.moveSpeedCharge = nil
        self.moveSpeedFullCharge = nil
        self.moveSpeedVariable = nil
        self.damageValueMax = damageValueMax
        self.damageValueMin = damageValueDirect == nil ? gameParams.damageParam.valueMin : nil
        self.damageValueDirect = damageValueDirect
        self.damageValueDirectMax = nil
        self.damageValueDirectMin = nil
        self.damageSecondaryValueDirectMax = nil
        self.damageSecondaryValueDirectMin = nil
        self.damageLapOverValueMax = nil
        self.damageLapOverValueMin = nil
        self.blastSplashDirect = nil
        self.blastDamageDistance = []
        self.damageValueFullCharge = nil
        self.damageValueFullChargeMax = nil
        self.damageValueMaxCharge = nil
        self.damageValueMinCharge = nil
        self.damageSplatanaVertical = nil
        self.damageSplatanaVerticalDirect = nil
        self.damageSplatanaHorizontal = nil
        self.damageSplatanaHorizontalDirect = nil
        self.bodyDamage = nil
        self.variableDamageMax = gameParams.variableDamageParam?.valueMax
        self.variableDamageMin = gameParams.variableDamageParam?.valueMin
        self.swingUnitGroupDamageMax = nil
        self.swingUnitGroupDamageMin = nil
        self.verticalSwingUnitGroupDamageMax = nil
        self.verticalSwingUnitGroupDamageMin = nil
        self.wideSwingUnitGroupDamageMax = nil
        self.wideSwingUnitGroupDamageMin = nil
        self.canopyHP = nil
        self.chargeFrameFullCharge = nil
        self.keepChargeFullFrame = nil
        self.jumpDegSwerve = gameParams.weaponParam.jumpDegSwerve
        self.standDegSwerve = gameParams.weaponParam.standDegSwerve
        self.variableJumpDegSwerve = gameParams.variableWeaponParam?.jumpDegSwerve
        self.variableStandDegSwerve = gameParams.variableWeaponParam?.standDegSwerve
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkConsumeSlosher = nil
        self.inkConsumeFullCharge = nil
        self.inkConsumeMinCharge = nil
        self.inkConsumeFullChargeSplatling = nil
        self.inkConsumeWeaponSwing = nil
        self.inkConsumeWeaponVerticalSwing = nil
        self.inkConsumeWeaponWideSwing = nil
        self.inkConsumeUmbrellaShelterCanopy = nil
        self.inkConsumeWeaponShelterShotgun = nil
        self.inkConsumeSideStep = nil
        self.inkConsumeSwing = nil
        self.inkConsumeChargeFullCharge = nil
    }
    
    /**
     Creates an instance for a Brella weapon
     - Parameters:
        - weaponInfo: Weapon info from `WeaponInfoMain.json`
        - container: Weapon game parameters
     */
    init(weaponInfo: WeaponInfoMainItem, container: ShelterGameParameters) {
        let gameParams = container.gameParameters
                
        let inkConsumeShelterCanopy =
            gameParams.weaponShelterCanopyParam.inkConsumeUmbrella != 0
            ? gameParams.weaponShelterCanopyParam.inkConsumeUmbrella
            : nil

        let inkConsumeShelterShotgun =
            weaponInfo.rowId == .shelterNormal00 || weaponInfo.rowId == .shelterNormal01
            ? 0.0632499977946
            : gameParams.weaponShelterShotgunParam.inkConsume
        
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon
        self.specialWeapon = weaponInfo.specialWeapon
        self.overwrites = gameParams.mainWeaponSetting.getOverwrites()
        self.tripleShotSpanFrame = nil
        self.weaponSpeedType = gameParams.mainWeaponSetting.weaponSpeedType
        self.moveSpeed = gameParams.weaponShelterShotgunParam.moveSpeed
        self.moveSpeedCharge = nil
        self.moveSpeedFullCharge = nil
        self.moveSpeedVariable = nil
        self.damageValueMax = gameParams.bulletShelterShotgunParam.damageEffectiveTotalMax
        self.damageValueMin = nil
        self.damageValueDirect = nil
        self.damageValueDirectMax = nil
        self.damageValueDirectMin = nil
        self.damageSecondaryValueDirectMax = nil
        self.damageSecondaryValueDirectMin = nil
        self.damageLapOverValueMax = nil
        self.damageLapOverValueMin = nil
        self.blastSplashDirect = nil
        self.blastDamageDistance = []
        self.damageValueFullCharge = nil
        self.damageValueFullChargeMax = nil
        self.damageValueMaxCharge = nil
        self.damageValueMinCharge = nil
        self.damageSplatanaVerticalDirect = nil
        self.damageSplatanaVertical = nil
        self.damageSplatanaHorizontalDirect = nil
        self.damageSplatanaHorizontal = nil
        self.bodyDamage = nil
        self.variableDamageMax = nil
        self.variableDamageMin = nil
        self.swingUnitGroupDamageMax = nil
        self.swingUnitGroupDamageMin = nil
        self.verticalSwingUnitGroupDamageMax = nil
        self.verticalSwingUnitGroupDamageMin = nil
        self.wideSwingUnitGroupDamageMax = nil
        self.wideSwingUnitGroupDamageMin = nil
        self.canopyHP = gameParams.bulletShelterCanopyParam.canopyHP
        self.chargeFrameFullCharge = nil
        self.keepChargeFullFrame = nil
        self.jumpDegSwerve = nil
        self.standDegSwerve = nil
        self.variableJumpDegSwerve = nil
        self.variableStandDegSwerve = nil
        self.inkRecoverStop = nil
        self.inkConsume = nil
        self.inkConsumeSlosher = nil
        self.inkConsumeFullCharge = nil
        self.inkConsumeMinCharge = nil
        self.inkConsumeFullChargeSplatling = nil
        self.inkConsumeWeaponSwing = nil
        self.inkConsumeWeaponVerticalSwing = nil
        self.inkConsumeWeaponWideSwing = nil
        self.inkConsumeUmbrellaShelterCanopy = inkConsumeShelterCanopy
        self.inkConsumeWeaponShelterShotgun = inkConsumeShelterShotgun
        self.inkConsumeSideStep = nil
        self.inkConsumeSwing = nil
        self.inkConsumeChargeFullCharge = nil
    }
    
    /**
     Creates an instance for a Slosher weapon
     - Parameters:
        - weaponInfo: Weapon info from `WeaponInfoMain.json`
        - container: Weapon game parameters
     */
    init(weaponInfo: WeaponInfoMainItem, container: SlosherGameParameters) {
        let gameParams = container.gameParameters
                
        let damageDirectMax = gameParams.unitGroupParam.unit.first?.damageParam.valueMax
        let damageDirectMin = gameParams.unitGroupParam.unit.first?.damageParam.valueMin
        let damageDirect = damageDirectMax == damageDirectMin && damageDirectMax != nil ? damageDirectMax : nil
        
        let isSloshingMachine = weaponInfo.rowId == .slosherLauncher00 || weaponInfo.rowId == .slosherLauncher01
        let isDreadWringer = weaponInfo.rowId == .slosherDouble00
        
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon
        self.specialWeapon = weaponInfo.specialWeapon
        self.overwrites = gameParams.mainWeaponSetting.getOverwrites()
        self.tripleShotSpanFrame = nil
        self.weaponSpeedType = gameParams.mainWeaponSetting.weaponSpeedType
        self.moveSpeed = gameParams.weaponParam.moveSpeed
        self.moveSpeedCharge = nil
        self.moveSpeedFullCharge = nil
        self.moveSpeedVariable = nil
        self.damageValueMax = nil
        self.damageValueMin = nil
        self.damageValueDirect = damageDirect
        self.damageValueDirectMax = damageDirect == nil ? damageDirectMax : nil
        self.damageValueDirectMin = damageDirect == nil ? damageDirectMin : nil
        self.damageSecondaryValueDirectMax = isDreadWringer ? nil : gameParams.unitGroupParam.unit[1].damageParam.valueMax
        self.damageSecondaryValueDirectMin = isDreadWringer ? nil : gameParams.unitGroupParam.unit[1].damageParam.valueMin
        self.damageLapOverValueMax = nil
        self.damageLapOverValueMin = nil
        self.blastSplashDirect = isSloshingMachine ? gameParams.unitGroupParam.unit[1].damageParam.valueMax : nil
        self.blastDamageDistance = gameParams.blastParam?.blastParam.distanceDamage ?? []
        self.damageValueFullCharge = nil
        self.damageValueFullChargeMax = nil
        self.damageValueMaxCharge = nil
        self.damageValueMinCharge = nil
        self.damageSplatanaVertical = nil
        self.damageSplatanaVerticalDirect = nil
        self.damageSplatanaHorizontal = nil
        self.damageSplatanaHorizontalDirect = nil
        self.bodyDamage = nil
        self.variableDamageMax = nil
        self.variableDamageMin = nil
        self.swingUnitGroupDamageMax = nil
        self.swingUnitGroupDamageMin = nil
        self.verticalSwingUnitGroupDamageMax = nil
        self.verticalSwingUnitGroupDamageMin = nil
        self.wideSwingUnitGroupDamageMax = nil
        self.wideSwingUnitGroupDamageMin = nil
        self.canopyHP = nil
        self.chargeFrameFullCharge = nil
        self.keepChargeFullFrame = nil
        self.jumpDegSwerve = nil
        self.standDegSwerve = nil
        self.variableJumpDegSwerve = nil
        self.variableStandDegSwerve = nil
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.inkConsume = nil
        self.inkConsumeSlosher = gameParams.weaponParam.inkConsume
        self.inkConsumeFullCharge = nil
        self.inkConsumeMinCharge = nil
        self.inkConsumeFullChargeSplatling = nil
        self.inkConsumeWeaponSwing = nil
        self.inkConsumeWeaponVerticalSwing = nil
        self.inkConsumeWeaponWideSwing = nil
        self.inkConsumeUmbrellaShelterCanopy = nil
        self.inkConsumeWeaponShelterShotgun = nil
        self.inkConsumeSideStep = nil
        self.inkConsumeSwing = nil
        self.inkConsumeChargeFullCharge = nil
    }
    
    /**
     Creates an instance for a Splatling weapon
     - Parameters:
        - weaponInfo: Weapon info from `WeaponInfoMain.json`
        - container: Weapon game parameters
     */
    init(weaponInfo: WeaponInfoMainItem, container: SpinnerGameParameters) {
        let gameParams = container.gameParameters
        
        let damageDirect = gameParams.damageParam.valueMax == gameParams.damageParam.valueMin ? Double(gameParams.damageParam.valueMax) : nil
        let damageMax = damageDirect != nil ? gameParams.damageParam.valueMax : nil
        
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon
        self.specialWeapon = weaponInfo.specialWeapon
        self.overwrites = gameParams.mainWeaponSetting.getOverwrites()
        self.tripleShotSpanFrame = nil
        self.weaponSpeedType = gameParams.mainWeaponSetting.weaponSpeedType
        self.moveSpeed = gameParams.weaponParam.moveSpeed
        self.moveSpeedCharge = gameParams.weaponParam.moveSpeedCharge
        self.moveSpeedFullCharge = nil
        self.moveSpeedVariable = nil
        self.damageValueMax = damageMax
        self.damageValueMin = damageDirect == nil ? gameParams.damageParam.valueMin : nil
        self.damageValueDirect = damageDirect
        self.damageValueDirectMax = nil
        self.damageValueDirectMin = nil
        self.damageSecondaryValueDirectMax = nil
        self.damageSecondaryValueDirectMin = nil
        self.damageLapOverValueMax = nil
        self.damageLapOverValueMin = nil
        self.blastSplashDirect = nil
        self.blastDamageDistance = []
        self.damageValueFullCharge = nil
        self.damageValueFullChargeMax = gameParams.damageParam.valueFullChargeMax
        self.damageValueMaxCharge = nil
        self.damageValueMinCharge = nil
        self.damageSplatanaVertical = nil
        self.damageSplatanaVerticalDirect = nil
        self.damageSplatanaHorizontal = nil
        self.damageSplatanaHorizontalDirect = nil
        self.bodyDamage = nil
        self.variableDamageMax = nil
        self.variableDamageMin = nil
        self.swingUnitGroupDamageMax = nil
        self.swingUnitGroupDamageMin = nil
        self.verticalSwingUnitGroupDamageMax = nil
        self.verticalSwingUnitGroupDamageMin = nil
        self.wideSwingUnitGroupDamageMax = nil
        self.wideSwingUnitGroupDamageMin = nil
        self.canopyHP = nil
        self.chargeFrameFullCharge = nil
        self.keepChargeFullFrame = gameParams.weaponKeepChargeParam?.keepChargeFullFrame != 1 ? gameParams.weaponKeepChargeParam?.keepChargeFullFrame : nil
        self.jumpDegSwerve = gameParams.weaponParam.jumpDegSwerve
        self.standDegSwerve = gameParams.weaponParam.standDegSwerve
        self.variableJumpDegSwerve = nil
        self.variableStandDegSwerve = nil
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.inkConsume = nil
        self.inkConsumeSlosher = nil
        self.inkConsumeFullCharge = nil
        self.inkConsumeMinCharge = nil
        self.inkConsumeFullChargeSplatling = gameParams.weaponParam.inkConsume
        self.inkConsumeWeaponSwing = nil
        self.inkConsumeWeaponVerticalSwing = nil
        self.inkConsumeWeaponWideSwing = nil
        self.inkConsumeUmbrellaShelterCanopy = nil
        self.inkConsumeWeaponShelterShotgun = nil
        self.inkConsumeSideStep = nil
        self.inkConsumeSwing = nil
        self.inkConsumeChargeFullCharge = nil
    }
    
    /**
     Creates an instance for a Stringer weapon
     - Parameters:
        - weaponInfo: Weapon info from `WeaponInfoMain.json`
        - container: Weapon game parameters
     */
    init(weaponInfo: WeaponInfoMainItem, container: StringerGameParameters) {
        let gameParams = container.gameParameters
        
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon
        self.specialWeapon = weaponInfo.specialWeapon
        self.overwrites = gameParams.mainWeaponSetting.getOverwrites()
        self.tripleShotSpanFrame = nil
        self.weaponSpeedType = gameParams.mainWeaponSetting.weaponSpeedType
        self.moveSpeed = nil
        self.moveSpeedCharge = nil
        self.moveSpeedFullCharge = gameParams.weaponStringerParam.chargeParameter.moveSpeedFullCharge
        self.moveSpeedVariable = nil
        self.damageValueMax = gameParams.bulletStringerParam.damageParam.directHitDamageMax
        self.damageValueMin = gameParams.bulletStringerParam.damageParam.directHitDamageMin
        self.damageValueDirect = nil
        self.damageValueDirectMax = nil
        self.damageValueDirectMin = nil
        self.damageSecondaryValueDirectMax = nil
        self.damageSecondaryValueDirectMin = nil
        self.damageLapOverValueMax = nil
        self.damageLapOverValueMin = nil
        self.blastSplashDirect = nil
        self.blastDamageDistance = weaponInfo.rowId == .stringerShort00 || weaponInfo.rowId == .stringerShort01 ? [] : gameParams.bulletStringerParam.detonationParam.blastParam.distanceDamage
        self.damageValueFullCharge = nil
        self.damageValueFullChargeMax = nil
        self.damageValueMaxCharge = nil
        self.damageValueMinCharge = nil
        self.damageSplatanaVertical = nil
        self.damageSplatanaVerticalDirect = nil
        self.damageSplatanaHorizontal = nil
        self.damageSplatanaHorizontalDirect = nil
        self.bodyDamage = nil
        self.variableDamageMax = nil
        self.variableDamageMin = nil
        self.swingUnitGroupDamageMax = nil
        self.swingUnitGroupDamageMin = nil
        self.verticalSwingUnitGroupDamageMax = nil
        self.verticalSwingUnitGroupDamageMin = nil
        self.wideSwingUnitGroupDamageMax = nil
        self.wideSwingUnitGroupDamageMin = nil
        self.canopyHP = nil
        self.chargeFrameFullCharge = gameParams.weaponStringerParam.chargeParameter.chargeFrameFullCharge
        self.keepChargeFullFrame = gameParams.weaponStringerParam.chargeKeepParameter.keepChargeFullFrame
        self.jumpDegSwerve = nil
        self.standDegSwerve = nil
        self.variableJumpDegSwerve = nil
        self.variableStandDegSwerve = nil
        self.inkRecoverStop = nil
        self.inkConsume = nil
        self.inkConsumeSlosher = nil
        self.inkConsumeFullCharge = nil
        self.inkConsumeMinCharge = nil
        self.inkConsumeFullChargeSplatling = nil
        self.inkConsumeWeaponSwing = nil
        self.inkConsumeWeaponVerticalSwing = nil
        self.inkConsumeWeaponWideSwing = nil
        self.inkConsumeUmbrellaShelterCanopy = nil
        self.inkConsumeWeaponShelterShotgun = nil
        self.inkConsumeSideStep = nil
        self.inkConsumeSwing = nil
        self.inkConsumeChargeFullCharge = gameParams.weaponStringerParam.chargeParameter.inkConsumeFullCharge
    }
}

@inlinable public func min<T: Comparable>(_ x: T?, _ y: T?) -> T? {
    if x == nil && y == nil {
        return nil
        
    } else if let x = x, y == nil {
        return x
        
    } else if let y = y, x == nil {
        return y
        
    } else {
        return min(x!, y!)
        
    }
}

