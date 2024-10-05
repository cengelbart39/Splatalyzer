//
//  LocalizationHandler.swift
//
//
//  Created by Christopher Engelbart on 3/6/24.
//

import Foundation

fileprivate enum Locale: String, Codable {
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
    case zhCNSimplified = "CNzh"
    case zhTWTraditional = "TWzh"
}

fileprivate struct Localization: Codable {
    var mainWeapons: [String : String] = [:]
    var subWeapons: [String : String] = [:]
    var specialWeapons: [String : String] = [:]
    var abilities: [String : String] = [:]
    var classes: [String : String] = [:]
    
    enum CodingKeys: String, CodingKey {
        case mainWeapons = "CommonMsg/Weapon/WeaponName_Main"
        case subWeapons = "CommonMsg/Weapon/WeaponName_Sub"
        case specialWeapons = "CommonMsg/Weapon/WeaponName_Special"
        case abilities = "CommonMsg/Gear/GearPowerName"
        case classes = "CommonMsg/Weapon/WeaponTypeName"
    }
    
    func isValid() -> Bool {
        return !mainWeapons.isEmpty && !subWeapons.isEmpty && !specialWeapons.isEmpty && !abilities.isEmpty && !classes.isEmpty
    }
    
    func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(mainWeapons, forKey: .mainWeapons)
        try container.encode(subWeapons, forKey: .subWeapons)
        try container.encode(specialWeapons, forKey: .specialWeapons)
        try container.encode(classes, forKey: .classes)
        try container.encode(abilities, forKey: .abilities)
    }
}

fileprivate let inputFileNames = [
    Locale.de : "EUde_full_unicode.json",
    Locale.en : "USen_full_unicode.json",
    Locale.esEU : "EUes_full_unicode.json",
    Locale.esUS : "USes_full_unicode.json",
    Locale.frEU : "EUfr_full_unicode.json",
    Locale.frUS : "USfr_full_unicode.json",
    Locale.it : "EUit_full_unicode.json",
    Locale.jp : "JPja_full_unicode.json",
    Locale.ko : "KRko_full_unicode.json",
    Locale.nl : "EUnl_full_unicode.json",
    Locale.ru : "EUru_full_unicode.json",
    Locale.zhCNSimplified : "CNzh_full_unicode.json",
    Locale.zhTWTraditional : "TWzh_full_unicode.json"
]

fileprivate var output = [Locale : Localization]()

let watchWords = ["Coop", "Msn", "Mission", "Sdodr", "Rival", "Big_Coop", "Free", "SalmonBuddy", "Gachihoko", "IkuraShoot", "SuperLanding"]

for (locale, name) in inputFileNames {
    do {
        let url = URL(fileURLWithPath: "./input/\(name)")
        let data = try Data(contentsOf: url, options: .alwaysMapped)
        var object = try JSONDecoder().decode(Localization.self, from: data)
        
        object.mainWeapons = object.mainWeapons.filter { key, _ in
            !watchWords.contains(where: String(key).contains)
        }
        
        object.subWeapons = object.subWeapons.filter { key, _ in
            !watchWords.contains(where: String(key).contains)
        }
        
        object.specialWeapons = object.specialWeapons.filter { key, _ in
            !watchWords.contains(where: String(key).contains)
        }
        
        object.abilities = object.abilities.filter { key, _ in
            !watchWords.contains(where: String(key).contains)
        }
        
        object.classes = object.classes.filter { key, _ in
            !watchWords.contains(where: String(key).contains)
        }
        
        output[locale] = object
        print("\(locale) | Valid: \(object.isValid())")
        
    } catch {
        print("\(locale): \(error.localizedDescription)")
    }
}

fileprivate struct AllLocalizations: Encodable {
    let de: Localization
    let en: Localization
    let esUS: Localization
    let esEU: Localization
    let frUS: Localization
    let frEU: Localization
    let it: Localization
    let jp: Localization
    let ko: Localization
    let nl: Localization
    let ru: Localization
    let zhCNSimplified: Localization
    let zhTWTraditional: Localization
    
    enum CodingKeys: String, CodingKey, CaseIterable {
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
        case zhCNSimplified = "CNzh"
        case zhTWTraditional = "TWzh"
    }
    
    func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(de, forKey: .de)
        try container.encode(en, forKey: .en)
        try container.encode(esEU, forKey: .esEU)
        try container.encode(esUS, forKey: .esUS)
        try container.encode(frEU, forKey: .frEU)
        try container.encode(frUS, forKey: .frUS)
        try container.encode(it, forKey: .it)
        try container.encode(jp, forKey: .jp)
        try container.encode(ko, forKey: .ko)
        try container.encode(nl, forKey: .nl)
        try container.encode(ru, forKey: .ru)
        try container.encode(zhCNSimplified, forKey: .zhCNSimplified)
        try container.encode(zhTWTraditional, forKey: .zhTWTraditional)
    }
    
}

do {
    let localizations = AllLocalizations(
        de: output[.de]!,
        en: output[.en]!,
        esUS: output[.esUS]!,
        esEU: output[.esEU]!,
        frUS: output[.frUS]!,
        frEU: output[.frEU]!,
        it: output[.it]!,
        jp: output[.jp]!,
        ko: output[.ko]!,
        nl: output[.nl]!,
        ru: output[.ru]!,
        zhCNSimplified: output[.zhCNSimplified]!,
        zhTWTraditional: output[.zhTWTraditional]!
    )
    
    let encoder = JSONEncoder()
    encoder.outputFormatting = [.sortedKeys, .prettyPrinted, .withoutEscapingSlashes]
    
    let json = try encoder.encode(localizations)
    
    let filePath = "../Tests/SplatalyzerTests/Resources/localizations.json"
    let url = URL(fileURLWithPath: filePath)
    
    try json.write(to: url)
    
    print("localization.json successfully written.")
    
} catch {
    print(error.localizedDescription)
}
