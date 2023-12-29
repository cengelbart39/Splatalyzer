//
//  SaberDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class SaberDecodingTests: XCTestCase {
    
    let service = JSONServiceForTests()
    
    func test_SaberBear_decode_noThrows() {
        let fileName = "WeaponSaberBear_Coop.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SaberGameParameters.self, from: fileName))
    }

    func test_SaberLite_decode_noThrows() {
        let fileName = "WeaponSaberLite.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SaberGameParameters.self, from: fileName))
    }
    
    func test_SaberNormal_decode_noThrows() {
        let fileName = "WeaponSaberNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SaberGameParameters.self, from: fileName))
    }
}
