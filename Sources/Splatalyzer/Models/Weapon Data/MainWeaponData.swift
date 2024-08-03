//
//  MainWeaponData.swift
//
//
//  Created by Christopher Engelbart on 1/6/24.
//

import Foundation

/// An object representing the necessary Main Weapon information for build analysis.
///
/// Combines information from ``GameParametable``  and ``WeaponInfoMain``
public struct MainWeaponData: WeaponDatable {
    public let specialPoints: Int
    public let mainWeaponId: MainWeapon
    public let subWeapon: SubWeapon
    public let specialWeapon: SpecialWeapon
    public let overwrites: Overwritable
    public let tripleShotSpanFrame: Int?
    public let weaponSpeedType: WeaponSpeedType?
    public let moveSpeed: Double?
    public let moveSpeedCharge: Double?
    public let moveSpeedFullCharge: Double?
    public let moveSpeedVariable: Double?
    public let damageValueMax: Int?
    public let damageValueMin: Int?
    public let damageValueDirect: Double?
    public let damageValueDirectMax: Double?
    public let damageValueDirectMin: Double?
    public let damageSecondaryValueDirectMax: Double?
    public let damageSecondaryValueDirectMin: Double?
    public let damageLapOverValueMax: Int?
    public let damageLapOverValueMin: Int?
    public let blastSplashDamage: Double?
    public let blastDamageDistance: [DistanceDamage]
    public let damageValueFullCharge: Int?
    public let damageValueFullChargeMax: Int?
    public let damageValueMaxCharge: Int?
    public let damageValueMinCharge: Int?
    public let damageSplatanaVerticalDirect: Int?
    public let damageSplatanaVertical: Int?
    public let damageSplatanaHorizontalDirect: Int?
    public let damageSplatanaHorizontal: Int?
    public let bodyDamage: Int?
    public let variableDamageMax: Int?
    public let variableDamageMin: Int?
    public let swingUnitGroupDamageMin: Int?
    public let swingUnitGroupDamageMax: Int?
    public let verticalSwingUnitGroupDamageMin: Int?
    public let verticalSwingUnitGroupDamageMax: Int?
    public let wideSwingUnitGroupDamageMin: Int?
    public let wideSwingUnitGroupDamageMax: Int?
    public let canopyHP: Int?
    public let chargeFrameFullCharge: Int?
    public let keepChargeFullFrame: Int?
    public let jumpDegSwerve: Double?
    public let standDegSwerve: Double?
    public let variableJumpDegSwerve: Double?
    public let variableStandDegSwerve: Double?
    public let inkRecoverStop: Int?
    public let inkConsume: Double?
    public let inkConsumeSlosher: Double?
    public let inkConsumeFullCharge: Double?
    public let inkConsumeMinCharge: Double?
    public let inkConsumeFullChargeSplatling: Double?
    public let inkConsumeWeaponSwing: Double?
    public let inkConsumeWeaponVerticalSwing: Double?
    public let inkConsumeWeaponWideSwing: Double?
    public let inkConsumeUmbrellaShelterCanopy: Double?
    public let inkConsumeWeaponShelterShotgun: Double?
    public let inkConsumeSideStep: Double?
    public let inkConsumeSwing: Double?
    public let inkConsumeChargeFullCharge: Double?
    
    /// Determines the ink tank size based on which main weapon is being represented
    public var inkTankSize: Double {
        if self.mainWeaponId == .splattershotJr || self.mainWeaponId == .customSplattershotJr {
            
            return 1.1
            
        } else {
            return 1
        }
    }
    
