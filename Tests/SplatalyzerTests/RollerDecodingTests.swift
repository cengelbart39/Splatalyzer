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

    func test_BigSwigRoller_decode_noThrows() {
        let fileName = "WeaponRollerWide.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Roller.self, from: fileName))
    }
    
    func test_CarbonRoller_decode_noThrows() {
        let fileName = "WeaponRollerCompact.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Roller.self, from: fileName))
    }

    func test_DynamoRoller_decode_noThrows() {
        let fileName = "WeaponRollerHeavy.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Roller.self, from: fileName))
    }
    
    func test_FlingzaRoller_decode_noThrows() {
        let fileName = "WeaponRollerHunter.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Roller.self, from: fileName))
    }
    
    func test_SplatRoller_decode_noThrows() {
        let fileName = "WeaponRollerNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Roller.self, from: fileName))
    }
}
