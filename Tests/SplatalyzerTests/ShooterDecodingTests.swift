//
//  ShooterDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class ShooterDecodingTests: XCTestCase {

    let service = JSONServiceForTests()

    func test_ShooterBlaze_decode_noThrows() {
        let fileName = "WeaponShooterBlaze.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }

    func test_ShooterExpert_decode_noThrows() {
        let fileName = "WeaponShooterExpert.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_ShooterFirst_decode_noThrows() {
        let fileName = "WeaponShooterFirst.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_ShooterFlash_decode_noThrows() {
        let fileName = "WeaponShooterFlash.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_ShooterGravity_decode_noThrows() {
        let fileName = "WeaponShooterGravity.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_ShooterHeavy_decode_noThrows() {
        let fileName = "WeaponShooterHeavy.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_ShooterLong_decode_noThrows() {
        let fileName = "WeaponShooterLong.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_ShooterNormal_decode_noThrows() {
        let fileName = "WeaponShooterNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_ShooterPrecision_decode_noThrows() {
        let fileName = "WeaponShooterPrecision.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_ShooterQuickLong_decode_noThrows() {
        let fileName = "WeaponShooterQuickLong.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_ShooterQuickMiddle_decode_noThrows() {
        let fileName = "WeaponShooterQuickMiddle.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_ShooterShort_decode_noThrows() {
        let fileName = "WeaponShooterShort.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_ShooterTripleMiddle_decode_noThrows() {
        let fileName = "WeaponShooterTripleMiddle.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_ShooterTripleQuick_decode_noThrows() {
        let fileName = "WeaponShooterTripleQuick.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
}
