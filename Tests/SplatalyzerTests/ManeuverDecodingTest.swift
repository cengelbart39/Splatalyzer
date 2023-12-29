//
//  ManeuverDecodingTest.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class ManeuverDecodingTest: XCTestCase {

    let service = JSONServiceForTests()
    
    func test_ManeuverBear_decode_noThrows() {
        let fileName = "WeaponManeuverBear_Coop.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ManeuverGameParameters.self, from: fileName))
    }

    func test_ManeuverDual_decode_noThrows() {
        let fileName = "WeaponManeuverDual.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ManeuverGameParameters.self, from: fileName))
    }
    
    func test_ManeuverGallon_decode_noThrows() {
        let fileName = "WeaponManeuverGallon.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ManeuverGameParameters.self, from: fileName))
    }
    
    func test_ManeuverNormal_decode_noThrows() {
        let fileName = "WeaponManeuverNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ManeuverGameParameters.self, from: fileName))
    }
    
    func test_ManeuverShort_decode_noThrows() {
        let fileName = "WeaponManeuverShort.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ManeuverGameParameters.self, from: fileName))
    }
    
    func test_ManeuverStepper_decode_noThrows() {
        let fileName = "WeaponManeuverStepper.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ManeuverGameParameters.self, from: fileName))
    }
}
