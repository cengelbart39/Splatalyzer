//
//  DualieDecodingTest.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class DualieDecodingTest: XCTestCase {

    let service = JSONServiceForTests()
    
    func test_DappleDualies_decode_noThrows() {
        let fileName = "WeaponManeuverShort.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(DualieGameParameters.self, from: fileName))
    }
    
    func test_DualieSquelchers_decode_noThrows() {
        let fileName = "WeaponManeuverDual.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(DualieGameParameters.self, from: fileName))
    }
    
    func test_GloogaDualies_decode_noThrows() {
        let fileName = "WeaponManeuverGallon.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(DualieGameParameters.self, from: fileName))
    }
    
    func test_GrizzcoDualies_decode_noThrows() {
        let fileName = "WeaponManeuverBear_Coop.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(DualieGameParameters.self, from: fileName))
    }

    func test_SplatDualies_decode_noThrows() {
        let fileName = "WeaponManeuverNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(DualieGameParameters.self, from: fileName))
    }
    
    func test_TetraDualies_decode_noThrows() {
        let fileName = "WeaponManeuverStepper.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(DualieGameParameters.self, from: fileName))
    }
}