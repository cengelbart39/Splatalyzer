//
//  BrushDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class BrushDecodingTests: XCTestCase {

    let service = JSONServiceForTests()

    func test_Inkbrush_decode_noThrows() {
        let fileName = "WeaponBrushMini.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BrushGameParameters.self, from: fileName))
    }
    
    func test_Octobrush_decode_noThrows() {
        let fileName = "WeaponBrushNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BrushGameParameters.self, from: fileName))
    }
    
    func test_Painbrush_decode_noThrows() {
        let fileName = "WeaponBrushHeavy.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BrushGameParameters.self, from: fileName))
    }
}
