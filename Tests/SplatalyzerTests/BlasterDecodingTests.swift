//
//  BlasterDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class BlasterDecodingTests: XCTestCase {
    
    let service = JSONServiceForTests()

    func test_BlasterBear_decode_noThrows() {
        let fileName = "WeaponBlasterBear_Coop.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BlasterGameParameters.self, from: fileName))
    }

    func test_BlasterLight_decode_noThrows() {
        let fileName = "WeaponBlasterLight.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BlasterGameParameters.self, from: fileName))
    }
    
    func test_BlasterLightLong_decode_noThrows() {
        let fileName = "WeaponBlasterLightLong.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BlasterGameParameters.self, from: fileName))
    }
    
    func test_BlasterLightShort_decode_noThrows() {
        let fileName = "WeaponBlasterLightShort.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BlasterGameParameters.self, from: fileName))
    }
    
    func test_BlasterLong_decode_noThrows() {
        let fileName = "WeaponBlasterLong.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BlasterGameParameters.self, from: fileName))
    }
    
    func test_BlasterMiddle_decode_noThrows() {
        let fileName = "WeaponBlasterMiddle.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BlasterGameParameters.self, from: fileName))
    }
        
    func test_BlasterPrecision_decode_noThrows() {
        let fileName = "WeaponBlasterPrecision.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BlasterGameParameters.self, from: fileName))
    }
    
    func test_BlasterShort_decode_noThrows() {
        let fileName = "WeaponBlasterShort.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BlasterGameParameters.self, from: fileName))
    }
}
