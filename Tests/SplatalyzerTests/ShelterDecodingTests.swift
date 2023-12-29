//
//  ShelterDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class ShelterDecodingTests: XCTestCase {

    let service = JSONServiceForTests()
    
    func test_ShelterBear_decode_noThrows() {
        let fileName = "WeaponShelterBear_Coop.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShelterGameParameters.self, from: fileName))
    }

    func test_ShelterCompact_decode_noThrows() {
        let fileName = "WeaponShelterCompact.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShelterGameParameters.self, from: fileName))
    }
    
    func test_ShelterNormal_decode_noThrows() {
        let fileName = "WeaponShelterNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShelterGameParameters.self, from: fileName))
    }
    
    func test_ShelterWide_decode_noThrows() {
        let fileName = "WeaponShelterWide.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShelterGameParameters.self, from: fileName))
    }
}
