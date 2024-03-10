//
//  ChargerDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class ChargerDecodingTests: XCTestCase {

    let service = JSONService()

    func test_Charger_decode_bamboozler14_noThrows() {
        let fileName = "WeaponChargerLight.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Charger.self, from: fileName))
    }
    
    func test_Charger_decode_eliter4K_noThrows() {
        let fileName = "WeaponChargerLong.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Charger.self, from: fileName))
    }
    
    func test_Charger_decode_eliter4KScope_noThrows() {
        let fileName = "WeaponChargerLongScope.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Charger.self, from: fileName))
    }
    
    func test_Charger_decode_gooTuber_noThrows() {
        let fileName = "WeaponChargerKeeper.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Charger.self, from: fileName))
    }
    
    func test_Charger_decode_snipewriter_noThrows() {
        let fileName = "WeaponChargerPencil.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Charger.self, from: fileName))
    }
 
    func test_Charger_decode_splatCharger_noThrows() {
        let fileName = "WeaponChargerNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Charger.self, from: fileName))
    }
    
    func test_Charger_decode_splatterscope_noThrows() {
        let fileName = "WeaponChargerNormalScope.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Charger.self, from: fileName))
    }
    
    func test_Charger_decode_squiffer_noThrows() {
        let fileName = "WeaponChargerQuick.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Charger.self, from: fileName))
    }
}
