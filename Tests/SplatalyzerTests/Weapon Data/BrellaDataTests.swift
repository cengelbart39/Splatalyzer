//
//  BrellaDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import XCTest
@testable import Splatalyzer

final class BrellaDataTests: XCTestCase {

    let service = JSONService()
    
    var weaponInfo: WeaponInfoMain!
    
    override func setUp() {
        self.weaponInfo = try! service.decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    }
    
    override func tearDown() {
        self.weaponInfo = nil
    }

    // MARK: - Splat Brella
    func test_SplatBrella_properties() {
        do {
            let gameParams = try service.decode(Brella.self, from: "WeaponShelterNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .splatBrella)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .splatBrella)
            XCTAssertEqual(data.subWeapon, .sprinkler)
            XCTAssertEqual(data.specialWeapon, .tripleInkstrike)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.inkConsumeUmbrellaShelterCanopy)
            XCTAssertNotNil(data.inkConsumeWeaponShelterShotgun)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_SorellaBrella_properties() {
        do {
            let gameParams = try service.decode(Brella.self, from: "WeaponShelterNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .sorellaBrella)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .sorellaBrella)
            XCTAssertEqual(data.subWeapon, .autobomb)
            XCTAssertEqual(data.specialWeapon, .inkjet)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.inkConsumeUmbrellaShelterCanopy)
            XCTAssertNotNil(data.inkConsumeWeaponShelterShotgun)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    // MARK: - Tenta Brella
    func test_TentaBrella_properties() {
        do {
            let gameParams = try service.decode(Brella.self, from: "WeaponShelterWide.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .tentaBrella)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .tentaBrella)
            XCTAssertEqual(data.subWeapon, .squidBeakon)
            XCTAssertEqual(data.specialWeapon, .inkVac)
            XCTAssertEqual(data.weaponSpeedType, .slow)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.canopyHP)
            XCTAssertNotNil(data.inkConsumeUmbrellaShelterCanopy)
            XCTAssertNotNil(data.inkConsumeWeaponShelterShotgun)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_TentaSorellaBrella_properties() {
        do {
            let gameParams = try service.decode(Brella.self, from: "WeaponShelterWide.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .tentaSorellaBrella)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .tentaSorellaBrella)
            XCTAssertEqual(data.subWeapon, .inkMine)
            XCTAssertEqual(data.specialWeapon, .trizooka)
            XCTAssertEqual(data.weaponSpeedType, .slow)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.canopyHP)
            XCTAssertNotNil(data.inkConsumeUmbrellaShelterCanopy)
            XCTAssertNotNil(data.inkConsumeWeaponShelterShotgun)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    // MARK: - Undercover Brella
    func test_UndercoverBrella_properties() {
        do {
            let gameParams = try service.decode(Brella.self, from: "WeaponShelterCompact.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .undercoverBrella)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .undercoverBrella)
            XCTAssertEqual(data.subWeapon, .inkMine)
            XCTAssertEqual(data.specialWeapon, .reefslider)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.canopyHP)
            XCTAssertNotNil(data.inkConsumeWeaponShelterShotgun)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_UndercoverSorellaBrella_properties() {
        do {
            let gameParams = try service.decode(Brella.self, from: "WeaponShelterCompact.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .undercoverSorellaBrella)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .undercoverSorellaBrella)
            XCTAssertEqual(data.subWeapon, .torpedo)
            XCTAssertEqual(data.specialWeapon, .splattercolorScreen)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.canopyHP)
            XCTAssertNotNil(data.inkConsumeWeaponShelterShotgun)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
