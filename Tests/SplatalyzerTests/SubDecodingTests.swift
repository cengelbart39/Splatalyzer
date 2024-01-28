//
//  SubDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class SubDecodingTests: XCTestCase {

    let service = JSONService()
    
    func test_AngleShooter_decode_noThrows() {
        let fileName = "WeaponLineMarker.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(AngleShooterGameParameters.self, from: fileName))
    }
    
    func test_Autobomb_decode_noThrows() {
        let fileName = "WeaponBombRobot.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(AutobombGameParameters.self, from: fileName))
    }
    
    func test_BurstBomb_decode_noThrows() {
        let fileName = "WeaponBombQuick.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BurstBombGameParameters.self, from: fileName))
    }
    
    func test_CurlingBomb_decode_noThrows() {
        let fileName = "WeaponBombCurling.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(CurlingBombGameParameters.self, from: fileName))
    }
    
    func test_FizzyBomb_decode_noThrows() {
        let fileName = "WeaponBombFizzy.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(FizzyBombGameParameters.self, from: fileName))
    }
    
    func test_InkMine_decode_noThrows() {
        let fileName = "WeaponTrap.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(InkMineGameParameters.self, from: fileName))
    }
    
    func test_PointSensor_decode_noThrows() {
        let fileName = "WeaponPointSensor.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(PointSensorGameParameters.self, from: fileName))
    }
    
    func test_SplashWall_decode_noThrows() {
        let fileName = "WeaponShield.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SplashWallGameParameters.self, from: fileName))
    }
    
    func test_SplatBomb_decode_noThrows() {
        let fileName = "WeaponBombSplash.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SplatBombGameParameters.self, from: fileName))
    }
    
    func test_Sprinkler_decode_noThrows() {
        let fileName = "WeaponSprinkler.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SprinklerGameParameters.self, from: fileName))
    }
    
    func test_SquidBeakon_decode_noThrows() {
        let fileName = "WeaponBeacon.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SquidBeakonGameParameters.self, from: fileName))
    }

    
    func test_SuctionBomb_decode_noThrows() {
        let fileName = "WeaponBombSuction.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SuctionBombGameParameters.self, from: fileName))
    }
    
    func test_Torpedo_decode_noThrows() {
        let fileName = "WeaponBombTorpedo.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(TorpedoGameParameters.self, from: fileName))
    }
    
    func test_ToxicMist_decode_noThrows() {
        let fileName = "WeaponPoisonMist.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ToxicMistGameParameters.self, from: fileName))
    }
}
