//
//  SpecialDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class SpecialDecodingTests: XCTestCase {

    let service = JSONServiceForTests()
    
    func test_SpecialBlower_decode_noThrows() {
        let fileName = "WeaponSpBlower.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialBlowerGameParameters.self, from: fileName))
    }

    func test_SpecialCastle_decode_noThrows() {
        let fileName = "WeaponSpCastle.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialCastleGameParameters.self, from: fileName))
    }
    
    func test_SpecialChariot_decode_noThrows() {
        let fileName = "WeaponSpChariot.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialChariotGameParameters.self, from: fileName))
    }
    
    func test_SpecialChimney_decode_noThrows() {
        let fileName = "WeaponSpChimney.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialChimneyGameParameters.self, from: fileName))
    }
    
    func test_SpecialEnergyStand_decode_noThrows() {
        let fileName = "WeaponSpEnergyStand.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialEnergyStandGameParameters.self, from: fileName))
    }
    
    func test_SpecialFirework_decode_noThrows() {
        let fileName = "WeaponSpFirework.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialFireworkGameParameters.self, from: fileName))
    }
    
    func test_SpecialGachihoko_decode_noThrows() {
        let fileName = "WeaponSpGachihoko.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialGachihokoGameParameters.self, from: fileName))
    }
    
    func test_SpecialGreatBarrier_decode_noThrows() {
        let fileName = "WeaponSpGreatBarrier.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialGreatBarrierGameParameters.self, from: fileName))
    }
    
    func test_SpecialIkuraShoot_decode_noThrows() {
        let fileName = "WeaponSpIkuraShoot.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialIkuraShootGameParameters.self, from: fileName))
    }
    
    func test_SpecialInkStorm_decode_noThrows() {
        let fileName = "WeaponSpInkStorm.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialInkStormGameParameters.self, from: fileName))
    }
    
    func test_SpecialJetpack_decode_noThrows() {
        let fileName = "WeaponSpJetpack.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialJetpackGameParameters.self, from: fileName))
    }
    
    func test_SpecialMicroLaser_decode_noThrows() {
        let fileName = "WeaponSpMicroLaser.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialMicroLaserGameParameters.self, from: fileName))
    }
    
    func test_SpecialMultiMissile_decode_noThrows() {
        let fileName = "WeaponSpMultiMissile.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialMultiMissileGameParameters.self, from: fileName))
    }
    
    func test_SpecialNiceBall_decode_noThrows() {
        let fileName = "WeaponSpNiceBall.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialNiceBallGameParameters.self, from: fileName))
    }
    
    func test_SpecialPogo_decode_noThrows() {
        let fileName = "WeaponSpPogo.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialPogoGameParameters.self, from: fileName))
    }
    
    func test_SpecialShockSonar_decode_noThrows() {
        let fileName = "WeaponSpShockSonar.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialShockSonarGameParameters.self, from: fileName))
    }
    
    func test_SpecialSkewer_decode_noThrows() {
        let fileName = "WeaponSpSkewer.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialSkewerGameParameters.self, from: fileName))
    }
    
    func test_SpecialSuperHook_decode_noThrows() {
        let fileName = "WeaponSpSuperHook.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialSuperHookGameParameters.self, from: fileName))
    }
    
    func test_SpecialSuperLanding_decode_noThrows() {
        let fileName = "WeaponSpSuperLanding.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialSuperLandingGameParameters.self, from: fileName))
    }
    
    func test_SpecialTripleTornado_decode_noThrows() {
        let fileName = "WeaponSpTripleTornado.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialTripleTornadoGameParameters.self, from: fileName))
    }
    
    func test_SpecialUltraShot_decode_noThrows() {
        let fileName = "WeaponSpUltraShot.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialUltraShotGameParameters.self, from: fileName))
    }
    
    func test_SpecialUltraStamp_decode_noThrows() {
        let fileName = "WeaponSpUltraStamp.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SpecialUltraStampGameParameters.self, from: fileName))
    }
}
