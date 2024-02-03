//
//  SlosherDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class SlosherDecodingTests: XCTestCase {

    let service = JSONService()
    
    func test_Bloblobber_decode_noThrows() {
        let fileName = "WeaponSlosherBathtub.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Slosher.self, from: fileName))
    }
    
    func test_DreadWringer_decode_noThrows() {
        let fileName = "WeaponSlosherDouble.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Slosher.self, from: fileName))
    }
    
    func test_Explosher_decode_noThrows() {
        let fileName = "WeaponSlosherWashtub.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Slosher.self, from: fileName))
    }

    func test_Slosher_decode_noThrows() {
        let fileName = "WeaponSlosherStrong.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Slosher.self, from: fileName))
    }

    func test_SloshingMachine_decode_noThrows() {
        let fileName = "WeaponSlosherLauncher.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Slosher.self, from: fileName))
    }
    
    func test_TriSlosher_decode_noThrows() {
        let fileName = "WeaponSlosherDiffusion.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Slosher.self, from: fileName))
    }
}
