//
//  DualieDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import XCTest
@testable import Splatalyzer

final class DualieDataTests: XCTestCase {

    let service = JSONService()
    
    var weaponInfo: WeaponInfoMain!
    
    override func setUp() {
        self.weaponInfo = try! service.decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    }
    
    override func tearDown() {
        self.weaponInfo = nil
    }

    // MARK: - Dapple Dualies
    func test_DappleDualies_properties() {
        do {
            let gameParams = try service.decode(Dualie.self, from: "WeaponManeuverShort.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .dappleDualies)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                                
            XCTAssertEqual(data.mainWeaponId, .dappleDualies)
            XCTAssertEqual(data.subWeapon, .squidBeakon)
            XCTAssertEqual(data.specialWeapon, .tacticooler)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)
            XCTAssertNotNil(data.inkConsumeSideStep)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_DappleDualiesNouveau_properties() {
        do {
            let gameParams = try service.decode(Dualie.self, from: "WeaponManeuverShort.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .dappleDualiesNouveau)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                                
            XCTAssertEqual(data.mainWeaponId, .dappleDualiesNouveau)
            XCTAssertEqual(data.subWeapon, .torpedo)
            XCTAssertEqual(data.specialWeapon, .reefslider)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)
            XCTAssertNotNil(data.inkConsumeSideStep)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    // MARK: - Douser Dualies FF
    func test_DouserDualiesFF_properties() {
        do {
            let gameParams = try service.decode(Dualie.self, from: "WeaponManeuverLong.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .douserDualiesFF)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                                            
            XCTAssertEqual(data.mainWeaponId, .douserDualiesFF)
            XCTAssertEqual(data.subWeapon, .inkMine)
            XCTAssertEqual(data.specialWeapon, .killerWail51)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.damageLapOverValueMax)
            XCTAssertNotNil(data.damageLapOverValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)
            XCTAssertNotNil(data.inkConsumeSideStep)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }


    // MARK: - Dualie Squelchers
    func test_DualieSquelchers_properties() {
        do {
            let gameParams = try service.decode(Dualie.self, from: "WeaponManeuverDual.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .dualieSquelchers)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                                            
            XCTAssertEqual(data.mainWeaponId, .dualieSquelchers)
            XCTAssertEqual(data.subWeapon, .splatBomb)
            XCTAssertEqual(data.specialWeapon, .waveBreaker)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)
            XCTAssertNotNil(data.inkConsumeSideStep)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_CustomDualieSquelchers_properties() {
        do {
            let gameParams = try service.decode(Dualie.self, from: "WeaponManeuverDual.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .customDualieSquelchers)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .customDualieSquelchers)
            XCTAssertEqual(data.subWeapon, .squidBeakon)
            XCTAssertEqual(data.specialWeapon, .superChump)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)
            XCTAssertNotNil(data.inkConsumeSideStep)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Glooga Dualies
    func test_GloogaDualies_properties() {
        do {
            let gameParams = try service.decode(Dualie.self, from: "WeaponManeuverGallon.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .gloogaDualies)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                                                
            XCTAssertEqual(data.mainWeaponId, .gloogaDualies)
            XCTAssertEqual(data.subWeapon, .splashWall)
            XCTAssertEqual(data.specialWeapon, .booyahBomb)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.damageLapOverValueMax)
            XCTAssertNotNil(data.damageLapOverValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)
            XCTAssertNotNil(data.inkConsumeSideStep)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_GloogaDualiesDeco_properties() {
        do {
            let gameParams = try service.decode(Dualie.self, from: "WeaponManeuverGallon.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .gloogaDualiesDeco)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                                                
            XCTAssertEqual(data.mainWeaponId, .gloogaDualiesDeco)
            XCTAssertEqual(data.subWeapon, .pointSensor)
            XCTAssertEqual(data.specialWeapon, .trizooka)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.damageLapOverValueMax)
            XCTAssertNotNil(data.damageLapOverValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)
            XCTAssertNotNil(data.inkConsumeSideStep)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }


    // MARK: - Splat Dualies
    func test_SplatDualies_properties() {
        do {
            let gameParams = try service.decode(Dualie.self, from: "WeaponManeuverNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .splatDualies)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                             
            XCTAssertEqual(data.mainWeaponId, .splatDualies)
            XCTAssertEqual(data.subWeapon, .suctionBomb)
            XCTAssertEqual(data.specialWeapon, .crabTank)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)
            XCTAssertNotNil(data.inkConsumeSideStep)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_EnperrySplatDualies_properties() {
        do {
            let gameParams = try service.decode(Dualie.self, from: "WeaponManeuverNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .enperrySplatDualies)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                             
            XCTAssertEqual(data.mainWeaponId, .enperrySplatDualies)
            XCTAssertEqual(data.subWeapon, .curlingBomb)
            XCTAssertEqual(data.specialWeapon, .tripleSplashdown)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)
            XCTAssertNotNil(data.inkConsumeSideStep)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_OrderDualiesReplica_properties() {
        do {
            let gameParams = try service.decode(Dualie.self, from: "WeaponManeuverNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .orderDualiesReplica)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                             
            XCTAssertEqual(data.mainWeaponId, .orderDualiesReplica)
            XCTAssertEqual(data.subWeapon, .suctionBomb)
            XCTAssertEqual(data.specialWeapon, .crabTank)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)
            XCTAssertNotNil(data.inkConsumeSideStep)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    // MARK: - Tetra Dualies
    func test_DarkTetraDualies_properties() {
        do {
            let gameParams = try service.decode(Dualie.self, from: "WeaponManeuverStepper.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .darkTetraDualies)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)

            XCTAssertEqual(data.mainWeaponId, .darkTetraDualies)
            XCTAssertEqual(data.subWeapon, .autobomb)
            XCTAssertEqual(data.specialWeapon, .reefslider)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)
            XCTAssertNotNil(data.inkConsumeSideStep)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_LightTetraDualies_properties() {
        do {
            let gameParams = try service.decode(Dualie.self, from: "WeaponManeuverStepper.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .lightTetraDualies)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                             
            XCTAssertEqual(data.mainWeaponId, .lightTetraDualies)
            XCTAssertEqual(data.subWeapon, .sprinkler)
            XCTAssertEqual(data.specialWeapon, .zipcaster)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)
            XCTAssertNotNil(data.inkConsumeSideStep)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
