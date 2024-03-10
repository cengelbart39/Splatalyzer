//
//  RollerDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class RollerDecodingTests: XCTestCase {

    let service = JSONService()

    func test_Roller_decode_bigSwigRoller_noThrows() {
        let fileName = "WeaponRollerWide.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Roller.self, from: fileName))
    }
    
    func test_Roller_decode_carbonRoller_noThrows() {
        let fileName = "WeaponRollerCompact.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Roller.self, from: fileName))
    }

    func test_Roller_decode_dynamoRoller_noThrows() {
        let fileName = "WeaponRollerHeavy.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Roller.self, from: fileName))
    }
    
    func test_Roller_decode_flingzaRoller_noThrows() {
        let fileName = "WeaponRollerHunter.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Roller.self, from: fileName))
    }
    
    func test_Roller_decode_splatRoller_noThrows() {
        let fileName = "WeaponRollerNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Roller.self, from: fileName))
    }
}
