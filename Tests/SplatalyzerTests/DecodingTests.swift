//
//  BrushDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import Testing
@testable import Splatalyzer

struct DecodingTests {
    let service = JSONService()
    
    // MARK: - Main Weapons
    @Test("Decode Blasters", arguments: MainWeapon.vanillaWeapons(of: .blaster))
    func decodeBlaster(_ weapon: MainWeapon) {
        let fileName = "Weapon\(weapon.fileName()).game__GameParameterTable"
        
        #expect(throws: Never.self, performing: {
            try service.decode(Blaster.self, from: fileName)
        })
    }
    
    @Test("Decode Brellas", arguments: MainWeapon.vanillaWeapons(of: .brella))
    func decodeBrella(_ weapon: MainWeapon) {
        let fileName = "Weapon\(weapon.fileName()).game__GameParameterTable"
        
        #expect(throws: Never.self, performing: {
            try service.decode(Brella.self, from: fileName)
        })
    }
    
    @Test("Decode Brushes", arguments: MainWeapon.vanillaWeapons(of: .brush))
    func decodeBrush(_ weapon: MainWeapon) {
        let fileName = "Weapon\(weapon.fileName()).game__GameParameterTable"

        #expect(throws: Never.self, performing: {
            try service.decode(Brush.self, from: fileName)
        })
    }
    
    @Test("Decode Chargers", arguments: MainWeapon.vanillaWeapons(of: .charger))
    func decodeCharger(_ weapon: MainWeapon) {
        let fileName = "Weapon\(weapon.fileName()).game__GameParameterTable"
        
        #expect(throws: Never.self, performing: {
            try service.decode(Charger.self, from: fileName)
        })
    }
    
    @Test("Decode Dualies", arguments: MainWeapon.vanillaWeapons(of: .dualie))
    func decodeDualie(_ weapon: MainWeapon) {
        let fileName = "Weapon\(weapon.fileName()).game__GameParameterTable"
        
        #expect(throws: Never.self, performing: {
            try service.decode(Dualie.self, from: fileName)
        })
    }
    
    @Test("Decode Rollers", arguments: MainWeapon.vanillaWeapons(of: .roller))
    func decodeRoller(_ weapon: MainWeapon) {
        let fileName = "Weapon\(weapon.fileName()).game__GameParameterTable"
        
        #expect(throws: Never.self, performing: {
            try service.decode(Roller.self, from: fileName)
        })
    }
    
    @Test("Decode Shooters", arguments: MainWeapon.vanillaWeapons(of: .shooter))
    func decodeShooter(_ weapon: MainWeapon) {
        let fileName = "Weapon\(weapon.fileName()).game__GameParameterTable"
        
        #expect(throws: Never.self, performing: {
            try service.decode(Shooter.self, from: fileName)
        })
    }
    
    @Test("Decode Sloshers", arguments: MainWeapon.vanillaWeapons(of: .slosher))
    func decodeSlosher(_ weapon: MainWeapon) {
        let fileName = "Weapon\(weapon.fileName()).game__GameParameterTable"
        
        #expect(throws: Never.self, performing: {
            try service.decode(Slosher.self, from: fileName)
        })
    }
    
    @Test("Decode Splatanas", arguments: MainWeapon.vanillaWeapons(of: .splatana))
    func decodeSplatana(_ weapon: MainWeapon) {
        let fileName = "Weapon\(weapon.fileName()).game__GameParameterTable"
        
        #expect(throws: Never.self, performing: {
            try service.decode(Splatana.self, from: fileName)
        })
    }
    
    @Test("Decode Splatlings", arguments: MainWeapon.vanillaWeapons(of: .splatling))
    func decodeSplatling(_ weapon: MainWeapon) {
        let fileName = "Weapon\(weapon.fileName()).game__GameParameterTable"
        
        #expect(throws: Never.self, performing: {
            try service.decode(Splatling.self, from: fileName)
        })
    }
    
    @Test("Decode Stringer", arguments: MainWeapon.vanillaWeapons(of: .stringer))
    func decodeMainWeaponer(_ weapon: MainWeapon) {
        let fileName = "Weapon\(weapon.fileName()).game__GameParameterTable"
        
        #expect(throws: Never.self, performing: {
            try service.decode(Stringer.self, from: fileName)
        })
    }
    
    // MARK: - Sub Weapons
    @Test("Decode Sub Weapons", arguments: SubWeapon.allCases)
    func decodeSubWeapon(_ weapon: SubWeapon) {
        let fileName = "Weapon\(weapon.fileName()).game__GameParameterTable"
        #expect(throws: Never.self, performing: {
            try service.decode(weapon.modelType, from: fileName)
        })
    }
    
    // MARK: - Special Weapons
    @Test("Decode Special Weapons", arguments: SpecialWeapon.allCases)
    func decodeSpecialWeapon(_ weapon: SpecialWeapon) {
        let fileName = "Weapon\(weapon.fileName()).game__GameParameterTable"
        #expect(throws: Never.self, performing: {
            try service.decode(weapon.modelType, from: fileName)
        })
    }
    
    // MARK: - Other
    @Test("Decode Player Params")
    func decodePlayerParams() {
        let fileName = "SplPlayer.game__GameParameterTable"
        #expect(throws: Never.self, performing: {
            try service.decode(Player.self, from: fileName)
        })
    }
    
    @Test("Decode WeaponInfoMain")
    func decodeWeaponInfoMain() {
        #expect(throws: Never.self, performing: {
            try service.decode(WeaponInfoMain.self, from: "WeaponInfoMain")
        })
    }
}
