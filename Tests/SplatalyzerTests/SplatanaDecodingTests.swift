//
//  SplatanaDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class SplatanaDecodingTests: XCTestCase {
    
    let service = JSONServiceForTests()
    
    func test_GrizzcoSplatana_decode_noThrows() {
        let fileName = "WeaponSaberBear_Coop.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SplatanaGameParameters.self, from: fileName))
    }
    
    func test_SplatanaStamper_decode_noThrows() {
        let fileName = "WeaponSaberNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SplatanaGameParameters.self, from: fileName))
    }

    func test_SplatanaWiper_decode_noThrows() {
        let fileName = "WeaponSaberLite.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SplatanaGameParameters.self, from: fileName))
    }
}