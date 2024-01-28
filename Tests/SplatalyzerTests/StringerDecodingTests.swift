//
//  StringerDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class StringerDecodingTests: XCTestCase {

    let service = JSONService()
    
    func test_GrizzcoStringer_decode_noThrows() {
        let fileName = "WeaponStringerBear_Coop.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(StringerGameParameters.self, from: fileName))
    }
    
    func test_Reeflux450_decode_noThrows() {
        let fileName = "WeaponStringerShort.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(StringerGameParameters.self, from: fileName))
    }
    
    func test_TriStringer_decode_noThrows() {
        let fileName = "WeaponStringerNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(StringerGameParameters.self, from: fileName))
    }
}
