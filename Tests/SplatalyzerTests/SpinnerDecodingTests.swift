//
//  SpinnerDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class SpinnerDecodingTests: XCTestCase {

    let service = JSONServiceForTests()

    func test_SpinnerDownpour_decode_noThrows() {
        let fileName = "WeaponSpinnerDownpour.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpinnerGameParameters.self, from: fileName))
    }

    func test_SpinnerHyper_decode_noThrows() {
        let fileName = "WeaponSpinnerHyper.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpinnerGameParameters.self, from: fileName))
    }
    
    func test_SpinnerHyperShort_decode_noThrows() {
        let fileName = "WeaponSpinnerHyperShort.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpinnerGameParameters.self, from: fileName))
    }
    
    func test_SpinnerQuick_decode_noThrows() {
        let fileName = "WeaponSpinnerQuick.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpinnerGameParameters.self, from: fileName))
    }
    
    func test_SpinnerSerein_decode_noThrows() {
        let fileName = "WeaponSpinnerSerein.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpinnerGameParameters.self, from: fileName))
    }
    
    func test_SpinnerStandard_decode_noThrows() {
        let fileName = "WeaponSpinnerStandard.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpinnerGameParameters.self, from: fileName))
    }
}
