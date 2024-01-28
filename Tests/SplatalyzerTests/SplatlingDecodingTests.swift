//
//  SplatlingDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class SplatlingDecodingTests: XCTestCase {

    let service = JSONService()

    func test_BallpointSplatling_decode_noThrows() {
        let fileName = "WeaponSpinnerDownpour.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SplatlingGameParameters.self, from: fileName))
    }
    
    func test_HeavyEditSplatling_decode_noThrows() {
        let fileName = "WeaponSpinnerHyperShort.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SplatlingGameParameters.self, from: fileName))
    }
    
    func test_HeavySplatling_decode_noThrows() {
        let fileName = "WeaponSpinnerStandard.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SplatlingGameParameters.self, from: fileName))
    }

    func test_HydraSplatling_decode_noThrows() {
        let fileName = "WeaponSpinnerHyper.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SplatlingGameParameters.self, from: fileName))
    }
    
    func test_MiniSplatling_decode_noThrows() {
        let fileName = "WeaponSpinnerQuick.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SplatlingGameParameters.self, from: fileName))
    }
    
    func test_Nautilus47_decode_noThrows() {
        let fileName = "WeaponSpinnerSerein.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SplatlingGameParameters.self, from: fileName))
    }
}
