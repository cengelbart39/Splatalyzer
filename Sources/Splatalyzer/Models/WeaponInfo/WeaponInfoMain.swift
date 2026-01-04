//
//  WeaponInfoMain.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

/// Represents the contents of `WeaponInfoMain.json`
public typealias WeaponInfoMain = [WeaponInfoMainItem]

extension WeaponInfoMain {
    
    /// Gets the ``WeaponInfoMainItem`` that is associated with a ``MainWeapon``
    /// - Parameter weapon: A specified main weapon
    /// - Returns: The associated `WeaponInfoMainItem`; can return `nil` if a `MainWeapon` is not found.
    public func getItem(for weapon: MainWeapon) -> WeaponInfoMainItem? {
        for item in self {
            if item.rowId.rawValue == weapon.rawValue {
                return item
            }
        }
        
        return nil
    }
}

/// Represents a single item in ``WeaponInfoMain``
public struct WeaponInfoMainItem: Codable, Identifiable, Sendable {
    public let debugDispColumn: Int
    public let debugDispOrder: Int
    public let defaultDamgeRate: DamageRateInfo
    public let defaultHitEffector: HitEffectorType
    public let extraDamageRateInfo: [ExtraDamageRateInfo]
    public let extraHitEffectorInfo: [ExtraHitEffectorInfo]
    public let gameActor: String
    public let id: Int
    public let isCoopRare: Bool
    public let lObjParam: String
    public let label: String
    public let lockerContentInfo: [String]
    public let lockerModelColor: ABGRData
    public let matchingId: Int
    public let npcActor: String
    public let range: Double
    public let rewardLv2: String
    public let rewardLv3: String
    public let rewardLv4: String?
    public let rewardLv5: String?
    public let season: Int
    public let shopPrice: Int
    public let shopUnlockRank: Int
    public let specActor: String
    public let specialPoint: Int
    public let specialWeapon: SpecialWeaponPath
    public let subWeapon: SubWeaponPath
    public let type: ModeType
    public let uiParam: [UIParam]
    public let weaponInfoForCoop: String
    public let rowId: MainRowId
    
    public enum CodingKeys: String, CodingKey {
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
        case lockerModelColor = "LockerModelColor"
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

extension WeaponInfoMainItem {
    public struct UIParam: Codable, Sendable {
        public let type: UIParamType
        public let value: Int
        
        public enum CodingKeys: String, CodingKey {
            case type = "Type"
            case value = "Value"
        }
    }
    
    public enum UIParamType: String, Codable, Sendable {
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
    
extension WeaponInfoMainItem {
    public enum SubWeaponPath: String, Codable, Sendable {
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
        
        /// Converts a value to ``SubWeapon``
        /// - Returns: The associated sub weapon; can return `nil` in the case of `.none`.
        public func toSubWeapon() -> SubWeapon? {
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
                
            default:
                return nil
            }
        }
    }
}

extension WeaponInfoMainItem {
    public enum SpecialWeaponPath: String, Codable, Sendable {
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
        
        /// Converts a value to ``SpecialWeapon``
        /// - Returns: The associated special weapon; can return `nil` in the case of `.none`.
        public func toSpecialWeapon() -> SpecialWeapon? {
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
                
            case .tripleSplashdown:
                return .tripleSplashdown
                
            case .waveBreaker:
                return .waveBreaker
                
            case .reefslider:
                return .reefslider
                
            case .zipcaster:
                return .zipcaster
                
            case .tripleInkstrike:
                return .tripleInkstrike
                
            case .trizooka:
                return .trizooka
                
            case .ultraStamp:
                return .ultraStamp
                
            default:
                return nil
            }
        }
    }
}
