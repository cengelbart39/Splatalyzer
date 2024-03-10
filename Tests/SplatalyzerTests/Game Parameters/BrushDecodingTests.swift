//
//  BrushDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class BrushDecodingTests: XCTestCase {

    let service = JSONService()

    func test_Brush_decode_inkbrush_noThrows() {
        let fileName = "WeaponBrushMini.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Brush.self, from: fileName))
    }
    
    func test_Brush_decode_octobrush_noThrows() {
        let fileName = "WeaponBrushNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Brush.self, from: fileName))
    }
    
    func test_Brush_decode_painbrush_noThrows() {
        let fileName = "WeaponBrushHeavy.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Brush.self, from: fileName))
    }
}
