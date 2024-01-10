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

    func test_52Gal_noThrows() {
        let fileName = "WeaponShooterGravity.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_96Gal_decode_noThrows() {
        let fileName = "WeaponShooterHeavy.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_Aerospray_decode_noThrows() {
        let fileName = "WeaponShooterBlaze.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_H3Nozzlenose_decode_noThrows() {
        let fileName = "WeaponShooterTripleQuick.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_JetSquelcher_decode_noThrows() {
        let fileName = "WeaponShooterLong.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_L3Nozzlenose_decode_noThrows() {
        let fileName = "WeaponShooterTripleMiddle.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_NZap_decode_noThrows() {
        let fileName = "WeaponShooterQuickMiddle.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_Splashomatic_decode_noThrows() {
        let fileName = "WeaponShooterPrecision.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }

    func test_Splattershot_decode_noThrows() {
        let fileName = "WeaponShooterNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_SplattershotJr_decode_noThrows() {
        let fileName = "WeaponShooterFirst.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_SplattershotNova_decode_noThrows() {
        let fileName = "WeaponShooterQuickLong.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_SplattershotPro_decode_noThrows() {
        let fileName = "WeaponShooterExpert.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_Splooshomatic_decode_noThrows() {
        let fileName = "WeaponShooterShort.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
    
    func test_Squeezer_decode_noThrows() {
        let fileName = "WeaponShooterFlash.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ShooterGameParameters.self, from: fileName))
    }
}
