//
//  MainDecodingTests.swift
//  Splatalyzer
//
//  Created by Christopher Engelbart on 9/2/24.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.decode))
struct MainDecodingTests {
    
    let service = JSONService()
    
    @Test("Decode Blasters", arguments: MainWeapon.blasters.vanilla())
    func decodeBlaster(_ weapon: MainWeapon) {
        #expect(throws: Never.self, performing: {
            try service.decode(.weapon(weapon), into: Blaster.self)
        })
    }
    
    @Test("Decode Brellas", arguments: MainWeapon.brellas.vanilla())
    func decodeBrella(_ weapon: MainWeapon) {
        #expect(throws: Never.self, performing: {
            try service.decode(.weapon(weapon), into: Brella.self)
        })
    }
    
    @Test("Decode Brushes", arguments: MainWeapon.brushes.vanilla())
    func decodeBrush(_ weapon: MainWeapon) {
        #expect(throws: Never.self, performing: {
            try service.decode(.weapon(weapon), into: Brush.self)
        })
    }
    
    @Test("Decode Chargers", arguments: MainWeapon.chargers.vanilla())
    func decodeCharger(_ weapon: MainWeapon) {
        #expect(throws: Never.self, performing: {
            try service.decode(.weapon(weapon), into: Charger.self)
        })
    }
    
    @Test("Decode Dualies", arguments: MainWeapon.dualies.vanilla())
    func decodeDualie(_ weapon: MainWeapon) {
        #expect(throws: Never.self, performing: {
            try service.decode(.weapon(weapon), into: Dualie.self)
        })
    }
    
    @Test("Decode Rollers", arguments: MainWeapon.rollers.vanilla())
    func decodeRoller(_ weapon: MainWeapon) {
        #expect(throws: Never.self, performing: {
            try service.decode(.weapon(weapon), into: Roller.self)
        })
    }
    
    @Test("Decode Shooters", arguments: MainWeapon.shooters.vanilla())
    func decodeShooter(_ weapon: MainWeapon) {
        #expect(throws: Never.self, performing: {
            try service.decode(.weapon(weapon), into: Shooter.self)
        })
    }
    
    @Test("Decode Sloshers", arguments: MainWeapon.sloshers.vanilla())
    func decodeSlosher(_ weapon: MainWeapon) {
        #expect(throws: Never.self, performing: {
            try service.decode(.weapon(weapon), into: Slosher.self)
        })
    }
    
    @Test("Decode Splatanas", arguments: MainWeapon.splatanas.vanilla())
    func decodeSplatana(_ weapon: MainWeapon) {
        #expect(throws: Never.self, performing: {
            try service.decode(.weapon(weapon), into: Splatana.self)
        })
    }
    
    @Test("Decode Splatlings", arguments: MainWeapon.splatlings.vanilla())
    func decodeSplatling(_ weapon: MainWeapon) {
        #expect(throws: Never.self, performing: {
            try service.decode(.weapon(weapon), into: Splatling.self)
        })
    }
    
    @Test("Decode Stringer", arguments: MainWeapon.stringers.vanilla())
    func decodeMainWeaponer(_ weapon: MainWeapon) {
        #expect(throws: Never.self, performing: {
            try service.decode(.weapon(weapon), into: Stringer.self)
        })
    }
}
