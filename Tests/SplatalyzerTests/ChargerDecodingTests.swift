//
//  ChargerDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class ChargerDecodingTests: XCTestCase {

    let service = JSONServiceForTests()

    func test_ChargerBear_decode_noThrows() {
        let fileName = "WeaponChargerBear_Coop.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ChargerGameParameters.self, from: fileName))
    }
    
    func test_ChargerKeeper_decode_noThrows() {
        let fileName = "WeaponChargerKeeper.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ChargerGameParameters.self, from: fileName))
    }
    
    func test_ChargerLight_decode_noThrows() {
        let fileName = "WeaponChargerLight.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ChargerGameParameters.self, from: fileName))
    }
    
    func test_ChargerLong_decode_noThrows() {
        let fileName = "WeaponChargerLong.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ChargerGameParameters.self, from: fileName))
    }
    
    func test_ChargerLongScope_decode_noThrows() {
        let fileName = "WeaponChargerLongScope.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ChargerGameParameters.self, from: fileName))
    }
    
    func test_ChargerNormal_decode_noThrows() {
        let fileName = "WeaponChargerNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ChargerGameParameters.self, from: fileName))
    }
    
    func test_ChargerNormalScope_decode_noThrows() {
        let fileName = "WeaponChargerNormalScope.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ChargerGameParameters.self, from: fileName))
    }
    
    func test_ChargerPencil_decode_noThrows() {
        let fileName = "WeaponChargerPencil.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ChargerGameParameters.self, from: fileName))
    }
    
    func test_ChargerQuick_decode_noThrows() {
        let fileName = "WeaponChargerQuick.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ChargerGameParameters.self, from: fileName))
    }
}
