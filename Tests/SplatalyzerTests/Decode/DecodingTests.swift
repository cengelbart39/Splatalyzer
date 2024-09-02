//
//  BrushDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.decode))
struct DecodingTests {
    
    let service = JSONService()
    
    @Test("Decode Player Params")
    func decodePlayerParams() {
        #expect(throws: Never.self, performing: {
            try service.decode(.player, into: Player.self)
        })
    }
    
    @Test("Decode WeaponInfoMain")
    func decodeWeaponInfoMain() {
        #expect(throws: Never.self, performing: {
            try service.decode(.weaponInfoMain, into: WeaponInfoMain.self)
        })
    }
}
