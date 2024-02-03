//
//  SpecialDecodingTests.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

final class SpecialDecodingTests: XCTestCase {

    let service = JSONService()
    
    func test_BigBubbler_decode_noThrows() {
        let fileName = "WeaponSpGreatBarrier.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BigBubbler.self, from: fileName))
    }
    
    func test_BooyahBomb_decode_noThrows() {
        let fileName = "WeaponSpNiceBall.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BooyahBomb.self, from: fileName))
    }
    
    func test_CrabTank_decode_noThrows() {
        let fileName = "WeaponSpChariot.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(CrabTank.self, from: fileName))
    }
    
    func testIkuraShoot_decode_noThrows() {
        let fileName = "WeaponSpIkuraShoot.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(IkuraShoot.self, from: fileName))
    }
    
    func test_Inkjet_decode_noThrows() {
        let fileName = "WeaponSpJetpack.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Inkjet.self, from: fileName))
    }
    
    func test_InkStorm_decode_noThrows() {
        let fileName = "WeaponSpInkStorm.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(InkStorm.self, from: fileName))
    }
    
    func test_InkVac_decode_noThrows() {
        let fileName = "WeaponSpBlower.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(InkVac.self, from: fileName))
    }

    func test_KrakenRoyale_decode_noThrows() {
        let fileName = "WeaponSpCastle.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(KrakenRoyale.self, from: fileName))
    }
    
    func test_KillerWail51_decode_noThrows() {
        let fileName = "WeaponSpMicroLaser.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(KillerWail51.self, from: fileName))
    }
    
    func test_Rainmaker_decode_noThrows() {
        let fileName = "WeaponSpGachihoko.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Rainmaker.self, from: fileName))
    }

    func test_Reefslider_decode_noThrows() {
        let fileName = "WeaponSpSkewer.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Reefslider.self, from: fileName))
    }
    
    func test_Splashdown_decode_noThrows() {
        let fileName = "WeaponSpSuperLanding.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Splashdown.self, from: fileName))
    }

    func test_SplattercolorScreen_decode_noThrows() {
        let fileName = "WeaponSpChimney.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SplattercolorScreen.self, from: fileName))
    }

    func test_SuperChump_decode_noThrows() {
        let fileName = "WeaponSpFirework.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SuperChump.self, from: fileName))
    }
    
    func test_Tacticooler_decode_noThrows() {
        let fileName = "WeaponSpEnergyStand.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Tacticooler.self, from: fileName))
    }
    
    func test_TentaMissiles_decode_noThrows() {
        let fileName = "WeaponSpMultiMissile.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(TentaMissiles.self, from: fileName))
    }
    
    func test_TripleInkstrike_decode_noThrows() {
        let fileName = "WeaponSpTripleTornado.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(TripleInkstrike.self, from: fileName))
    }
    
    func test_TripleSplashdown_decode_noThrows() {
        let fileName = "WeaponSpPogo.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(TripleSplashdown.self, from: fileName))
    }
    
    func test_Trizooka_decode_noThrows() {
        let fileName = "WeaponSpUltraShot.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Trizooka.self, from: fileName))
    }
    
    func test_UltraStamp_decode_noThrows() {
        let fileName = "WeaponSpUltraStamp.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(UltraStamp.self, from: fileName))
    }
    
    func test_WaveBreaker_decode_noThrows() {
        let fileName = "WeaponSpShockSonar.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(WaveBreaker.self, from: fileName))
    }
    

    
    func test_Zipcaster_decode_noThrows() {
        let fileName = "WeaponSpSuperHook.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(Zipcaster.self, from: fileName))
    }
}
