//
//  StringerDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import XCTest
@testable import Splatalyzer

final class StringerDataTests: XCTestCase {

    let service = JSONService()
    
    var weaponInfo: WeaponInfoMain!
    
    override func setUpWithError() throws {
        self.weaponInfo = try service.decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    }
    
    override func tearDown() {
        self.weaponInfo = nil
    }
    
    // MARK: - REEF-LUX 450
    func test_MainWeaponData_init_Stringer_reeflux450() {
        do {
            let gameParams = try service.decode(Stringer.self, from: "WeaponStringerShort.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .reeflux450)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                        
            XCTAssertEqual(data.mainWeaponId, .reeflux450)
            XCTAssertEqual(data.subWeapon, .curlingBomb)
            XCTAssertEqual(data.specialWeapon, .tentaMissiles)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.chargeFrameFullCharge)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.inkConsumeChargeFullCharge)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_MainWeaponData_init_Stringer_reeflux450Deco() {
        do {
            let gameParams = try service.decode(Stringer.self, from: "WeaponStringerShort.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .reeflux450Deco)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                        
            XCTAssertEqual(data.mainWeaponId, .reeflux450Deco)
            XCTAssertEqual(data.subWeapon, .splashWall)
            XCTAssertEqual(data.specialWeapon, .reefslider)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.chargeFrameFullCharge)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.inkConsumeChargeFullCharge)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Tri-Stringer
    func test_MainWeaponData_init_Stringer_triStringer() {
        do {
            let gameParams = try service.decode(Stringer.self, from: "WeaponStringerNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .triStringer)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                        
            XCTAssertEqual(data.mainWeaponId, .triStringer)
            XCTAssertEqual(data.subWeapon, .toxicMist)
            XCTAssertEqual(data.specialWeapon, .killerWail51)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.chargeFrameFullCharge)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.inkConsumeChargeFullCharge)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_MainWeaponData_init_Stringer_inklineTriStringer() {
        do {
            let gameParams = try service.decode(Stringer.self, from: "WeaponStringerNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .inklineTriStringer)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                        
            XCTAssertEqual(data.mainWeaponId, .inklineTriStringer)
            XCTAssertEqual(data.subWeapon, .sprinkler)
            XCTAssertEqual(data.specialWeapon, .superChump)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.chargeFrameFullCharge)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.inkConsumeChargeFullCharge)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_MainWeaponData_init_Stringer_orderStringerReplica() {
        do {
            let gameParams = try service.decode(Stringer.self, from: "WeaponStringerNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .orderStringerReplica)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                        
            XCTAssertEqual(data.mainWeaponId, .orderStringerReplica)
            XCTAssertEqual(data.subWeapon, .toxicMist)
            XCTAssertEqual(data.specialWeapon, .killerWail51)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.chargeFrameFullCharge)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.inkConsumeChargeFullCharge)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    // MARK: - Wellspring V
    func test_MainWeaponData_init_Stringer_wellspringV() {
        do {
            let gameParams = try service.decode(Stringer.self, from: "WeaponStringerExplosion.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .wellspringV)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                        
            XCTAssertEqual(data.mainWeaponId, .wellspringV)
            XCTAssertEqual(data.subWeapon, .autobomb)
            XCTAssertEqual(data.specialWeapon, .ultraStamp)
            XCTAssertEqual(data.weaponSpeedType, .slow)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertFalse(data.blastDamageDistance.isEmpty)
            XCTAssertNotNil(data.chargeFrameFullCharge)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.inkConsumeChargeFullCharge)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_MainWeaponData_init_Stringer_customWellspringV() {
        do {
            let gameParams = try service.decode(Stringer.self, from: "WeaponStringerExplosion.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .customWellspringV)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                        
            XCTAssertEqual(data.mainWeaponId, .customWellspringV)
            XCTAssertEqual(data.subWeapon, .pointSensor)
            XCTAssertEqual(data.specialWeapon, .waveBreaker)
            XCTAssertEqual(data.weaponSpeedType, .slow)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertFalse(data.blastDamageDistance.isEmpty)
            XCTAssertNotNil(data.chargeFrameFullCharge)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.inkConsumeChargeFullCharge)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

}
