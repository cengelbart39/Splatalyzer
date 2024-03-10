//
//  BrellaDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class BrellaDecodingTests: XCTestCase {

    let service = JSONService()
    
    func test_Brella_decode_recycledBrella24_noThrows() {
        let fileName = "WeaponShelterFocus.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Brella.self, from: fileName))
    }
    
    func test_Brella_decode_splatBrella_noThrows() {
        let fileName = "WeaponShelterNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Brella.self, from: fileName))
    }
    
    func test_Brella_decode_tentaBrella_noThrows() {
        let fileName = "WeaponShelterWide.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Brella.self, from: fileName))
    }
    
    func test_Brella_decode_underscoverBrella_noThrows() {
        let fileName = "WeaponShelterCompact.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Brella.self, from: fileName))
    }
}
