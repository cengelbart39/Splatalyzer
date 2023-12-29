//
//  SlosherDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class SlosherDecodingTests: XCTestCase {

    let service = JSONServiceForTests()
    
    func test_SlosherBathtub_decode_noThrows() {
        let fileName = "WeaponSlosherBathtub.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SlosherGameParameters.self, from: fileName))
    }
    
    func test_SlosherBear_decode_noThrows() {
        let fileName = "WeaponSlosherBear_Coop.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SlosherGameParameters.self, from: fileName))
    }
    
    func test_SlosherDiffusion_decode_noThrows() {
        let fileName = "WeaponSlosherDiffusion.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SlosherGameParameters.self, from: fileName))
    }

    func test_SlosherDouble_decode_noThrows() {
        let fileName = "WeaponSlosherDouble.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SlosherGameParameters.self, from: fileName))
    }
    
    func test_SlosherLauncher_decode_noThrows() {
        let fileName = "WeaponSlosherLauncher.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SlosherGameParameters.self, from: fileName))
    }
    
    func test_SlosherStrong_decode_noThrows() {
        let fileName = "WeaponSlosherStrong.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SlosherGameParameters.self, from: fileName))
    }
    
    func test_SlosherWashtub_decode_noThrows() {
        let fileName = "WeaponSlosherWashtub.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SlosherGameParameters.self, from: fileName))
    }
}
