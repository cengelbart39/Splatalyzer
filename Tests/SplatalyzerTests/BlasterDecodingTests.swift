//
//  BlasterDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class BlasterDecodingTests: XCTestCase {
    
    let service = JSONService()

    func test_Blaster_decode_noThrows() {
        let fileName = "WeaponBlasterMiddle.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BlasterGameParameters.self, from: fileName))
    }
    
    func test_ClashBlaster_decode_noThrows() {
        let fileName = "WeaponBlasterLightShort.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BlasterGameParameters.self, from: fileName))
    }
    
    func test_GrizzcoBlaster_decode_noThrows() {
        let fileName = "WeaponBlasterBear_Coop.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BlasterGameParameters.self, from: fileName))
    }
    
    func test_LunaBlaster_decode_noThrows() {
        let fileName = "WeaponBlasterShort.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BlasterGameParameters.self, from: fileName))
    }

    func test_RangeBlaster_decode_noThrows() {
        let fileName = "WeaponBlasterLong.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BlasterGameParameters.self, from: fileName))
    }
    
    func test_RapidBlaster_decode_noThrows() {
        let fileName = "WeaponBlasterLight.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BlasterGameParameters.self, from: fileName))
    }
    
    func test_RapidBlasterPro_decode_noThrows() {
        let fileName = "WeaponBlasterLightLong.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BlasterGameParameters.self, from: fileName))
    }
    
    func test_SBlast_decode_noThrows() {
        let fileName = "WeaponBlasterPrecision.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BlasterGameParameters.self, from: fileName))
    }
}
