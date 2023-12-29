//
//  SubDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class SubDecodingTests: XCTestCase {

    let service = JSONServiceForTests()
    
    func test_SubBeacon_decode_noThrows() {
        let fileName = "WeaponBeacon.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SubBeaconGameParameters.self, from: fileName))
    }
    
    func test_SubBombCurling_decode_noThrows() {
        let fileName = "WeaponBombCurling.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SubBombCurlingGameParameters.self, from: fileName))
    }
    
    func test_SubBombFizzy_decode_noThrows() {
        let fileName = "WeaponBombFizzy.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SubBombFizzyGameParameters.self, from: fileName))
    }
    
    func test_SubBombQuick_decode_noThrows() {
        let fileName = "WeaponBombQuick.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SubBombQuickGameParameters.self, from: fileName))
    }
    
    func test_SubBombRobot_decode_noThrows() {
        let fileName = "WeaponBombRobot.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SubBombRobotGameParameters.self, from: fileName))
    }
    
    func test_SubBombSplash_decode_noThrows() {
        let fileName = "WeaponBombSplash.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SubBombSplashGameParameters.self, from: fileName))
    }
    
    func test_SubBombSuction_decode_noThrows() {
        let fileName = "WeaponBombSuction.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SubBombSuctionGameParameters.self, from: fileName))
    }
    
    func test_SubBombTorpedo_decode_noThrows() {
        let fileName = "WeaponBombTorpedo.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SubBombTorpedoGameParameters.self, from: fileName))
    }
    
    func test_SubLineMarker_decode_noThrows() {
        let fileName = "WeaponLineMarker.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SubLineMarkerGameParameters.self, from: fileName))
    }
    
    func test_SubPointSensor_decode_noThrows() {
        let fileName = "WeaponPointSensor.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SubPointSensorGameParameters.self, from: fileName))
    }
    
    func test_SubPoisonMist_decode_noThrows() {
        let fileName = "WeaponPoisonMist.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SubPoisonMistGameParameters.self, from: fileName))
    }
    
    func test_SubShield_decode_noThrows() {
        let fileName = "WeaponShield.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SubShieldGameParameters.self, from: fileName))
    }
    
    func test_SubSprinkler_decode_noThrows() {
        let fileName = "WeaponSprinkler.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SubSprinklerGameParameters.self, from: fileName))
    }
    
    func test_SubTrap_decode_noThrows() {
        let fileName = "WeaponTrap.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SubTrapGameParameters.self, from: fileName))
    }
}
