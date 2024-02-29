//
//  SplatanaDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import XCTest
@testable import Splatalyzer

final class SplatanaDataTests: XCTestCase {

    let service = JSONService()
    
    var weaponInfo: WeaponInfoMain!
    
    override func setUpWithError() throws {
        self.weaponInfo = try service.decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    }
    
    override func tearDown() {
        self.weaponInfo = nil
    }

    // MARK: - Splatana Stamper
    func test_SplatanaStamper_properties() {
        do {
            let gameParams = try service.decode(Splatana.self, from: "WeaponSaberNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .splatanaStamper)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            print(data)
            
            XCTAssertEqual(data.mainWeaponId, .splatanaStamper)
            XCTAssertEqual(data.subWeapon, .burstBomb)
            XCTAssertEqual(data.specialWeapon, .zipcaster)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.damageSplatanaVerticalDirect)
            XCTAssertNotNil(data.damageSplatanaVertical)
            XCTAssertNotNil(data.damageSplatanaHorizontalDirect)
            XCTAssertNotNil(data.damageSplatanaHorizontal)
            XCTAssertNotNil(data.inkConsumeSwing)
            XCTAssertNotNil(data.inkConsumeChargeFullCharge)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_NeoSplatanaStamper_properties() {
        do {
            let gameParams = try service.decode(Splatana.self, from: "WeaponSaberNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .neoSplatanaStamper)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            print(data)
            
            XCTAssertEqual(data.mainWeaponId, .neoSplatanaStamper)
            XCTAssertEqual(data.subWeapon, .toxicMist)
            XCTAssertEqual(data.specialWeapon, .crabTank)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.damageSplatanaVerticalDirect)
            XCTAssertNotNil(data.damageSplatanaVertical)
            XCTAssertNotNil(data.damageSplatanaHorizontalDirect)
            XCTAssertNotNil(data.damageSplatanaHorizontal)
            XCTAssertNotNil(data.inkConsumeSwing)
            XCTAssertNotNil(data.inkConsumeChargeFullCharge)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Splatana Wiper
    func test_SplatanaWiper_properties() {
        do {
            let gameParams = try service.decode(Splatana.self, from: "WeaponSaberLite.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .splatanaWiper)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            print(data)
            
            XCTAssertEqual(data.mainWeaponId, .splatanaWiper)
            XCTAssertEqual(data.subWeapon, .torpedo)
            XCTAssertEqual(data.specialWeapon, .ultraStamp)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.damageSplatanaVerticalDirect)
            XCTAssertNotNil(data.damageSplatanaVertical)
            XCTAssertNotNil(data.damageSplatanaHorizontalDirect)
            XCTAssertNotNil(data.damageSplatanaHorizontal)
            XCTAssertNotNil(data.inkConsumeSwing)
            XCTAssertNotNil(data.inkConsumeChargeFullCharge)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_SplatanaWiperDeco_properties() {
        do {
            let gameParams = try service.decode(Splatana.self, from: "WeaponSaberLite.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .splatanaWiperDeco)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            print(data)
            
            XCTAssertEqual(data.mainWeaponId, .splatanaWiperDeco)
            XCTAssertEqual(data.subWeapon, .squidBeakon)
            XCTAssertEqual(data.specialWeapon, .tentaMissiles)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.damageSplatanaVerticalDirect)
            XCTAssertNotNil(data.damageSplatanaVertical)
            XCTAssertNotNil(data.damageSplatanaHorizontalDirect)
            XCTAssertNotNil(data.damageSplatanaHorizontal)
            XCTAssertNotNil(data.inkConsumeSwing)
            XCTAssertNotNil(data.inkConsumeChargeFullCharge)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

}
