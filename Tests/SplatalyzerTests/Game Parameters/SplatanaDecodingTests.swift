//
//  SplatanaDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class SplatanaDecodingTests: XCTestCase {
    
    let service = JSONService()
    
    func test_Splatana_decode_mintDecavitator_noThrows() {
        let fileName = "WeaponSaberHeavy.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Splatana.self, from: fileName))
    }
    
    func test_Splatana_decode_splatanaStamper_noThrows() {
        let fileName = "WeaponSaberNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Splatana.self, from: fileName))
    }

    func test_Splatana_decode_splatanaWiper_noThrows() {
        let fileName = "WeaponSaberLite.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Splatana.self, from: fileName))
    }
}
