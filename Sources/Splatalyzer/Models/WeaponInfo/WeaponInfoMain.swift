//
//  WeaponInfoMain.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct WeaponInfoMain: Codable, Identifiable {
    let debugDispColumn: Int
    let debugDispOrder: Int
    let defaultDamgeRate: DamageRateInfo
    let defaultHitEffector: MainHitEffectorType
    let extraDamageRateInfo: [MainExtraDamageRateInfo]
    let extraHitEffectorInfo: [MainExtraHitEffectorInfo]
    let gameActor: String
    let id: Int
    let isCoopRare: Bool
    let lObjParam: String
    let label: String
    let lockerContentInfo: [String]
    let matchingId: Int
    let npcActor: String
    let range: Double
    let rewardLv2: String
    let rewardLv3: String
    let rewardLv4: String
    let rewardLv5: String
    let season: Int
    let shopPrice: Int
    let shopUnlockRank: Int
    let specActor: String
    let specialPoint: Int
    let specialWeapon: SpecialWeapon
    let subWeapon: SubWeapon
    let type: ModeType
    let uiParam: [UIParam]
    let weaponInfoForCoop: String
    let rowId: MainRowId
    
    enum CodingKeys: String, CodingKey {
        case debugDispColumn = "DebugDispColumn"
        case debugDispOrder = "DebugDispOrder"
        case defaultDamgeRate = "DefaultDamageRateInfoRow"
        case defaultHitEffector = "DefaultHitEffectorType"
        case extraDamageRateInfo = "ExtraDamageRateInfoRowSet"
        case extraHitEffectorInfo = "ExtraHitEffectorInfoSet"
        case gameActor = "GameActor"
        case id = "Id"
        case isCoopRare = "IsCoopRare"
        case lObjParam = "LObjParam"
        case label = "Label"
        case lockerContentInfo = "LockerContentInfo"
        case matchingId = "MatchingId"
        case npcActor = "NpcActor"
        case range = "Range"
        case rewardLv2 = "RewardLv2"
        case rewardLv3 = "RewardLv3"
        case rewardLv4 = "RewardLv4"
        case rewardLv5 = "RewardLv5"
        case season = "Season"
        case shopPrice = "ShopPrice"
        case shopUnlockRank = "ShopUnlockRank"
        case specActor = "SpecActor"
        case specialPoint = "SpecialPoint"
        case specialWeapon = "SpecialWeapon"
        case subWeapon = "SubWeapon"
        case type = "Type"
        case uiParam = "UIParam"
        case weaponInfoForCoop = "WeaponInfoForCoop"
        case rowId = "__RowId"
    }
}

struct MainExtraDamageRateInfo: Codable {
    let damageRateInfo: DamageRateInfo
    let extraInfo: ExtraInfo
    
    enum CodingKeys: String, CodingKey {
        case damageRateInfo = "DamageRateInfoRow"
        case extraInfo = "ExtraInfo"
    }
}

struct MainExtraHitEffectorInfo: Codable {
    let extraInfo: ExtraInfo
    let hitEffectorType: MainHitEffectorType
    
    enum CodingKeys: String, CodingKey {
        case extraInfo = "ExtraInfo"
        case hitEffectorType = "HitEffectorType"
    }
}

struct UIParam: Codable {
    let type: UIParamType
    let value: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "Type"
        case value = "Value"
    }
}

enum MainHitEffectorType: Codable {
    case blaster
    case blasterExtraBombCore
    case blasterExtraBombCoreWeak
    case charger
    case chargerFullCharge
    case chargerPaintSplash
    case `default`
    case maneuver
    case roller
    case rollerNoDamage
    case saber
    case saberChargeShot
    case saberChargeSlash
    case saberShot
    case saberSlash
    case shelter
    case shelterCanopy
    case shooter
    case shooterCriticalHit
    case slosher
    case slosherBathtub
    case slosherBearLeader
    case slosherBig
    case slosherLauncherFollower
    case slosherLauncherLeader
    case slosherWashtubBombCore
    case spinner
    
