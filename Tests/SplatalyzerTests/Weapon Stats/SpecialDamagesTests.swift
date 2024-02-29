//
//  SpecialDamagesTests.swift
//  
//
//  Created by Christopher Engelbart on 2/27/24.
//

import XCTest
@testable import Splatalyzer

final class SpecialDamagesTests: XCTestCase {
    
    let service = JSONService()

    func test_StatHelper_specialDamages_bigBubbler() throws {
        
        let gameParams = try service.decode(BigBubbler.self, from: "WeaponSpGreatBarrier.game__GameParameterTable")
        
        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertTrue(dmgs.isEmpty)
    }

    func test_StatHelper_specialDamages_booyahBomb() throws {
        
        let gameParams = try service.decode(BooyahBomb.self, from: "WeaponSpNiceBall.game__GameParameterTable")
        
        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .specialTick))
    }
    
    func test_StatHelper_specialDamages_crabTank() throws {
        
        let gameParams = try service.decode(CrabTank.self, from: "WeaponSpChariot.game__GameParameterTable")
        
        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .specialCannon))
        XCTAssertTrue(dmgs.contains(type: .specialBulletMax))
        XCTAssertTrue(dmgs.contains(type: .specialBulletMin))
        XCTAssertTrue(dmgs.contains(type: .specialBump))
    }
    
    func test_StatHelper_specialDamages_inkStorm() throws {
        
        let gameParams = try service.decode(InkStorm.self, from: "WeaponSpInkStorm.game__GameParameterTable")

        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .specialTick))
    }

    func test_StatHelper_specialDamages_inkVac() throws {
        
        let gameParams = try service.decode(InkVac.self, from: "WeaponSpBlower.game__GameParameterTable")
        
        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .specialMaxCharge))
        XCTAssertTrue(dmgs.contains(type: .specialMinCharge))
    }
    
    func test_StatHelper_specialDamages_inkjet() throws {
        
        let gameParams = try service.decode(Inkjet.self, from: "WeaponSpJetpack.game__GameParameterTable")

        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .bombNormal))
    }
    
    func test_StatHelper_specialDamages_killerWail51() throws {
        
        let gameParams = try service.decode(KillerWail51.self, from: "WeaponSpMicroLaser.game__GameParameterTable")

        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .specialTick))
    }

    func test_StatHelper_specialDamages_krakenRoyale() throws {
        
        let gameParams = try service.decode(KrakenRoyale.self, from: "WeaponSpCastle.game__GameParameterTable")

        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .specialJump))
    }
    
    func test_StatHelper_specialDamages_reefslider() throws {
        
        let gameParams = try service.decode(Reefslider.self, from: "WeaponSpSkewer.game__GameParameterTable")

        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .bombNormal))
    }

    func test_StatHelper_specialDamages_splattercolorScreen() throws {
        
        let gameParams = try service.decode(SplattercolorScreen.self, from: "WeaponSpChimney.game__GameParameterTable")

        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertTrue(dmgs.isEmpty)
    }
    
    func test_StatHelper_specialDamages_superChump() throws {
        
        let gameParams = try service.decode(SuperChump.self, from: "WeaponSpFirework.game__GameParameterTable")
        
        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .bombNormal))
    }
    
    func test_StatHelper_specialDamages_tacticooler() throws {
        
        let gameParams = try service.decode(Tacticooler.self, from: "WeaponSpEnergyStand.game__GameParameterTable")

        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertTrue(dmgs.isEmpty)
    }

    func test_StatHelper_specialDamages_tentaMissiles() throws {
        
        let gameParams = try service.decode(TentaMissiles.self, from: "WeaponSpMultiMissile.game__GameParameterTable")
        
        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .bombNormal))
    }
    
    func test_StatHelper_specialDamages_tripleInkstrike() throws {
        
        let gameParams = try service.decode(TripleInkstrike.self, from: "WeaponSpTripleTornado.game__GameParameterTable")

        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertTrue(dmgs.isEmpty)
    }

    func test_StatHelper_specialDamages_tripleSplashdown() throws {
        
        let gameParams = try service.decode(TripleSplashdown.self, from: "WeaponSpPogo.game__GameParameterTable")

        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .bombNormal))
    }
    
    func test_StatHelper_specialDamages_trizooka() throws {
        
        let gameParams = try service.decode(Trizooka.self, from: "WeaponSpUltraShot.game__GameParameterTable")

        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .bombNormal))
    }

    func test_StatHelper_specialDamages_ultraStamp() throws {
        
        let gameParams = try service.decode(UltraStamp.self, from: "WeaponSpUltraStamp.game__GameParameterTable")
        
        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .specialThrow))
        XCTAssertTrue(dmgs.contains(type: .specialSwing))
    }
    
    func test_StatHelper_specialDamages_waveBreaker() throws {
        
        let gameParams = try service.decode(WaveBreaker.self, from: "WeaponSpShockSonar.game__GameParameterTable")

        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .wave))
    }

    func test_StatHelper_specialDamages_zipcaster() throws {
        
        let gameParams = try service.decode(Zipcaster.self, from: "WeaponSpSuperHook.game__GameParameterTable")

        let data = SpecialWeaponData(container: gameParams)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .bombNormal))
    }
}
