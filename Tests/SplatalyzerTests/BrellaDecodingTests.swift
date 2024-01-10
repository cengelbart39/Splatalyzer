//
//  BrellaDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class BrellaDecodingTests: XCTestCase {

    let service = JSONServiceForTests()
    
    func test_GrizzcoBrella_decode_noThrows() {
        let fileName = "WeaponShelterBear_Coop.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BrellaGameParameters.self, from: fileName))
    }
    
    func test_SplatBrella_decode_noThrows() {
        let fileName = "WeaponShelterNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BrellaGameParameters.self, from: fileName))
    }
    
    func test_TentaBrella_decode_noThrows() {
        let fileName = "WeaponShelterWide.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BrellaGameParameters.self, from: fileName))
    }
    
    func test_UndercoverBrella_decode_noThrows() {
        let fileName = "WeaponShelterCompact.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BrellaGameParameters.self, from: fileName))
    }
}
