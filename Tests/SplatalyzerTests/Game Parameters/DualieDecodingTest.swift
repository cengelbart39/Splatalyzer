//
//  DualieDecodingTest.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class DualieDecodingTest: XCTestCase {

    let service = JSONService()
    
    func test_Dualie_decode_dappleDualies_noThrows() {
        let fileName = "WeaponManeuverShort.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Dualie.self, from: fileName))
    }
    
    func test_Dualie_decode_douserDualiesFF_noThrows() {
        let fileName = "WeaponManeuverLong.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Dualie.self, from: fileName))
    }
    
    func test_Dualie_decode_dualieSquelchers_noThrows() {
        let fileName = "WeaponManeuverDual.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Dualie.self, from: fileName))
    }
    
    func test_Dualie_decode_gloogaDualies_noThrows() {
        let fileName = "WeaponManeuverGallon.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Dualie.self, from: fileName))
    }

    func test_Dualie_decode_splatDualies_noThrows() {
        let fileName = "WeaponManeuverNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Dualie.self, from: fileName))
    }
    
    func test_Dualie_decode_tetraDualies_noThrows() {
        let fileName = "WeaponManeuverStepper.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Dualie.self, from: fileName))
    }
}
