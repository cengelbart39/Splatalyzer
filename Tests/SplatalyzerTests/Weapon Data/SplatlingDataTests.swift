//
//  SplatlingDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import XCTest
@testable import Splatalyzer

final class SplatlingDataTests: XCTestCase {

    let service = JSONService()
    
    var weaponInfo: WeaponInfoMain!
    
    override func setUpWithError() throws {
        self.weaponInfo = try service.decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    }
    
    override func tearDown() {
        self.weaponInfo = nil
    }
    
    // MARK: - Ballpoint Splatling
    func test_MainWeaponData_init_Splatling_ballpointSplatling() {
        do {
            let gameParams = try service.decode(Splatling.self, from: "WeaponSpinnerDownpour.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .ballpointSplatling)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .ballpointSplatling)
            XCTAssertEqual(data.subWeapon, .fizzyBomb)
            XCTAssertEqual(data.specialWeapon, .inkjet)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.moveSpeedCharge)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.damageValueFullChargeMax)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeFullChargeSplatling)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_MainWeaponData_init_Splatling_ballpointSplatlingNouveau() {
        do {
            let gameParams = try service.decode(Splatling.self, from: "WeaponSpinnerDownpour.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .ballpointSplatlingNouveau)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .ballpointSplatlingNouveau)
            XCTAssertEqual(data.subWeapon, .inkMine)
            XCTAssertEqual(data.specialWeapon, .inkVac)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.moveSpeedCharge)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.damageValueFullChargeMax)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeFullChargeSplatling)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Heavy Edit Splatling
    func test_MainWeaponData_init_Splatling_heavyEditSplatling() {
        do {
            let gameParams = try service.decode(Splatling.self, from: "WeaponSpinnerHyperShort.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .heavyEditSplatling)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .heavyEditSplatling)
            XCTAssertEqual(data.subWeapon, .curlingBomb)
            XCTAssertEqual(data.specialWeapon, .tacticooler)
            XCTAssertEqual(data.weaponSpeedType, .mid)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.moveSpeedCharge)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.damageValueFullChargeMax)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeFullChargeSplatling)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_MainWeaponData_init_Splatling_heavyEditSplatlingNouveau() {
        do {
            let gameParams = try service.decode(Splatling.self, from: "WeaponSpinnerHyperShort.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .heavyEditSplatlingNouveau)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .heavyEditSplatlingNouveau)
            XCTAssertEqual(data.subWeapon, .splatBomb)
            XCTAssertEqual(data.specialWeapon, .crabTank)
            XCTAssertEqual(data.weaponSpeedType, .mid)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.moveSpeedCharge)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.damageValueFullChargeMax)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeFullChargeSplatling)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Heavy Splatling
    func test_MainWeaponData_init_Splatling_heavySplatling() {
        do {
            let gameParams = try service.decode(Splatling.self, from: "WeaponSpinnerStandard.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .heavySplatling)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .heavySplatling)
            XCTAssertEqual(data.subWeapon, .sprinkler)
            XCTAssertEqual(data.specialWeapon, .waveBreaker)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.damageValueFullChargeMax)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeFullChargeSplatling)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_MainWeaponData_init_Splatling_heavySplatlingDeco() {
        do {
            let gameParams = try service.decode(Splatling.self, from: "WeaponSpinnerStandard.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .heavySplatlingDeco)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                        
            XCTAssertEqual(data.mainWeaponId, .heavySplatlingDeco)
            XCTAssertEqual(data.subWeapon, .pointSensor)
            XCTAssertEqual(data.specialWeapon, .krakenRoyale)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.damageValueFullChargeMax)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeFullChargeSplatling)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_MainWeaponData_init_Splatling_orderSplatlingReplica() {
        do {
            let gameParams = try service.decode(Splatling.self, from: "WeaponSpinnerStandard.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .orderSplatlingReplica)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .orderSplatlingReplica)
            XCTAssertEqual(data.subWeapon, .sprinkler)
            XCTAssertEqual(data.specialWeapon, .waveBreaker)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.damageValueFullChargeMax)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeFullChargeSplatling)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Hydra Splatling
    func test_MainWeaponData_init_Splatling_hydraSplatling() {
        do {
            let gameParams = try service.decode(Splatling.self, from: "WeaponSpinnerHyper.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .hydraSplatling)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .hydraSplatling)
            XCTAssertEqual(data.subWeapon, .autobomb)
            XCTAssertEqual(data.specialWeapon, .booyahBomb)
            XCTAssertEqual(data.weaponSpeedType, .slow)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.moveSpeedCharge)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.damageValueFullChargeMax)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeFullChargeSplatling)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_MainWeaponData_init_Splatling_customHydraSplatling() {
        do {
            let gameParams = try service.decode(Splatling.self, from: "WeaponSpinnerHyper.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .customHydraSplatling)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .customHydraSplatling)
            XCTAssertEqual(data.subWeapon, .inkMine)
            XCTAssertEqual(data.specialWeapon, .splattercolorScreen)
            XCTAssertEqual(data.weaponSpeedType, .slow)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.moveSpeedCharge)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.damageValueFullChargeMax)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeFullChargeSplatling)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Mini Splatling
    func test_MainWeaponData_init_Splatling_miniSplatling() {
        do {
            let gameParams = try service.decode(Splatling.self, from: "WeaponSpinnerQuick.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .miniSplatling)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .miniSplatling)
            XCTAssertEqual(data.subWeapon, .burstBomb)
            XCTAssertEqual(data.specialWeapon, .ultraStamp)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.moveSpeedCharge)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.damageValueFullChargeMax)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeFullChargeSplatling)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_MainWeaponData_init_Splatling_zinkMiniSplatling() {
        do {
            let gameParams = try service.decode(Splatling.self, from: "WeaponSpinnerQuick.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .zinkMiniSplatling)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .zinkMiniSplatling)
            XCTAssertEqual(data.subWeapon, .toxicMist)
            XCTAssertEqual(data.specialWeapon, .bigBubbler)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.moveSpeedCharge)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.damageValueFullChargeMax)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeFullChargeSplatling)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Nautilus
    func test_MainWeaponData_init_Splatling_nautilus47() {
        do {
            let gameParams = try service.decode(Splatling.self, from: "WeaponSpinnerSerein.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .nautilus47)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .nautilus47)
            XCTAssertEqual(data.subWeapon, .pointSensor)
            XCTAssertEqual(data.specialWeapon, .inkStorm)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.moveSpeedCharge)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.damageValueFullChargeMax)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeFullChargeSplatling)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_MainWeaponData_init_Splatling_nautilus79() {
        do {
            let gameParams = try service.decode(Splatling.self, from: "WeaponSpinnerSerein.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .nautilus79)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .nautilus79)
            XCTAssertEqual(data.subWeapon, .suctionBomb)
            XCTAssertEqual(data.specialWeapon, .tripleSplashdown)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.moveSpeedCharge)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.damageValueFullChargeMax)
            XCTAssertNotNil(data.keepChargeFullFrame)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeFullChargeSplatling)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

}