    enum CodingKeys: String, CodingKey {
        case blaster = "Blaster"
        case blasterExtraBombCore = "Blaster_ExtraBombCore"
        case blasterExtraBombCoreWeak = "Blaster_ExtraBombCoreWeak"
        case charger = "Charger"
        case chargerFullCharge = "Charger_FullCharge"
        case chargerPaintSplash = "Charger_PaintSplash"
        case `default` = "Default"
        case maneuver = "Maneuver"
        case roller = "Roller"
        case rollerNoDamage = "Roller_NoDamage"
        case saber = "Saber"
        case saberChargeShot = "Saber_ChargeShot"
        case saberChargeSlash = "Saber_ChargeSlash"
        case saberShot = "Saber_Shot"
        case saberSlash = "Saber_Slash"
        case shelter = "Shelter"
        case shelterCanopy = "Shelter_Canopy"
        case shooter = "Shooter"
        case shooterCriticalHit = "Shooter_CriticalHit"
        case slosher = "Slosher"
        case slosherBathtub = "Slosher_Bathtub"
        case slosherBearLeader = "Slosher_BearLeader"
        case slosherBig = "Slosher_Big"
        case slosherLauncherFollower = "Slosher_LauncherFollower"
        case slosherLauncherLeader = "Slosher_LauncherLeader"
        case slosherWashtubBombCore = "Slosher_WashtubBombCore"
        case spinner = "Spinner"
    }
}

enum UIParamType: Codable {
    case blaze
    case charge
    case defence
    case explosion
    case mobility
    case paintSpeed
    case power
    case range
    case weight
    
    enum CodingKeys: String, CodingKey {
        case blaze = "Blaze"
        case charge = "Charge"
        case defence = "Defence"
        case explosion = "Explosion"
        case mobility = "Mobility"
        case paintSpeed = "PaintSpeed"
        case power = "Power"
        case range = "Range"
        case weight = "Weight"
    }
}

enum SubWeapon: Codable {
    case beacon
    case bombCurling
    case bombFizzy
    case bombQuick
    case bombRobot
    case bombSplash
    case bombSuction
    case bombTorpedo
    case lineMarker
    case none
    case pointSensor
    case poisonMist
    case shield
    case sprinkler
    case trap
    
    enum CodingKeys: String, CodingKey {
        case beacon = "Work/Gyml/Beacon.spl__WeaponInfoSub.gyml"
        case bombCurling = "Work/Gyml/Bomb_Curling.spl__WeaponInfoSub.gyml"
        case bombFizzy = "Work/Gyml/Bomb_Fizzy.spl__WeaponInfoSub.gyml"
        case bombQuick = "Work/Gyml/Bomb_Quick.spl__WeaponInfoSub.gyml"
        case bombRobot = "Work/Gyml/Bomb_Robot.spl__WeaponInfoSub.gyml"
        case bombSplash = "Work/Gyml/Bomb_Splash.spl__WeaponInfoSub.gyml"
        case bombSuction = "Work/Gyml/Bomb_Suction.spl__WeaponInfoSub.gyml"
        case bombTorpedo = "Work/Gyml/Bomb_Torpedo.spl__WeaponInfoSub.gyml"
        case lineMarker = "Work/Gyml/LineMarker.spl__WeaponInfoSub.gyml"
        case none = ""
        case pointSensor = "Work/Gyml/PointSensor.spl__WeaponInfoSub.gyml"
        case poisonMist = "Work/Gyml/PoisonMist.spl__WeaponInfoSub.gyml"
        case shield = "Work/Gyml/Shield.spl__WeaponInfoSub.gyml"
        case sprinkler = "Work/Gyml/Sprinkler.spl__WeaponInfoSub.gyml"
        case trap = "Work/Gyml/Trap.spl__WeaponInfoSub.gyml"
    }
    
    func toSubRowId() -> SubRowId {
        switch self {
        case .beacon:
            return .beacon
            
        case .bombCurling:
            return .bombCurling
            
        case .bombFizzy:
            return .bombFizzy
            
        case .bombQuick:
            return .bombQuick
            
        case .bombRobot:
            return .bombRobot
            
        case .bombSplash:
            return .bombSplash
            
        case .bombSuction:
            return .bombSuction
            
        case .bombTorpedo:
            return .bombTorpedo
            
        case .lineMarker:
            return .lineMarker
            
        case .none:
            return .none
            
        case .pointSensor:
            return .pointSensor
            
        case .poisonMist:
            return .poisonMist
            
        case .shield:
            return .shield
            
        case .sprinkler:
            return .sprinkler
            
        case .trap:
            return .trap
        }
    }
}

