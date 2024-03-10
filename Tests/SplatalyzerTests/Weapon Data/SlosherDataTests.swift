//
//  SlosherDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import XCTest
@testable import Splatalyzer

final class SlosherDataTests: XCTestCase {

    let service = JSONService()
    
    var weaponInfo: WeaponInfoMain!
    
    override func setUp() {
        self.weaponInfo = try! service.decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    }
    
    override func tearDown() {
        self.weaponInfo = nil
    }

    // MARK: - Bloblobber
    func test_MainWeaponData_init_Slosher_bloblobber() {
        do {
            let gameParams = try service.decode(Slosher.self, from: "WeaponSlosherBathtub.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .bloblobber)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .bloblobber)
            XCTAssertEqual(data.subWeapon, .sprinkler)
            XCTAssertEqual(data.specialWeapon, .inkStorm)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueDirect)
            XCTAssertNotNil(data.damageSecondaryValueDirectMax)
            XCTAssertNotNil(data.damageSecondaryValueDirectMin)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeSlosher)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_MainWeaponData_init_Slosher_bloblobberDeco() {
        do {
            let gameParams = try service.decode(Slosher.self, from: "WeaponSlosherBathtub.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .bloblobberDeco)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .bloblobberDeco)
            XCTAssertEqual(data.subWeapon, .angleShooter)
            XCTAssertEqual(data.specialWeapon, .krakenRoyale)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueDirect)
            XCTAssertNotNil(data.damageSecondaryValueDirectMax)
            XCTAssertNotNil(data.damageSecondaryValueDirectMin)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeSlosher)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Dread Wringer
    func test_MainWeaponData_init_Slosher_dreadWringer() {
        do {
            let gameParams = try service.decode(Slosher.self, from: "WeaponSlosherDouble.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .dreadWringer)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .dreadWringer)
            XCTAssertEqual(data.subWeapon, .suctionBomb)
            XCTAssertEqual(data.specialWeapon, .reefslider)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueDirectMax)
            XCTAssertNotNil(data.damageValueDirectMin)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeSlosher)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_MainWeaponData_init_Slosher_dreadWringerD() {
        do {
            let gameParams = try service.decode(Slosher.self, from: "WeaponSlosherDouble.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .dreadWringerD)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .dreadWringerD)
            XCTAssertEqual(data.subWeapon, .squidBeakon)
            XCTAssertEqual(data.specialWeapon, .waveBreaker)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueDirectMax)
            XCTAssertNotNil(data.damageValueDirectMin)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeSlosher)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Explosher
    func test_MainWeaponData_init_Slosher_explosher() {
        do {
            let gameParams = try service.decode(Slosher.self, from: "WeaponSlosherWashtub.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .explosher)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .explosher)
            XCTAssertEqual(data.subWeapon, .pointSensor)
            XCTAssertEqual(data.specialWeapon, .inkStorm)
            XCTAssertEqual(data.weaponSpeedType, .slow)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueDirect)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeSlosher)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_MainWeaponData_init_Slosher_customExplosher() {
        do {
            let gameParams = try service.decode(Slosher.self, from: "WeaponSlosherWashtub.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .customExplosher)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .customExplosher)
            XCTAssertEqual(data.subWeapon, .splashWall)
            XCTAssertEqual(data.specialWeapon, .tripleSplashdown)
            XCTAssertEqual(data.weaponSpeedType, .slow)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueDirect)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeSlosher)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Slosher
    func test_MainWeaponData_init_Slosher_slosher() {
        do {
            let gameParams = try service.decode(Slosher.self, from: "WeaponSlosherStrong.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .slosher)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .slosher)
            XCTAssertEqual(data.subWeapon, .splatBomb)
            XCTAssertEqual(data.specialWeapon, .tripleInkstrike)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueDirectMax)
            XCTAssertNotNil(data.damageValueDirectMin)
            XCTAssertNotNil(data.damageSecondaryValueDirectMax)
            XCTAssertNotNil(data.damageSecondaryValueDirectMin)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeSlosher)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_MainWeaponData_init_Slosher_slosherDeco() {
        do {
            let gameParams = try service.decode(Slosher.self, from: "WeaponSlosherStrong.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .slosherDeco)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .slosherDeco)
            XCTAssertEqual(data.subWeapon, .angleShooter)
            XCTAssertEqual(data.specialWeapon, .zipcaster)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueDirectMax)
            XCTAssertNotNil(data.damageValueDirectMin)
            XCTAssertNotNil(data.damageSecondaryValueDirectMax)
            XCTAssertNotNil(data.damageSecondaryValueDirectMin)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeSlosher)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_MainWeaponData_init_Slosher_orderSlosherReplica() {
        do {
            let gameParams = try service.decode(Slosher.self, from: "WeaponSlosherStrong.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .orderSlosherReplica)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .orderSlosherReplica)
            XCTAssertEqual(data.subWeapon, .splatBomb)
            XCTAssertEqual(data.specialWeapon, .tripleInkstrike)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueDirectMax)
            XCTAssertNotNil(data.damageValueDirectMin)
            XCTAssertNotNil(data.damageSecondaryValueDirectMax)
            XCTAssertNotNil(data.damageSecondaryValueDirectMin)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeSlosher)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Sloshing Machine
    func test_MainWeaponData_init_Slosher_sloshingMachine() {
        do {
            let gameParams = try service.decode(Slosher.self, from: "WeaponSlosherLauncher.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .sloshingMachine)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .sloshingMachine)
            XCTAssertEqual(data.subWeapon, .fizzyBomb)
            XCTAssertEqual(data.specialWeapon, .booyahBomb)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueDirectMax)
            XCTAssertNotNil(data.damageValueDirectMin)
            XCTAssertNotNil(data.damageSecondaryValueDirectMax)
            XCTAssertNotNil(data.damageSecondaryValueDirectMin)
            XCTAssertNotNil(data.blastSplashDamage)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeSlosher)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_MainWeaponData_init_Slosher_sloshingMachineNeo() {
        do {
            let gameParams = try service.decode(Slosher.self, from: "WeaponSlosherLauncher.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .sloshingMachineNeo)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .sloshingMachineNeo)
            XCTAssertEqual(data.subWeapon, .pointSensor)
            XCTAssertEqual(data.specialWeapon, .trizooka)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueDirectMax)
            XCTAssertNotNil(data.damageValueDirectMin)
            XCTAssertNotNil(data.damageSecondaryValueDirectMax)
            XCTAssertNotNil(data.damageSecondaryValueDirectMin)
            XCTAssertNotNil(data.blastSplashDamage)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeSlosher)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Tri-Slosher
    func test_MainWeaponData_init_Slosher_triSlosher() {
        do {
            let gameParams = try service.decode(Slosher.self, from: "WeaponSlosherDiffusion.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .triSlosher)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .triSlosher)
            XCTAssertEqual(data.subWeapon, .toxicMist)
            XCTAssertEqual(data.specialWeapon, .inkjet)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueDirectMax)
            XCTAssertNotNil(data.damageValueDirectMin)
            XCTAssertNotNil(data.damageSecondaryValueDirectMax)
            XCTAssertNotNil(data.damageSecondaryValueDirectMin)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeSlosher)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_MainWeaponData_init_Slosher_triSlosherNouveau() {
        do {
            let gameParams = try service.decode(Slosher.self, from: "WeaponSlosherDiffusion.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .triSlosherNouveau)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)

            XCTAssertEqual(data.mainWeaponId, .triSlosherNouveau)
            XCTAssertEqual(data.subWeapon, .fizzyBomb)
            XCTAssertEqual(data.specialWeapon, .tacticooler)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueDirectMax)
            XCTAssertNotNil(data.damageValueDirectMin)
            XCTAssertNotNil(data.damageSecondaryValueDirectMax)
            XCTAssertNotNil(data.damageSecondaryValueDirectMin)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsumeSlosher)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

}
