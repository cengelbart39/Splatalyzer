//
//  TestHelper.swift
//
//
//  Created by Christopher Engelbart on 3/2/24.
//

@testable import Splatalyzer
import Foundation

/// A helper structure that contains functions that prepares certain data for use in tests.
///
/// These are typically used when certain data is needed as parameters for certain functions or strcutures.
struct TestHelper {
    static let localizationUrl = Bundle.module.url(forResource: "localizations", withExtension: "json")!
    
    static func getMainData(for weapon: MainWeapon, with mainInfo: WeaponInfoMain) throws -> MainWeaponData {
    let service = JSONService()
    
    switch weapon.type {
    case .blaster:
        let blaster = try service.decode(
            Blaster.self,
            from: "Weapon\(weapon.fileName()).game__GameParameterTable")
        
        let infoItem = mainInfo.getItem(for: weapon)!
        
        let mainData = MainWeaponData(weaponInfo: infoItem, container: blaster)
        
        return mainData
        
    case .brella:
        let brella = try service.decode(
            Brella.self,
            from: "Weapon\(weapon.fileName()).game__GameParameterTable")
        
        let infoItem = mainInfo.getItem(for: weapon)!
        
        let mainData = MainWeaponData(weaponInfo: infoItem, container: brella)
        
        return mainData
        
    case .brush:
        let brush = try service.decode(
            Brush.self,
            from: "Weapon\(weapon.fileName()).game__GameParameterTable")
        
        let infoItem = mainInfo.getItem(for: weapon)!
        
        let mainData = MainWeaponData(weaponInfo: infoItem, container: brush)
        
        return mainData
        
    case .charger:
        let charger = try service.decode(
            Charger.self,
            from: "Weapon\(weapon.fileName()).game__GameParameterTable")
        
        let infoItem = mainInfo.getItem(for: weapon)!
        
        let mainData = MainWeaponData(weaponInfo: infoItem, container: charger)
        
        return mainData
        
    case .dualie:
        let dualie = try service.decode(
            Dualie.self,
            from: "Weapon\(weapon.fileName()).game__GameParameterTable")
        
        let infoItem = mainInfo.getItem(for: weapon)!
        
        let mainData = MainWeaponData(weaponInfo: infoItem, container: dualie)
        
        return mainData
        
    case .roller:
        let roller = try service.decode(
            Roller.self,
            from: "Weapon\(weapon.fileName()).game__GameParameterTable")
        
        let infoItem = mainInfo.getItem(for: weapon)!
        
        let mainData = MainWeaponData(weaponInfo: infoItem, container: roller)
        
        return mainData
        
    case .shooter:
        let shooter = try service.decode(
            Shooter.self,
            from: "Weapon\(weapon.fileName()).game__GameParameterTable")
        
        let infoItem = mainInfo.getItem(for: weapon)!
        
        let mainData = MainWeaponData(weaponInfo: infoItem, container: shooter)
        
        return mainData
        
    case .slosher:
        let slosher = try service.decode(
            Slosher.self,
            from: "Weapon\(weapon.fileName()).game__GameParameterTable")
        
        let infoItem = mainInfo.getItem(for: weapon)!
        
        let mainData = MainWeaponData(weaponInfo: infoItem, container: slosher)
        
        return mainData
        
    case .splatana:
        let splatana = try service.decode(
            Splatana.self,
            from: "Weapon\(weapon.fileName()).game__GameParameterTable")
        
        let infoItem = mainInfo.getItem(for: weapon)!
        
        let mainData = MainWeaponData(weaponInfo: infoItem, container: splatana)
        
        return mainData
        
    case .splatling:
        let splatling = try service.decode(
            Splatling.self,
            from: "Weapon\(weapon.fileName()).game__GameParameterTable")
        
        let infoItem = mainInfo.getItem(for: weapon)!
        
        let mainData = MainWeaponData(weaponInfo: infoItem, container: splatling)
        
        return mainData
        
    case .stringer:
        let stringer = try service.decode(
            Stringer.self,
            from: "Weapon\(weapon.fileName()).game__GameParameterTable")
        
        let infoItem = mainInfo.getItem(for: weapon)!
        
        let mainData = MainWeaponData(weaponInfo: infoItem, container: stringer)
        
        return mainData
    }

}
    
