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
    
    func test_Stringer_decode_reeflux450_noThrows() {
        let fileName = "WeaponStringerShort.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Stringer.self, from: fileName))
    }
    
    func test_Stringer_decode_triStringer_noThrows() {
        let fileName = "WeaponStringerNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Stringer.self, from: fileName))
    }
    
    func test_Stringer_decode_wellspringV_noThrows() {
        let fileName = "WeaponStringerExplosion.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Stringer.self, from: fileName))
    }
}
