//
//  BrushDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import XCTest
@testable import Splatalyzer

final class BrushDataTests: XCTestCase {

    let service = JSONService()
    
    var weaponInfo: WeaponInfoMain!
    
    override func setUp() {
        self.weaponInfo = try! service.decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    }
    
    override func tearDown() {
        self.weaponInfo = nil
    }

    // MARK: - Inkbrush
    func test_Inkbrush_properties() {
        do {
            let gameParams = try service.decode(Brush.self, from: "WeaponBrushMini.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .inkbrush)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                        
            XCTAssertEqual(data.mainWeaponId, .inkbrush)
            XCTAssertEqual(data.subWeapon, .splatBomb)
            XCTAssertEqual(data.specialWeapon, .killerWail51)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.bodyDamage)
            XCTAssertNotNil(data.swingUnitGroupDamageMin)
            XCTAssertNotNil(data.swingUnitGroupDamageMax)
            XCTAssertNotNil(data.inkConsumeWeaponSwing)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_InkbrushNouveau_properties() {
        do {
            let gameParams = try service.decode(Brush.self, from: "WeaponBrushMini.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .inkbrushNouveau)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                        
            XCTAssertEqual(data.mainWeaponId, .inkbrushNouveau)
            XCTAssertEqual(data.subWeapon, .inkMine)
            XCTAssertEqual(data.specialWeapon, .ultraStamp)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.bodyDamage)
            XCTAssertNotNil(data.swingUnitGroupDamageMin)
            XCTAssertNotNil(data.swingUnitGroupDamageMax)
            XCTAssertNotNil(data.inkConsumeWeaponSwing)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Octobrush
    func test_Octobrush_properties() {
        do {
            let gameParams = try service.decode(Brush.self, from: "WeaponBrushNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .octobrush)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .octobrush)
            XCTAssertEqual(data.subWeapon, .suctionBomb)
            XCTAssertEqual(data.specialWeapon, .zipcaster)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.bodyDamage)
            XCTAssertNotNil(data.swingUnitGroupDamageMin)
            XCTAssertNotNil(data.swingUnitGroupDamageMax)
            XCTAssertNotNil(data.inkConsumeWeaponSwing)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_OctobrushNouveau_properties() {
        do {
            let gameParams = try service.decode(Brush.self, from: "WeaponBrushNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .octobrushNouveau)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                        
            XCTAssertEqual(data.mainWeaponId, .octobrushNouveau)
            XCTAssertEqual(data.subWeapon, .squidBeakon)
            XCTAssertEqual(data.specialWeapon, .inkStorm)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.bodyDamage)
            XCTAssertNotNil(data.swingUnitGroupDamageMin)
            XCTAssertNotNil(data.swingUnitGroupDamageMax)
            XCTAssertNotNil(data.inkConsumeWeaponSwing)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_OrderbrushReplica_properties() {
        do {
            let gameParams = try service.decode(Brush.self, from: "WeaponBrushNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .orderbrushReplica)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .orderbrushReplica)
            XCTAssertEqual(data.subWeapon, .suctionBomb)
            XCTAssertEqual(data.specialWeapon, .zipcaster)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.bodyDamage)
            XCTAssertNotNil(data.swingUnitGroupDamageMin)
            XCTAssertNotNil(data.swingUnitGroupDamageMax)
            XCTAssertNotNil(data.inkConsumeWeaponSwing)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    
    // MARK: - Painbrush
    func test_Painbrush_properties() {
        do {
            let gameParams = try service.decode(Brush.self, from: "WeaponBrushHeavy.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .painbrush)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                        
            XCTAssertEqual(data.mainWeaponId, .painbrush)
            XCTAssertEqual(data.subWeapon, .curlingBomb)
            XCTAssertEqual(data.specialWeapon, .waveBreaker)
            XCTAssertEqual(data.weaponSpeedType, .mid)
            XCTAssertNotNil(data.bodyDamage)
            XCTAssertNotNil(data.swingUnitGroupDamageMin)
            XCTAssertNotNil(data.swingUnitGroupDamageMax)
            XCTAssertNotNil(data.inkConsumeWeaponSwing)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_PainbrushNouveau_properties() {
        do {
            let gameParams = try service.decode(Brush.self, from: "WeaponBrushHeavy.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .painbrushNouveau)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                        
            XCTAssertEqual(data.mainWeaponId, .painbrushNouveau)
            XCTAssertEqual(data.subWeapon, .pointSensor)
            XCTAssertEqual(data.specialWeapon, .tentaMissiles)
            XCTAssertEqual(data.weaponSpeedType, .mid)
            XCTAssertNotNil(data.bodyDamage)
            XCTAssertNotNil(data.swingUnitGroupDamageMin)
            XCTAssertNotNil(data.swingUnitGroupDamageMax)
            XCTAssertNotNil(data.inkConsumeWeaponSwing)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
