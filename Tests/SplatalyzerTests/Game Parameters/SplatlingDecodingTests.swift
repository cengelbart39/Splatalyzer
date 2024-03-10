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

    func test_Splatling_decode_ballpointSplatling_noThrows() {
        let fileName = "WeaponSpinnerDownpour.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Splatling.self, from: fileName))
    }
    
    func test_Splatling_decode_heavyEditSplatling_noThrows() {
        let fileName = "WeaponSpinnerHyperShort.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Splatling.self, from: fileName))
    }
    
    func test_Splatling_decode_heavySplatling_noThrows() {
        let fileName = "WeaponSpinnerStandard.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Splatling.self, from: fileName))
    }

    func test_Splatling_decode_hydraSplatling_noThrows() {
        let fileName = "WeaponSpinnerHyper.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Splatling.self, from: fileName))
    }
    
    func test_Splatling_decode_miniSplatling_noThrows() {
        let fileName = "WeaponSpinnerQuick.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Splatling.self, from: fileName))
    }
    
    func test_Splatling_decode_nautilus_noThrows() {
        let fileName = "WeaponSpinnerSerein.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Splatling.self, from: fileName))
    }
}
