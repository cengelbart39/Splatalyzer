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

    func test_Blaster_decode_blaster_noThrows() {
        let fileName = "WeaponBlasterMiddle.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Blaster.self, from: fileName))
    }
    
    func test_Blaster_decode_clashBlaster_noThrows() {
        let fileName = "WeaponBlasterLightShort.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Blaster.self, from: fileName))
    }
    
    func test_Blaster_decode_lunaBlaster_noThrows() {
        let fileName = "WeaponBlasterShort.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Blaster.self, from: fileName))
    }

    func test_Blaster_decode_rangeBlaster_noThrows() {
        let fileName = "WeaponBlasterLong.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Blaster.self, from: fileName))
    }
    
    func test_Blaster_decode_rapidBlaster_noThrows() {
        let fileName = "WeaponBlasterLight.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Blaster.self, from: fileName))
    }
    
    func test_Blaster_decode_rapidBlasterPro_noThrows() {
        let fileName = "WeaponBlasterLightLong.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Blaster.self, from: fileName))
    }
    
    func test_Blaster_decode_sblast_noThrows() {
        let fileName = "WeaponBlasterPrecision.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Blaster.self, from: fileName))
    }
}
