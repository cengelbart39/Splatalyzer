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

    func test_Bamboozler14_decode_noThrows() {
        let fileName = "WeaponChargerLight.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ChargerGameParameters.self, from: fileName))
    }
    
    func test_Eliter4K_decode_noThrows() {
        let fileName = "WeaponChargerLong.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ChargerGameParameters.self, from: fileName))
    }
    
    func test_Eliter4KScope_decode_noThrows() {
        let fileName = "WeaponChargerLongScope.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ChargerGameParameters.self, from: fileName))
    }
    
    func test_GrizzcoCharger_decode_noThrows() {
        let fileName = "WeaponChargerBear_Coop.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ChargerGameParameters.self, from: fileName))
    }
    
    func test_GooTuber_decode_noThrows() {
        let fileName = "WeaponChargerKeeper.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ChargerGameParameters.self, from: fileName))
    }
    
    func test_Snipewriter_decode_noThrows() {
        let fileName = "WeaponChargerPencil.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ChargerGameParameters.self, from: fileName))
    }
 
    func test_SplatCharger_decode_noThrows() {
        let fileName = "WeaponChargerNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ChargerGameParameters.self, from: fileName))
    }
    
    func test_Splatterscope_decode_noThrows() {
        let fileName = "WeaponChargerNormalScope.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ChargerGameParameters.self, from: fileName))
    }
    
    func test_Squiffer_decode_noThrows() {
        let fileName = "WeaponChargerQuick.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ChargerGameParameters.self, from: fileName))
    }
}