enum SpecialWeapon: Codable {
    case blower
    case castle
    case chariot
    case chimney
    case energyStand
    case firework
    case gachihoko
    case greatBarrier
    case inkStorm
    case jetpack
    case microLaser
    case multiMissile
    case niceBall
    case none
    case pogo
    case shockSonar
    case skewer
    case superHook
    case superLanding
    case tripleTornado
    case ultraShot
    case ultraStamp
    
    enum CodingKeys: String, CodingKey {
        case blower = "Work/Gyml/SpBlower.spl__WeaponInfoSpecial.gyml"
        case castle = "Work/Gyml/SpCastle.spl__WeaponInfoSpecial.gyml"
        case chariot = "Work/Gyml/SpChariot.spl__WeaponInfoSpecial.gyml"
        case chimney = "Work/Gyml/SpChimney.spl__WeaponInfoSpecial.gyml"
        case energyStand = "Work/Gyml/SpEnergyStand.spl__WeaponInfoSpecial.gyml"
        case firework = "Work/Gyml/SpFirework.spl__WeaponInfoSpecial.gyml"
        case gachihoko = "Work/Gyml/SpGachihoko.spl__WeaponInfoSpecial.gyml"
        case greatBarrier = "Work/Gyml/SpGreatBarrier.spl__WeaponInfoSpecial.gyml"
        case inkStorm = "Work/Gyml/SpInkStorm.spl__WeaponInfoSpecial.gyml"
        case jetpack = "Work/Gyml/SpJetpack.spl__WeaponInfoSpecial.gyml"
        case microLaser = "Work/Gyml/SpMicroLaser.spl__WeaponInfoSpecial.gyml"
        case multiMissile = "Work/Gyml/SpMultiMissile.spl__WeaponInfoSpecial.gyml"
        case niceBall = "Work/Gyml/SpNiceBall.spl__WeaponInfoSpecial.gyml"
        case none = ""
        case pogo = "Work/Gyml/SpPogo.spl__WeaponInfoSpecial.gyml"
        case shockSonar = "Work/Gyml/SpShockSonar.spl__WeaponInfoSpecial.gyml"
        case skewer = "Work/Gyml/SpSkewer.spl__WeaponInfoSpecial.gyml"
        case superHook = "Work/Gyml/SpSuperHook.spl__WeaponInfoSpecial.gyml"
        case superLanding = "Work/Gyml/SpSuperLanding.spl__WeaponInfoSpecial.gyml"
        case tripleTornado = "Work/Gyml/SpTripleTorando.spl__WeaponInfoSpecial.gyml"
        case ultraShot = "Work/Gyml/SpUltraShot.spl__WeaponInfoSpecial.gyml"
        case ultraStamp = "Work/Gyml/SpUltraStamp.spl__WeaponInfoSpecial.gyml"
    }
    
    func toSpecialRowId() -> SpecialRowId {
        switch self {
        case .blower:
            return .blower
            
        case .castle:
            return .castle
            
        case .chariot:
            return .chariot
            
        case .chimney:
            return .chimney
            
        case .energyStand:
            return .energyStand
            
        case .firework:
            return .firework
            
        case .gachihoko:
            return .gachihoko
            
        case .greatBarrier:
            return .greatBarrier
            
        case .inkStorm:
            return .inkStorm
            
        case .jetpack:
            return .jetpack
            
        case .microLaser:
            return .microLaser
            
        case .multiMissile:
            return .multiMissile
            
        case .niceBall:
            return .niceBall
            
        case .none:
            return .none
            
        case .pogo:
            return .pogo
            
        case .shockSonar:
            return .shockSonar
            
        case .skewer:
            return .skewer
            
        case .superHook:
            return .superHook
            
        case .superLanding:
            return .superLanding
            
        case .tripleTornado:
            return .tripleTornado
            
        case .ultraShot:
            return .ultraShot
            
        case .ultraStamp:
            return .ultraStamp
        }
    }
}
