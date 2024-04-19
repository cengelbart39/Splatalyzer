//
//  LocalizationTest.swift
//  
//
//  Created by Christopher Engelbart on 3/7/24.
//

import XCTest
@testable import Splatalyzer

final class LocalizationTest: XCTestCase {

    var localizationData: Localization!
    
    override func setUpWithError() throws {
        let data = try Data(contentsOf: TestHelper.localizationUrl)
        
        self.localizationData = try JSONDecoder().decode(Localization.self, from: data)
    }
    
    override func tearDown() {
        self.localizationData = nil
    }
    
    func test_Localization_mainWeapons() {
        let language = self.chooseLanguageData()!
        
        let pkgMain = MainWeapon.allCases
        let jsonMain = language.mainWeapons
        
        XCTAssertEqual(pkgMain.count, jsonMain.count)
        
        for (jsonKey, jsonMain) in jsonMain {
            if let mainWeapon = MainWeapon(rawValue: jsonKey) {
                XCTAssertEqual(mainWeapon.localized, jsonMain, "\(mainWeapon) localization")
                
            } else {
                XCTFail("Cannot find \(jsonKey) in MainWeapon")
            }
        }
    }
    
    func test_Localization_subWeapons() {
        let language = self.chooseLanguageData()!
        
        let pkgSub = SubWeapon.allCases
        let jsonSub = language.subWeapons
        
        XCTAssertEqual(pkgSub.count, jsonSub.count)
        
        for (jsonKey, jsonSub) in jsonSub {
            if let subWeapon = SubWeapon(rawValue: jsonKey) {
                XCTAssertEqual(subWeapon.localized, jsonSub, "\(subWeapon) localization")
                
            } else {
                XCTFail("Cannot find \(jsonKey) in SubWeapon")
            }
        }
    }
    
    func test_Localization_specialWeapons() {
        let language = self.chooseLanguageData()!
        
        let pkgSpecial = SpecialWeapon.allCases
        let jsonSpecial = language.specialWeapons
        
        XCTAssertEqual(pkgSpecial.count, jsonSpecial.count)
        
        for (jsonKey, jsonSpecial) in jsonSpecial {
            if let specialWeapon = SpecialWeapon(rawValue: jsonKey) {
                XCTAssertEqual(specialWeapon.localized, jsonSpecial, "\(specialWeapon) localization")
                
            } else {
                XCTFail("Cannot find \(jsonKey) in SpecialWeapon")
            }
        }
    }

    func test_Localization_abilities() {
        let language = self.chooseLanguageData()!
        
        let pkgAbility = Ability.allCases
        let jsonAbility = language.abilities
        
        XCTAssertEqual(pkgAbility.count, jsonAbility.count)
        
        for (jsonKey, jsonAbility) in jsonAbility {
            if let ability = Ability(rawValue: jsonKey) {
                XCTAssertEqual(ability.localized, jsonAbility, "\(ability) localization")
                
            } else if jsonKey != "None" {
                XCTFail("Cannot find \(jsonKey) in Ability")
            }
        }
    }

    func test_Localization_weaponClass() {
        let language = self.chooseLanguageData()!
        
        let pkgClass = WeaponClass.allCases
        let jsonClass = language.classes
        
        XCTAssertEqual(pkgClass.count, jsonClass.count)
        
        for (jsonKey, jsonClass) in jsonClass {
            if let wpnClass = WeaponClass(rawValue: jsonKey) {
                XCTAssertEqual(wpnClass.localized, jsonClass, "\(wpnClass) localization")
                
            } else {
                XCTFail("Cannot find \(jsonKey) in WeaponClass")
            }
        }
    }


    
    func chooseLanguageData() -> Localization.Language? {
        let data = UserDefaults.standard.object(forKey: "AppleLanguages") as! Array<String>
        let lang = data.first!
        
        switch lang {
        case "de":
            return self.localizationData.de
            
        case "en":
            return self.localizationData.en
            
        case "es":
            return self.localizationData.esEU

        case "es-419":
            return self.localizationData.esUS
            
        case "fr":
            return self.localizationData.frEU
            
        case "fr-CA":
            return self.localizationData.frUS
            
        case "it":
            return self.localizationData.it

        case "ja":
            return self.localizationData.jp
            
        case "ko":
            return self.localizationData.ko
            
        case "nl":
            return self.localizationData.nl
            
        case "ru":
            return self.localizationData.ru
            
        case "zh-Hans":
            return self.localizationData.zhCN
            
        case "zh-Hant":
            return self.localizationData.zhTW
            
        default:
            return nil
        }
    }
}
