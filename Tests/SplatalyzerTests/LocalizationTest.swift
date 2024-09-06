//
//  LocalizationTest.swift
//  
//
//  Created by Christopher Engelbart on 3/7/24.
//

import Testing
import Foundation
@testable import Splatalyzer

@Suite(.tags(.localization))
struct LocalizationTests {
    
    var translations: Localization.Language?
    
    init() throws {
        let data = try Data(contentsOf: TestHelper.localizationUrl)
        let langData = try JSONDecoder().decode(Localization.self, from: data)
        self.translations = langData.chooseLocalization()
    }
    
    @Test("Blaster Localizations", arguments: MainWeapon.getWeapons(of: .blaster))
    func blasterLocalizations(for blaster: MainWeapon) throws {
        let translation = try #require(translations?.mainWeapons[blaster.rawValue])
        
        #expect(translation == blaster.localized)
    }
    
    @Test("Brella Localizations", arguments: MainWeapon.getWeapons(of: .brella))
    func brellaLocalizations(for brella: MainWeapon) throws {
        let translation = try #require(translations?.mainWeapons[brella.rawValue])
        
        #expect(translation == brella.localized)
    }
    
    @Test("Brush Localizations", arguments: MainWeapon.getWeapons(of: .brush))
    func brushLocalizations(for brush: MainWeapon) throws {
        let translation = try #require(translations?.mainWeapons[brush.rawValue])
        
        #expect(translation == brush.localized)
    }
    
    @Test("Charger Localizations", arguments: MainWeapon.getWeapons(of: .charger))
    func chargerLocalizations(for charger: MainWeapon) throws {
        let translation = try #require(translations?.mainWeapons[charger.rawValue])
        
        #expect(translation == charger.localized)
    }
    
    @Test("Dualie Localizations", arguments: MainWeapon.getWeapons(of: .dualie))
    func dualieLocalizations(for dualie: MainWeapon) throws {
        let translation = try #require(translations?.mainWeapons[dualie.rawValue])
        
        #expect(translation == dualie.localized)
    }
    
    @Test("Roller Localizations", arguments: MainWeapon.getWeapons(of: .roller))
    func rollerLocalizations(for roller: MainWeapon) throws {
        let translation = try #require(translations?.mainWeapons[roller.rawValue])
        
        #expect(translation == roller.localized)
    }
    
    @Test("Shooter Localizations", arguments: MainWeapon.getWeapons(of: .shooter))
    func shooterLocalizations(for shooter: MainWeapon) throws {
        let translation = try #require(translations?.mainWeapons[shooter.rawValue])
        
        #expect(translation == shooter.localized)
    }
    
    @Test("Slosher Localizations", arguments: MainWeapon.getWeapons(of: .slosher))
    func slosherLocalizations(for slosher: MainWeapon) throws {
        let translation = try #require(translations?.mainWeapons[slosher.rawValue])
        
        #expect(translation == slosher.localized)
    }
    
    @Test("Splatana Localizations", arguments: MainWeapon.getWeapons(of: .splatana))
    func splatanaLocalizations(for splatana: MainWeapon) throws {
        let translation = try #require(translations?.mainWeapons[splatana.rawValue])
        
        #expect(translation == splatana.localized)
    }
    
    @Test("Splatling Localizations", arguments: MainWeapon.getWeapons(of: .splatling))
    func splatlingLocalizations(for splatling: MainWeapon) throws {
        let translation = try #require(translations?.mainWeapons[splatling.rawValue])
        
        #expect(translation == splatling.localized)
    }
    
    @Test("Stringer Localizations", arguments: MainWeapon.getWeapons(of: .stringer))
    func stringerLocalizations(for stringer: MainWeapon) throws {
        let translation = try #require(translations?.mainWeapons[stringer.rawValue])
        
        #expect(translation == stringer.localized)
    }
    
    @Test("Sub Weapon Localizations", arguments: SubWeapon.allCases)
    func subWeaponLocalizations(for weapon: SubWeapon) throws {
        let translation = try #require(translations?.subWeapons[weapon.rawValue])
        
        #expect(translation == weapon.localized)
    }
    
    @Test("Special Weapon Localizations", arguments: SpecialWeapon.allCases)
    func specialWeaponLocalizations(for weapon: SpecialWeapon) throws {
        let translation = try #require(translations?.specialWeapons[weapon.rawValue])
        
        #expect(translation == weapon.localized)
    }
    
    @Test("Abilities Localizations", arguments: Ability.useableAbilities)
    func abilityLocalizations(for ability: Ability) throws {
        let translation = try #require(translations?.abilities[ability.rawValue])
        
        #expect(translation == ability.localized)
    }
}
