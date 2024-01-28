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
        XCTAssertNoThrow(try service.decode(BigBubblerGameParameters.self, from: fileName))
    }
    
    func test_BooyahBomb_decode_noThrows() {
        let fileName = "WeaponSpNiceBall.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(BooyahBombGameParameters.self, from: fileName))
    }
    
    func test_CrabTank_decode_noThrows() {
        let fileName = "WeaponSpChariot.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(CrabTankGameParameters.self, from: fileName))
    }
    
    func testIkuraShoot_decode_noThrows() {
        let fileName = "WeaponSpIkuraShoot.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(IkuraShootGameParameters.self, from: fileName))
    }
    
    func test_Inkjet_decode_noThrows() {
        let fileName = "WeaponSpJetpack.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(InkjetGameParameters.self, from: fileName))
    }
    
    func test_InkStorm_decode_noThrows() {
        let fileName = "WeaponSpInkStorm.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(InkStormGameParameters.self, from: fileName))
    }
    
    func test_InkVac_decode_noThrows() {
        let fileName = "WeaponSpBlower.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(InkVacGameParameters.self, from: fileName))
    }

    func test_KrakenRoyale_decode_noThrows() {
        let fileName = "WeaponSpCastle.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(KrakenRoyaleGameParameters.self, from: fileName))
    }
    
    func test_KillerWail51_decode_noThrows() {
        let fileName = "WeaponSpMicroLaser.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(KillerWail51GameParameters.self, from: fileName))
    }
    
    func test_Rainmaker_decode_noThrows() {
        let fileName = "WeaponSpGachihoko.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(RainmakerGameParameters.self, from: fileName))
    }

    func test_Reefslider_decode_noThrows() {
        let fileName = "WeaponSpSkewer.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ReefsliderGameParameters.self, from: fileName))
    }
    
    func test_Splashdown_decode_noThrows() {
        let fileName = "WeaponSpSuperLanding.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SplashdownGameParameters.self, from: fileName))
    }

    func test_SplattercolorScreen_decode_noThrows() {
        let fileName = "WeaponSpChimney.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SplattercolorScreenGameParameters.self, from: fileName))
    }

    func test_SuperChump_decode_noThrows() {
        let fileName = "WeaponSpFirework.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(SuperChumpGameParameters.self, from: fileName))
    }
    
    func test_Tacticooler_decode_noThrows() {
        let fileName = "WeaponSpEnergyStand.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(TacticoolerGameParameters.self, from: fileName))
    }
    
    func test_TentaMissiles_decode_noThrows() {
        let fileName = "WeaponSpMultiMissile.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(TentaMissilesGameParameters.self, from: fileName))
    }
    
    func test_TripleInkstrike_decode_noThrows() {
        let fileName = "WeaponSpTripleTornado.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(TripleInkstrikeGameParameters.self, from: fileName))
    }
    
    func test_TripleSplashdown_decode_noThrows() {
        let fileName = "WeaponSpPogo.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(TripleSplashdownGameParameters.self, from: fileName))
    }
    
    func test_Trizooka_decode_noThrows() {
        let fileName = "WeaponSpUltraShot.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(TrizookaGameParameters.self, from: fileName))
    }
    
    func test_UltraStamp_decode_noThrows() {
        let fileName = "WeaponSpUltraStamp.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(UltraStampGameParameters.self, from: fileName))
    }
    
    func test_WaveBreaker_decode_noThrows() {
        let fileName = "WeaponSpShockSonar.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(WaveBreakerGameParameters.self, from: fileName))
    }
    

    
    func test_Zipcaster_decode_noThrows() {
        let fileName = "WeaponSpSuperHook.game__GameParameterTable"
        XCTAssertNoThrow(try service.decode(ZipcasterGameParameters.self, from: fileName))
    }
}
