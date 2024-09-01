//
//  Localization.swift
//  Splatalyzer
//
//  Created by Christopher Engelbart on 8/31/24.
//

import Foundation

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
    
    func chooseLocalization() -> Language? {
        let data = UserDefaults.standard.object(forKey: "AppleLanguages") as! Array<String>
        let lang = data.first!
        
        switch lang {
        case "de":
            return self.de
            
        case "en":
            return self.en
            
        case "es":
            return self.esEU
            
        case "es-419":
            return self.esUS
            
        case "fr":
            return self.frEU
            
        case "fr-CA":
            return self.frUS
            
        case "it":
            return self.it
            
        case "ja":
            return self.jp
            
        case "ko":
            return self.ko
            
        case "nl":
            return self.nl
            
        case "ru":
            return self.ru
            
        case "zh-Hans":
            return self.zhCN
            
        case "zh-Hant":
            return self.zhTW
            
        default:
            return nil
        }
    }
}