    /**
     Creates an instance for a Blaster weapon
     - Parameters:
        - weaponInfo: Weapon info from `WeaponInfoMain.json`
        - container: Weapon game parameters
     */
    public init(weaponInfo: WeaponInfoMainItem, container: Blaster) {
        let gameParams = container.parameters
                
        let damageValueDirect = gameParams.damageParam.valueMax == gameParams.damageParam.valueMin ? Double(gameParams.damageParam.valueMax) : nil
        
        let damageValueMax: Int? = damageValueDirect == nil ? nil : gameParams.damageParam.valueMax
                
        self.mainWeaponId = MainWeapon(rawValue: weaponInfo.rowId.rawValue)!
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon.toSubWeapon()!
        self.specialWeapon = weaponInfo.specialWeapon.toSpecialWeapon()!
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
        self.blastSplashDamage = nil
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
    public init(weaponInfo: WeaponInfoMainItem, container: Brush) {
        let gameParams = container.parameters
        
        self.mainWeaponId = MainWeapon(rawValue: weaponInfo.rowId.rawValue)!
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon.toSubWeapon()!
        self.specialWeapon = weaponInfo.specialWeapon.toSpecialWeapon()!
        self.overwrites = MainOverwrites()
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
        self.blastSplashDamage = nil
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
    public init(weaponInfo: WeaponInfoMainItem, container: Charger) {
        let gameParams = container.parameters
                
        self.mainWeaponId = MainWeapon(rawValue: weaponInfo.rowId.rawValue)!
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon.toSubWeapon()!
        self.specialWeapon = weaponInfo.specialWeapon.toSpecialWeapon()!
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
        self.blastSplashDamage = nil
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
    public init(weaponInfo: WeaponInfoMainItem, container: Dualie) {
        let gameParams = container.parameters
                
        let damageParamValueDirect = gameParams.damageParam.valueMax == gameParams.damageParam.valueMin ? Double(gameParams.damageParam.valueMax) : nil
        
        let damageParamMax = damageParamValueDirect != nil ? nil : gameParams.damageParam.valueMax
        
        self.mainWeaponId = MainWeapon(rawValue: weaponInfo.rowId.rawValue)!
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon.toSubWeapon()!
        self.specialWeapon = weaponInfo.specialWeapon.toSpecialWeapon()!
        self.overwrites = gameParams.mainWeaponSetting.getOverwrites()
        self.tripleShotSpanFrame = nil
        self.weaponSpeedType = gameParams.mainWeaponSetting.weaponSpeedType
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
        self.blastSplashDamage = nil
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
    public init(weaponInfo: WeaponInfoMainItem, container: Roller) {
        let gameParams = container.parameters
        
        self.mainWeaponId = MainWeapon(rawValue: weaponInfo.rowId.rawValue)!
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon.toSubWeapon()!
        self.specialWeapon = weaponInfo.specialWeapon.toSpecialWeapon()!
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
        self.blastSplashDamage = nil
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
    public init(weaponInfo: WeaponInfoMainItem, container: Splatana) {
        let gameParams = container.parameters
        
        self.mainWeaponId = MainWeapon(rawValue: weaponInfo.rowId.rawValue)!
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon.toSubWeapon()!
        self.specialWeapon = weaponInfo.specialWeapon.toSpecialWeapon()!
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
        self.blastSplashDamage = nil
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
    public init(weaponInfo: WeaponInfoMainItem, container: Shooter) {
        let gameParams = container.parameters
        
        let damageValueDirect = gameParams.damageParam.valueMax == gameParams.damageParam.valueMin ? Double(gameParams.damageParam.valueMax) : nil
        
        let damageValueMax = damageValueDirect != nil ? nil : gameParams.damageParam.valueMax
        
        self.mainWeaponId = MainWeapon(rawValue: weaponInfo.rowId.rawValue)!
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon.toSubWeapon()!
        self.specialWeapon = weaponInfo.specialWeapon.toSpecialWeapon()!
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
        self.blastSplashDamage = nil
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
    public init(weaponInfo: WeaponInfoMainItem, container: Brella) {
        let gameParams = container.parameters
                
        let inkConsumeShelterCanopy =
            gameParams.weaponShelterCanopyParam.inkConsumeUmbrella != 0
            ? gameParams.weaponShelterCanopyParam.inkConsumeUmbrella
            : nil

        let inkConsumeShelterShotgun =
            weaponInfo.rowId == .splatBrella || weaponInfo.rowId == .sorellaBrella
            ? 0.0632499977946
            : gameParams.weaponShelterShotgunParam.inkConsume
        
        self.mainWeaponId = MainWeapon(rawValue: weaponInfo.rowId.rawValue)!
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon.toSubWeapon()!
        self.specialWeapon = weaponInfo.specialWeapon.toSpecialWeapon()!
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
        self.blastSplashDamage = nil
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
    public init(weaponInfo: WeaponInfoMainItem, container: Slosher) {
        let gameParams = container.parameters
                
        let damageDirectMax = gameParams.unitGroupParam.unit.first?.damageParam.valueMax
        let damageDirectMin = gameParams.unitGroupParam.unit.first?.damageParam.valueMin
        let damageDirect = damageDirectMax == damageDirectMin && damageDirectMax != nil ? damageDirectMax : nil
        
        let isSloshingMachine = weaponInfo.rowId == .sloshingMachine || weaponInfo.rowId == .sloshingMachineNeo
        let isDreadWringer = weaponInfo.rowId == .dreadWringer
        
        self.mainWeaponId = MainWeapon(rawValue: weaponInfo.rowId.rawValue)!
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon.toSubWeapon()!
        self.specialWeapon = weaponInfo.specialWeapon.toSpecialWeapon()!
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
        self.damageSecondaryValueDirectMax = isDreadWringer ? nil : gameParams.unitGroupParam.unit[safe: 1]?.damageParam.valueMax
        self.damageSecondaryValueDirectMin = isDreadWringer ? nil : gameParams.unitGroupParam.unit[safe: 1]?.damageParam.valueMin
        self.damageLapOverValueMax = nil
        self.damageLapOverValueMin = nil
        self.blastSplashDamage = isSloshingMachine ? gameParams.unitGroupParam.unit[safe: 1]?.damageParam.valueMax : nil
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
    public init(weaponInfo: WeaponInfoMainItem, container: Splatling) {
        let gameParams = container.parameters
        
        let damageDirect = gameParams.damageParam.valueMax == gameParams.damageParam.valueMin ? Double(gameParams.damageParam.valueMax) : nil
        let damageMax = damageDirect != nil ? gameParams.damageParam.valueMax : nil
        
        self.mainWeaponId = MainWeapon(rawValue: weaponInfo.rowId.rawValue)!
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon.toSubWeapon()!
        self.specialWeapon = weaponInfo.specialWeapon.toSpecialWeapon()!
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
        self.blastSplashDamage = nil
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
    public init(weaponInfo: WeaponInfoMainItem, container: Stringer) {
        let gameParams = container.parameters
            
        self.mainWeaponId = MainWeapon(rawValue: weaponInfo.rowId.rawValue)!
        self.specialPoints = weaponInfo.specialPoint
        self.subWeapon = weaponInfo.subWeapon.toSubWeapon()!
        self.specialWeapon = weaponInfo.specialWeapon.toSpecialWeapon()!
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
        self.blastSplashDamage = nil
        self.blastDamageDistance = weaponInfo.rowId == .reeflux450 || weaponInfo.rowId == .reeflux450Deco ? [] : gameParams.bulletStringerParam.detonationParam.blastParam.distanceDamage
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
    
    /// Gets the proper ink consumption propery for an ``InkConsumeType``
    /// - Parameter type: A specified ink consumption type
    /// - Returns: The correct ink consumption property; can return `nil` if the desired property doesn't exist.
    func inkConsume(for type: InkConsumeType) -> Double? {
        switch type {
        case .normal:
            return self.inkConsume ?? self.inkConsumeWeaponShelterShotgun
            
        case .swing:
            return self.inkConsumeSwing ?? self.inkConsumeWeaponSwing
            
        case .slosh:
            return self.inkConsumeSlosher
            
        case .verticalSwing:
            return self.inkConsumeWeaponVerticalSwing
            
        case .horizontalSwing:
            return self.inkConsumeWeaponWideSwing
            
        case .tapShot:
            return self.inkConsumeMinCharge
            
        case .fullCharge:
            return self.inkConsumeFullCharge ?? self.inkConsumeChargeFullCharge
            
        case .splatlingCharge:
            return self.inkConsumeFullChargeSplatling
            
        case .shieldLaunch:
            return self.inkConsumeUmbrellaShelterCanopy
            
        case .dualieRoll:
            return self.inkConsumeSideStep
        }
    }
    
    public func damage(for type: DamageType) -> Any? {
        switch type {
        case .turretMax:
            return self.damageLapOverValueMax.toDouble()
            
        case .turretMin:
            return self.damageLapOverValueMin.toDouble()
            
        case .normalMaxFullCharge:
            return self.damageValueFullChargeMax.toDouble()
            
        case .normalMax:
            return self.damageValueMax.toDouble()
            
        case .normalMin:
            return self.damageValueMin.toDouble()
            
        case .direct:
            return self.damageValueDirect
            
        case .directMax:
            return self.damageValueDirectMax
            
        case .directMin:
            return self.damageValueDirectMin
            
        case .directSecondaryMax:
            return self.damageSecondaryValueDirectMax
            
        case .directSecondaryMin:
            return self.damageSecondaryValueDirectMin
            
        case .fullCharge:
            return self.damageValueFullCharge.toDouble()
            
        case .maxCharge:
            return self.damageValueMaxCharge.toDouble()
            
        case .tapShot:
            return self.damageValueMinCharge.toDouble()
            
        case .splash:
            return self.blastSplashDamage
            
        case .splatanaVertical:
            return self.damageSplatanaVertical.toDouble()
            
        case .splatanaVerticalDirect:
            return self.damageSplatanaVerticalDirect.toDouble()
            
        case .splatanaHorizontal:
            return self.damageSplatanaHorizontal.toDouble()
            
        case .splatanaHorizontalDirect:
            return self.damageSplatanaHorizontalDirect.toDouble()
            
        case .splashMax:
            return self.swingUnitGroupDamageMax.toDouble()
            
        case .splashMin:
            return self.swingUnitGroupDamageMin.toDouble()
            
        case .splashVerticalMax:
            return self.verticalSwingUnitGroupDamageMax.toDouble()
            
        case .splashVerticalMin:
            return self.verticalSwingUnitGroupDamageMin.toDouble()
            
        case .splashHorizontalMax:
            return self.wideSwingUnitGroupDamageMax.toDouble()
            
        case .splashHorizontalMin:
            return self.wideSwingUnitGroupDamageMin.toDouble()
            
        case .rollOver:
            return self.bodyDamage.toDouble()
            
        case .secondaryModeMax:
            return self.variableDamageMax.toDouble()
            
        case .secondaryModeMin:
            return self.variableDamageMin.toDouble()
            
        case .distance:
            return self.blastDamageDistance
            
        default:
            return nil
        }
    }
    
    /// Returns the proper value for a specified ``ShootingRunSpeedType``
    /// - Parameter type: A type of shooting run speed
    /// - Returns: The associated property to `type`; can be `nil` if the property is `nil`
    public func shootingRunSpeed(for type: ShootingRunSpeedType) -> Double? {
        switch type {
        case .moveSpeed:
            return self.moveSpeed
        case .moveSpeedCharge:
            return self.moveSpeedCharge
        case .moveSpeedFullCharge:
            return self.moveSpeedFullCharge
        case .moveSpeedVariable:
            return self.moveSpeedVariable
        }
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
