//
//  WeaponInfoMain.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

typealias WeaponInfoMain = [WeaponInfoMainItem]

struct WeaponInfoMainItem: Codable, Identifiable {
    let debugDispColumn: Int
    let debugDispOrder: Int
    let defaultDamgeRate: DamageRateInfo
    let defaultHitEffector: HitEffectorType
    let extraDamageRateInfo: [ExtraDamageRateInfo]
    let extraHitEffectorInfo: [ExtraHitEffectorInfo]
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

struct UIParam: Codable {
    let type: UIParamType
    let value: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "Type"
        case value = "Value"
    }
}

enum UIParamType: String, Codable {
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

enum SubWeapon: String, Codable {
    case squidBeakon = "Work/Gyml/Beacon.spl__WeaponInfoSub.gyml"
    case curlingBomb = "Work/Gyml/Bomb_Curling.spl__WeaponInfoSub.gyml"
    case fizzyBomb = "Work/Gyml/Bomb_Fizzy.spl__WeaponInfoSub.gyml"
    case burstBomb = "Work/Gyml/Bomb_Quick.spl__WeaponInfoSub.gyml"
    case autobomb = "Work/Gyml/Bomb_Robot.spl__WeaponInfoSub.gyml"
    case splatBomb = "Work/Gyml/Bomb_Splash.spl__WeaponInfoSub.gyml"
    case suctionBomb = "Work/Gyml/Bomb_Suction.spl__WeaponInfoSub.gyml"
    case torpedo = "Work/Gyml/Bomb_Torpedo.spl__WeaponInfoSub.gyml"
    case angleShooter = "Work/Gyml/LineMarker.spl__WeaponInfoSub.gyml"
    case none = ""
    case pointSensor = "Work/Gyml/PointSensor.spl__WeaponInfoSub.gyml"
    case toxicMist = "Work/Gyml/PoisonMist.spl__WeaponInfoSub.gyml"
    case splashWall = "Work/Gyml/Shield.spl__WeaponInfoSub.gyml"
    case sprinkler = "Work/Gyml/Sprinkler.spl__WeaponInfoSub.gyml"
    case inkMine = "Work/Gyml/Trap.spl__WeaponInfoSub.gyml"
    
    func toSubRowId() -> SubRowId {
        switch self {
        case .squidBeakon:
            return .squidBeakon
            
        case .curlingBomb:
            return .curlingBomb
            
        case .fizzyBomb:
            return .fizzyBomb
            
        case .burstBomb:
            return .burstBomb
            
        case .autobomb:
            return .autobomb
            
        case .splatBomb:
            return .splatBomb
            
        case .suctionBomb:
            return .suctionBomb
            
        case .torpedo:
            return .torpedo
            
        case .angleShooter:
            return .angleShooter
            
        case .none:
            return .none
            
        case .pointSensor:
            return .pointSensor
            
        case .toxicMist:
            return .toxicMist
            
        case .splashWall:
            return .splashWall
            
        case .sprinkler:
            return .sprinkler
            
        case .inkMine:
            return .inkMine
        }
    }
}

enum SpecialWeapon: String, Codable {
    case inkVac = "Work/Gyml/SpBlower.spl__WeaponInfoSpecial.gyml"
    case krakenRoyale = "Work/Gyml/SpCastle.spl__WeaponInfoSpecial.gyml"
    case crabTank = "Work/Gyml/SpChariot.spl__WeaponInfoSpecial.gyml"
    case splattercolorScreen = "Work/Gyml/SpChimney.spl__WeaponInfoSpecial.gyml"
    case tacticooler = "Work/Gyml/SpEnergyStand.spl__WeaponInfoSpecial.gyml"
    case superChump = "Work/Gyml/SpFirework.spl__WeaponInfoSpecial.gyml"
    case rainmaker = "Work/Gyml/SpGachihoko.spl__WeaponInfoSpecial.gyml"
    case bigBubbler = "Work/Gyml/SpGreatBarrier.spl__WeaponInfoSpecial.gyml"
    case inkStorm = "Work/Gyml/SpInkStorm.spl__WeaponInfoSpecial.gyml"
    case inkjet = "Work/Gyml/SpJetpack.spl__WeaponInfoSpecial.gyml"
    case killerWail51 = "Work/Gyml/SpMicroLaser.spl__WeaponInfoSpecial.gyml"
    case tentaMissiles = "Work/Gyml/SpMultiMissile.spl__WeaponInfoSpecial.gyml"
    case booyahBomb = "Work/Gyml/SpNiceBall.spl__WeaponInfoSpecial.gyml"
    case none = ""
    case tripleSplashdown = "Work/Gyml/SpPogo.spl__WeaponInfoSpecial.gyml"
    case waveBreaker = "Work/Gyml/SpShockSonar.spl__WeaponInfoSpecial.gyml"
    case reefslider = "Work/Gyml/SpSkewer.spl__WeaponInfoSpecial.gyml"
    case zipcaster = "Work/Gyml/SpSuperHook.spl__WeaponInfoSpecial.gyml"
    case splashdown = "Work/Gyml/SpSuperLanding.spl__WeaponInfoSpecial.gyml"
    case tripleInkstrike = "Work/Gyml/SpTripleTornado.spl__WeaponInfoSpecial.gyml"
    case trizooka = "Work/Gyml/SpUltraShot.spl__WeaponInfoSpecial.gyml"
    case ultraStamp = "Work/Gyml/SpUltraStamp.spl__WeaponInfoSpecial.gyml"
    
    func toSpecialRowId() -> SpecialRowId {
        switch self {
        case .inkVac:
            return .inkVac
            
        case .krakenRoyale:
            return .krakenRoyale
            
        case .crabTank:
            return .crabTank
            
        case .splattercolorScreen:
            return .splattercolorScreen
            
        case .tacticooler:
            return .tacticooler
            
        case .superChump:
            return .superChump
            
        case .rainmaker:
            return .rainmaker
            
        case .bigBubbler:
            return .bigBubbler
            
        case .inkStorm:
            return .inkStorm
            
        case .inkjet:
            return .inkjet
            
        case .killerWail51:
            return .killerWail51
            
        case .tentaMissiles:
            return .tentaMissiles
            
        case .booyahBomb:
            return .booyahBomb
            
        case .none:
            return .none
            
        case .tripleSplashdown:
            return .tripleSplashdown
            
        case .waveBreaker:
            return .waveBreaker
            
        case .reefslider:
            return .reefslider
            
        case .zipcaster:
            return .zipcaster
            
        case .splashdown:
            return .splashdown
            
        case .tripleInkstrike:
            return .tripleInkstrike
            
        case .trizooka:
            return .trizooka
            
        case .ultraStamp:
            return .ultraStamp
        }
    }
}
