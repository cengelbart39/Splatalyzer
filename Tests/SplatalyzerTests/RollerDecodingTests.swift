//
//  RollerDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class RollerDecodingTests: XCTestCase {

    let service = JSONServiceForTests()

    func test_RollerCompact_decode_noThrows() {
        let fileName = "WeaponRollerCompact.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(RollerGameParameters.self, from: fileName))
    }

    func test_RollerHeavy_decode_noThrows() {
        let fileName = "WeaponRollerHeavy.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(RollerGameParameters.self, from: fileName))
    }
    
    func test_RollerHunter_decode_noThrows() {
        let fileName = "WeaponRollerHunter.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(RollerGameParameters.self, from: fileName))
    }
    
    func test_RollerNormal_decode_noThrows() {
        let fileName = "WeaponRollerNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(RollerGameParameters.self, from: fileName))
    }
    
    func test_RollerWide_decode_noThrows() {
        let fileName = "WeaponRollerWide.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(RollerGameParameters.self, from: fileName))
    }
}
