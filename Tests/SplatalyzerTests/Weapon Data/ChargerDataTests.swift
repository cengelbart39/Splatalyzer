//
//  ChargerDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import XCTest
@testable import Splatalyzer

final class ChargerDataTests: XCTestCase {

    let service = JSONService()
    
    var weaponInfo: WeaponInfoMain!
    
    override func setUp() {
        self.weaponInfo = try! service.decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    }
    
    override func tearDown() {
        self.weaponInfo = nil
    }

    // MARK: - Bamboozler 14
    func test_MainWeaponData_init_Charger_bamboozler14MkI() {
        do {
            let gameParams = try service.decode(Charger.self, from: "WeaponChargerLight.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .bamboozler14MkI)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                    
            XCTAssertEqual(data.mainWeaponId, .bamboozler14MkI)
            XCTAssertEqual(data.subWeapon, .autobomb)
            XCTAssertEqual(data.specialWeapon, .killerWail51)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueFullCharge)
            XCTAssertNotNil(data.damageValueMaxCharge)
            XCTAssertNotNil(data.damageValueMinCharge)
            XCTAssertNotNil(data.inkConsumeFullCharge)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_MainWeaponData_init_Charger_bamboozler14MkII() {
        do {
            let gameParams = try service.decode(Charger.self, from: "WeaponChargerLight.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .bamboozler14MkII)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                    
            XCTAssertEqual(data.mainWeaponId, .bamboozler14MkII)
            XCTAssertEqual(data.subWeapon, .fizzyBomb)
            XCTAssertEqual(data.specialWeapon, .superChump)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueFullCharge)
            XCTAssertNotNil(data.damageValueMaxCharge)
            XCTAssertNotNil(data.damageValueMinCharge)
            XCTAssertNotNil(data.inkConsumeFullCharge)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    
    // MARK: - E-Liter 4K
    func test_MainWeaponData_init_Charger_eliter4K() {
        do {
            let gameParams = try service.decode(Charger.self, from: "WeaponChargerLong.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .eliter4K)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                                
            XCTAssertEqual(data.mainWeaponId, .eliter4K)
            XCTAssertEqual(data.subWeapon, .inkMine)
            XCTAssertEqual(data.specialWeapon, .waveBreaker)
            XCTAssertEqual(data.weaponSpeedType, .slow)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueFullCharge)
            XCTAssertNotNil(data.damageValueMaxCharge)
            XCTAssertNotNil(data.damageValueMinCharge)
            XCTAssertNotNil(data.chargeFrameFullCharge)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.inkConsumeFullCharge)
            XCTAssertNotNil(data.inkConsumeMinCharge)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_MainWeaponData_init_Charger_customEliter4K() {
        do {
            let gameParams = try service.decode(Charger.self, from: "WeaponChargerLong.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .customEliter4K)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                                
            XCTAssertEqual(data.mainWeaponId, .customEliter4K)
            XCTAssertEqual(data.subWeapon, .squidBeakon)
            XCTAssertEqual(data.specialWeapon, .krakenRoyale)
            XCTAssertEqual(data.weaponSpeedType, .slow)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueFullCharge)
            XCTAssertNotNil(data.damageValueMaxCharge)
            XCTAssertNotNil(data.damageValueMinCharge)
            XCTAssertNotNil(data.chargeFrameFullCharge)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.inkConsumeFullCharge)
            XCTAssertNotNil(data.inkConsumeMinCharge)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - E-Liter 4K Scope
    func test_MainWeaponData_init_Charger_eliter4KScope() {
        do {
            let gameParams = try service.decode(Charger.self, from: "WeaponChargerLongScope.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .eliter4KScope)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                    
            XCTAssertEqual(data.mainWeaponId, .eliter4KScope)
            XCTAssertEqual(data.subWeapon, .inkMine)
            XCTAssertEqual(data.specialWeapon, .waveBreaker)
            XCTAssertEqual(data.weaponSpeedType, .slow)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueFullCharge)
            XCTAssertNotNil(data.damageValueMaxCharge)
            XCTAssertNotNil(data.damageValueMinCharge)
            XCTAssertNotNil(data.chargeFrameFullCharge)
            XCTAssertNotNil(data.inkConsumeFullCharge)
            XCTAssertNotNil(data.inkConsumeMinCharge)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_MainWeaponData_init_Charger_customEliter4KScope() {
        do {
            let gameParams = try service.decode(Charger.self, from: "WeaponChargerLongScope.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .customEliter4KScope)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                    
            XCTAssertEqual(data.mainWeaponId, .customEliter4KScope)
            XCTAssertEqual(data.subWeapon, .squidBeakon)
            XCTAssertEqual(data.specialWeapon, .krakenRoyale)
            XCTAssertEqual(data.weaponSpeedType, .slow)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueFullCharge)
            XCTAssertNotNil(data.damageValueMaxCharge)
            XCTAssertNotNil(data.damageValueMinCharge)
            XCTAssertNotNil(data.chargeFrameFullCharge)
            XCTAssertNotNil(data.inkConsumeFullCharge)
            XCTAssertNotNil(data.inkConsumeMinCharge)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Goo Tuber
    func test_MainWeaponData_init_Charger_gooTuber() {
        do {
            let gameParams = try service.decode(Charger.self, from: "WeaponChargerKeeper.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .gooTuber)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .gooTuber)
            XCTAssertEqual(data.subWeapon, .torpedo)
            XCTAssertEqual(data.specialWeapon, .tentaMissiles)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueFullCharge)
            XCTAssertNotNil(data.damageValueMaxCharge)
            XCTAssertNotNil(data.damageValueMinCharge)
            XCTAssertNotNil(data.chargeFrameFullCharge)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.inkConsumeFullCharge)
            XCTAssertNotNil(data.inkConsumeMinCharge)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_MainWeaponData_init_Charger_customGooTuber() {
        do {
            let gameParams = try service.decode(Charger.self, from: "WeaponChargerKeeper.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .customGooTuber)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .customGooTuber)
            XCTAssertEqual(data.subWeapon, .fizzyBomb)
            XCTAssertEqual(data.specialWeapon, .ultraStamp)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueFullCharge)
            XCTAssertNotNil(data.damageValueMaxCharge)
            XCTAssertNotNil(data.damageValueMinCharge)
            XCTAssertNotNil(data.chargeFrameFullCharge)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.inkConsumeFullCharge)
            XCTAssertNotNil(data.inkConsumeMinCharge)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    // MARK: - Snipewriter
    func test_MainWeaponData_init_Charger_snipewriter5H() {
        do {
            let gameParams = try service.decode(Charger.self, from: "WeaponChargerPencil.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .snipewriter5H)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .snipewriter5H)
            XCTAssertEqual(data.subWeapon, .sprinkler)
            XCTAssertEqual(data.specialWeapon, .tacticooler)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueFullCharge)
            XCTAssertNotNil(data.damageValueMaxCharge)
            XCTAssertNotNil(data.damageValueMinCharge)
            XCTAssertNotNil(data.chargeFrameFullCharge)
            XCTAssertNotNil(data.inkConsumeFullCharge)
            XCTAssertNotNil(data.inkConsumeMinCharge)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_MainWeaponData_init_Charger_snipewriter5B() {
        do {
            let gameParams = try service.decode(Charger.self, from: "WeaponChargerPencil.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .snipewriter5B)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .snipewriter5B)
            XCTAssertEqual(data.subWeapon, .splashWall)
            XCTAssertEqual(data.specialWeapon, .inkStorm)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueFullCharge)
            XCTAssertNotNil(data.damageValueMaxCharge)
            XCTAssertNotNil(data.damageValueMinCharge)
            XCTAssertNotNil(data.chargeFrameFullCharge)
            XCTAssertNotNil(data.inkConsumeFullCharge)
            XCTAssertNotNil(data.inkConsumeMinCharge)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Splat Charger
    func test_MainWeaponData_init_Charger_splatCharger() {
        do {
            let gameParams = try service.decode(Charger.self, from: "WeaponChargerNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .splatCharger)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .splatCharger)
            XCTAssertEqual(data.subWeapon, .splatBomb)
            XCTAssertEqual(data.specialWeapon, .inkVac)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueFullCharge)
            XCTAssertNotNil(data.damageValueMaxCharge)
            XCTAssertNotNil(data.damageValueMinCharge)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.inkConsumeFullCharge)
            XCTAssertNotNil(data.inkConsumeMinCharge)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_MainWeaponData_init_Charger_zfSplatCharger_properties() {
        do {
            let gameParams = try service.decode(Charger.self, from: "WeaponChargerNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .zfSplatCharger)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .zfSplatCharger)
            XCTAssertEqual(data.subWeapon, .splashWall)
            XCTAssertEqual(data.specialWeapon, .tripleInkstrike)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueFullCharge)
            XCTAssertNotNil(data.damageValueMaxCharge)
            XCTAssertNotNil(data.damageValueMinCharge)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.inkConsumeFullCharge)
            XCTAssertNotNil(data.inkConsumeMinCharge)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_MainWeaponData_init_Charger_orderChargerReplica() {
        do {
            let gameParams = try service.decode(Charger.self, from: "WeaponChargerNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .orderChargerReplica)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .orderChargerReplica)
            XCTAssertEqual(data.subWeapon, .splatBomb)
            XCTAssertEqual(data.specialWeapon, .inkVac)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueFullCharge)
            XCTAssertNotNil(data.damageValueMaxCharge)
            XCTAssertNotNil(data.damageValueMinCharge)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.inkConsumeFullCharge)
            XCTAssertNotNil(data.inkConsumeMinCharge)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Splatterscope
    func test_MainWeaponData_init_Charger_splatterscope() {
        do {
            let gameParams = try service.decode(Charger.self, from: "WeaponChargerNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .splatterscope)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .splatterscope)
            XCTAssertEqual(data.subWeapon, .splatBomb)
            XCTAssertEqual(data.specialWeapon, .inkVac)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueFullCharge)
            XCTAssertNotNil(data.damageValueMaxCharge)
            XCTAssertNotNil(data.damageValueMinCharge)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.inkConsumeFullCharge)
            XCTAssertNotNil(data.inkConsumeMinCharge)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_MainWeaponData_init_Charger_zfSplatterscope() {
        do {
            let gameParams = try service.decode(Charger.self, from: "WeaponChargerNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .zfSplatterscope)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .zfSplatterscope)
            XCTAssertEqual(data.subWeapon, .splashWall)
            XCTAssertEqual(data.specialWeapon, .tripleInkstrike)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueFullCharge)
            XCTAssertNotNil(data.damageValueMaxCharge)
            XCTAssertNotNil(data.damageValueMinCharge)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.inkConsumeFullCharge)
            XCTAssertNotNil(data.inkConsumeMinCharge)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    // MARK: - Squiffer
    func test_MainWeaponData_init_Charger_classicSquiffer() {
        do {
            let gameParams = try service.decode(Charger.self, from: "WeaponChargerQuick.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .classicSquiffer)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .classicSquiffer)
            XCTAssertEqual(data.subWeapon, .pointSensor)
            XCTAssertEqual(data.specialWeapon, .bigBubbler)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueFullCharge)
            XCTAssertNotNil(data.damageValueMaxCharge)
            XCTAssertNotNil(data.damageValueMinCharge)
            XCTAssertNotNil(data.chargeFrameFullCharge)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.inkConsumeFullCharge)
            XCTAssertNotNil(data.inkConsumeMinCharge)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_MainWeaponData_init_Charger_newSquiffer_properties() {
        do {
            let gameParams = try service.decode(Charger.self, from: "WeaponChargerQuick.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .newSquiffer)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .newSquiffer)
            XCTAssertEqual(data.subWeapon, .autobomb)
            XCTAssertEqual(data.specialWeapon, .zipcaster)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeedFullCharge)
            XCTAssertNotNil(data.damageValueFullCharge)
            XCTAssertNotNil(data.damageValueMaxCharge)
            XCTAssertNotNil(data.damageValueMinCharge)
            XCTAssertNotNil(data.chargeFrameFullCharge)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.inkConsumeFullCharge)
            XCTAssertNotNil(data.inkConsumeMinCharge)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
