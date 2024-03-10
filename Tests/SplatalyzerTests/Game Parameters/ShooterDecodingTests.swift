//
//  ShooterDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class ShooterDecodingTests: XCTestCase {

    let service = JSONService()

    func test_Shooter_decode_52Gal_noThrows() {
        let fileName = "WeaponShooterGravity.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Shooter.self, from: fileName))
    }
    
    func test_Shooter_decode_96Gal_noThrows() {
        let fileName = "WeaponShooterHeavy.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Shooter.self, from: fileName))
    }
    
    func test_Shooter_decode_aerospray_noThrows() {
        let fileName = "WeaponShooterBlaze.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Shooter.self, from: fileName))
    }
    
    func test_Shooter_decode_h3Nozzlenose_noThrows() {
        let fileName = "WeaponShooterTripleMiddle.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Shooter.self, from: fileName))
    }
    
    func test_Shooter_decode_jetSquelcher_noThrows() {
        let fileName = "WeaponShooterLong.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Shooter.self, from: fileName))
    }
    
    func test_Shooter_decode_l3Nozzlenose_noThrows() {
        let fileName = "WeaponShooterTripleQuick.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Shooter.self, from: fileName))
    }
    
    func test_Shooter_decode_nzap_noThrows() {
        let fileName = "WeaponShooterQuickMiddle.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Shooter.self, from: fileName))
    }
    
    func test_Shooter_decode_splashomatic_noThrows() {
        let fileName = "WeaponShooterPrecision.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Shooter.self, from: fileName))
    }

    func test_Shooter_decode_splattershot_noThrows() {
        let fileName = "WeaponShooterNormal.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Shooter.self, from: fileName))
    }
    
    func test_Shooter_decode_splattershotJr_noThrows() {
        let fileName = "WeaponShooterFirst.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Shooter.self, from: fileName))
    }
    
    func test_Shooter_decode_splattershotNova_noThrows() {
        let fileName = "WeaponShooterQuickLong.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Shooter.self, from: fileName))
    }
    
    func test_Shooter_decode_splattershotPro_noThrows() {
        let fileName = "WeaponShooterExpert.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Shooter.self, from: fileName))
    }
    
    func test_Shooter_decode_splooshomatic_noThrows() {
        let fileName = "WeaponShooterShort.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Shooter.self, from: fileName))
    }
    
    func test_Shooter_decode_squeezer_noThrows() {
        let fileName = "WeaponShooterFlash.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Shooter.self, from: fileName))
    }
}