    static func getSubData(for weapon: SubWeapon) throws -> SubWeaponData {
        let service = JSONService()
        
        switch weapon {
        case .angleShooter:
            let angleShooter = try service.decode(
                AngleShooter.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: angleShooter)
            
            return subData
            
        case .autobomb:
            let autobomb = try service.decode(
                Autobomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: autobomb)
            
            return subData
            
        case .burstBomb:
            let burstBomb = try service.decode(
                BurstBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: burstBomb)
            
            return subData
            
        case .curlingBomb:
            let curlingBomb = try service.decode(
                CurlingBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: curlingBomb)
            
            return subData
            
        case .fizzyBomb:
            let fizzyBomb = try service.decode(
                FizzyBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: fizzyBomb)
            
            return subData
            
        case .inkMine:
            let inkMine = try service.decode(
                InkMine.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: inkMine)
            
            return subData
            
        case .pointSensor:
            let pointSensor = try service.decode(
                PointSensor.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: pointSensor)
            
            return subData
            
        case .splashWall:
            let splashWall = try service.decode(
                SplashWall.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: splashWall)
            
            return subData
            
        case .splatBomb:
            let splatBomb = try service.decode(
                SplatBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: splatBomb)
            
            return subData
            
        case .sprinkler:
            let sprinkler = try service.decode(
                Sprinkler.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: sprinkler)
            
            return subData
            
        case .squidBeakon:
            let squidBeakon = try service.decode(
                SquidBeakon.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let playerInfo = try service.decode(Player.self, from: "SplPlayer.game__GameParameterTable")
            
            let subData = SubWeaponData(container: squidBeakon, playerInfo: playerInfo)
            
            return subData
            
        case .suctionBomb:
            let suctionBomb = try service.decode(
                SuctionBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: suctionBomb)
            
            return subData
            
        case .torpedo:
            let torpedo = try service.decode(
                Torpedo.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: torpedo)
            
            return subData
            
        case .toxicMist:
            let toxicMist = try service.decode(
                ToxicMist.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: toxicMist)
            
            return subData
        }

    }

    static func getSpecialData(for weapon: SpecialWeapon) throws -> SpecialWeaponData {
        
        let service = JSONService()
        
        switch weapon {
        case .bigBubbler:
            let gameParams = try service.decode(BigBubbler.self, from: "WeaponSpGreatBarrier.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .booyahBomb:
            let gameParams = try service.decode(BooyahBomb.self, from: "WeaponSpNiceBall.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .crabTank:
            let gameParams = try service.decode(CrabTank.self, from: "WeaponSpChariot.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .inkStorm:
            let gameParams = try service.decode(InkStorm.self, from: "WeaponSpInkStorm.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .inkVac:
            let gameParams = try service.decode(InkVac.self, from: "WeaponSpBlower.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .inkjet:
            let gameParams = try service.decode(Inkjet.self, from: "WeaponSpJetpack.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .killerWail51:
            let gameParams = try service.decode(KillerWail51.self, from: "WeaponSpMicroLaser.game__GameParameterTable")

            return SpecialWeaponData(container: gameParams)
            
        case .krakenRoyale:
            let gameParams = try service.decode(KrakenRoyale.self, from: "WeaponSpCastle.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .reefslider:
            let gameParams = try service.decode(Reefslider.self, from: "WeaponSpSkewer.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .splattercolorScreen:
            let gameParams = try service.decode(SplattercolorScreen.self, from: "WeaponSpChimney.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .superChump:
            let gameParams = try service.decode(SuperChump.self, from: "WeaponSpFirework.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .tacticooler:
            let gameParams = try service.decode(Tacticooler.self, from: "WeaponSpEnergyStand.game__GameParameterTable")

            return SpecialWeaponData(container: gameParams)
            
        case .tentaMissiles:
            let gameParams = try service.decode(TentaMissiles.self, from: "WeaponSpMultiMissile.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .tripleInkstrike:
            let gameParams = try service.decode(TripleInkstrike.self, from: "WeaponSpTripleTornado.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .tripleSplashdown:
            let gameParams = try service.decode(TripleSplashdown.self, from: "WeaponSpPogo.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .trizooka:
            let gameParams = try service.decode(Trizooka.self, from: "WeaponSpUltraShot.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .ultraStamp:
            let gameParams = try service.decode(UltraStamp.self, from: "WeaponSpUltraStamp.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .waveBreaker:
            let gameParams = try service.decode(WaveBreaker.self, from: "WeaponSpShockSonar.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
            
        case .zipcaster:
            let gameParams = try service.decode(Zipcaster.self, from: "WeaponSpSuperHook.game__GameParameterTable")
            return SpecialWeaponData(container: gameParams)
        }
    }

    static func getFullInkTankOptions(for weapon: MainWeapon, with mainInfo: WeaponInfoMain) throws -> [Int : [InkTankOption]] {
        
        guard let mainItem = mainInfo.getItem(for: weapon),
              let subWeapon = mainItem.subWeapon.toSubWeapon() else {
            return [:]
        }
        
        do {
            let mainData = try TestHelper.getMainData(for: weapon, with: mainInfo)
            let subData = try TestHelper.getSubData(for: subWeapon)
            
            return StatHelper.fullInkTankOptions(ap: AbilityPoints(), mainInfo: mainData, subInfo: subData)
            
        } catch {
            return [:]
        }
    }
}

struct Localization: Codable {
    let de: Language
    let en: Language
    let esUS: Language
    let esEU: Language
    let frUS: Language
    let frEU: Language
    let it: Language
    let jp: Language
    let ko: Language
    let nl: Language
    let ru: Language
    let zhCN: Language
    let zhTW: Language
    
    enum CodingKeys: String, CodingKey {
        case de = "EUde"
        case en = "USen"
        case esUS = "USes"
        case esEU = "EUes"
        case frUS = "USfr"
        case frEU = "EUfr"
        case it = "EUit"
        case jp = "JPjp"
        case ko = "KOko"
        case nl = "EUnl"
        case ru = "EUru"
        case zhCN = "CNzh"
        case zhTW = "TWzh"
    }
    
    struct Language: Codable {
        let mainWeapons: [String : String]
        let subWeapons: [String : String]
        let specialWeapons: [String : String]
        let abilities: [String : String]
        let classes: [String : String]
        
        enum CodingKeys: String, CodingKey {
            case mainWeapons = "CommonMsg/Weapon/WeaponName_Main"
            case subWeapons = "CommonMsg/Weapon/WeaponName_Sub"
            case specialWeapons = "CommonMsg/Weapon/WeaponName_Special"
            case abilities = "CommonMsg/Gear/GearPowerName"
            case classes = "CommonMsg/Weapon/WeaponTypeName"
        }
    }
    

}
