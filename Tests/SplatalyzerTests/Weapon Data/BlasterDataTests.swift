//
//  BlasterDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import XCTest
@testable import Splatalyzer

final class BlasterDataTests: XCTestCase {

    let service = JSONService()
    
    var weaponInfo: WeaponInfoMain!
    
    override func setUp() {
        self.weaponInfo = try! service.decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    }
    
    override func tearDown() {
        self.weaponInfo = nil
    }

    // MARK: - Blaster
    func test_Blaster_properties() {
        do {
            let gameParams = try service.decode(Blaster.self, from: "WeaponBlasterMiddle.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .blaster)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .blaster)
            XCTAssertEqual(data.subWeapon, .autobomb)
            XCTAssertEqual(data.specialWeapon, .bigBubbler)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueDirect)
            XCTAssertEqual(data.blastDamageDistance.count, 2)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_CustomBlaster_properties() {
        do {
            let gameParams = try service.decode(Blaster.self, from: "WeaponBlasterMiddle.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .customBlaster)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                        
            XCTAssertEqual(data.mainWeaponId, .customBlaster)
            XCTAssertEqual(data.subWeapon, .pointSensor)
            XCTAssertEqual(data.specialWeapon, .tripleSplashdown)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueDirect)
            XCTAssertEqual(data.blastDamageDistance.count, 2)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    // MARK: - Clash Blaster
    func test_ClashBlaster_properties() {
        do {
            let gameParams = try service.decode(Blaster.self, from: "WeaponBlasterLightShort.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .clashBlaster)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                    
            XCTAssertEqual(data.mainWeaponId, .clashBlaster)
            XCTAssertEqual(data.subWeapon, .splatBomb)
            XCTAssertEqual(data.specialWeapon, .trizooka)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueDirect)
            XCTAssertEqual(data.blastDamageDistance.count, 2)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_ClashBlasterNeo_properties() {
        do {
            let gameParams = try service.decode(Blaster.self, from: "WeaponBlasterLightShort.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .clashBlasterNeo)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .clashBlasterNeo)
            XCTAssertEqual(data.subWeapon, .curlingBomb)
            XCTAssertEqual(data.specialWeapon, .superChump)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueDirect)
            XCTAssertEqual(data.blastDamageDistance.count, 2)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Luna Blaster
    func test_LunaBlaster_properties() {
        do {
            let gameParams = try service.decode(Blaster.self, from: "WeaponBlasterShort.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .lunaBlaster)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                    
            XCTAssertEqual(data.mainWeaponId, .lunaBlaster)
            XCTAssertEqual(data.subWeapon, .splatBomb)
            XCTAssertEqual(data.specialWeapon, .zipcaster)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueDirect)
            XCTAssertEqual(data.blastDamageDistance.count, 2)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_LunaBlasterNeo_properties() {
        do {
            let gameParams = try service.decode(Blaster.self, from: "WeaponBlasterShort.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .lunaBlasterNeo)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                                
            XCTAssertEqual(data.mainWeaponId, .lunaBlasterNeo)
            XCTAssertEqual(data.subWeapon, .fizzyBomb)
            XCTAssertEqual(data.specialWeapon, .ultraStamp)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueDirect)
            XCTAssertEqual(data.blastDamageDistance.count, 2)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_OrderBlasterReplica_properties() {
        do {
            let gameParams = try service.decode(Blaster.self, from: "WeaponBlasterShort.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .orderBlasterReplica)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                    
            XCTAssertEqual(data.mainWeaponId, .orderBlasterReplica)
            XCTAssertEqual(data.subWeapon, .splatBomb)
            XCTAssertEqual(data.specialWeapon, .zipcaster)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueDirect)
            XCTAssertEqual(data.blastDamageDistance.count, 2)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    
    // MARK: - Range Blaster
    func test_RangeBlaster_properties() {
        do {
            let gameParams = try service.decode(Blaster.self, from: "WeaponBlasterLong.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .rangeBlaster)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                    
            XCTAssertEqual(data.mainWeaponId, .rangeBlaster)
            XCTAssertEqual(data.subWeapon, .suctionBomb)
            XCTAssertEqual(data.specialWeapon, .waveBreaker)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueDirect)
            XCTAssertEqual(data.blastDamageDistance.count, 2)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    // MARK: - Rapid Blaster
    func test_RapidBlaster_properties() {
        do {
            let gameParams = try service.decode(Blaster.self, from: "WeaponBlasterLight.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .rapidBlaster)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                    
            XCTAssertEqual(data.mainWeaponId, .rapidBlaster)
            XCTAssertEqual(data.subWeapon, .inkMine)
            XCTAssertEqual(data.specialWeapon, .tripleInkstrike)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueDirect)
            XCTAssertEqual(data.blastDamageDistance.count, 2)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_RapidBlasterDeco_properties() {
        do {
            let gameParams = try service.decode(Blaster.self, from: "WeaponBlasterLight.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .rapidBlasterDeco)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                    
            XCTAssertEqual(data.mainWeaponId, .rapidBlasterDeco)
            XCTAssertEqual(data.subWeapon, .torpedo)
            XCTAssertEqual(data.specialWeapon, .inkjet)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueDirect)
            XCTAssertEqual(data.blastDamageDistance.count, 2)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    // MARK: - Rapid Blaster Pro
    func test_RapidBlasterPro_properties() {
        do {
            let gameParams = try service.decode(Blaster.self, from: "WeaponBlasterLightLong.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .rapidBlasterPro)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                    
            XCTAssertEqual(data.mainWeaponId, .rapidBlasterPro)
            XCTAssertEqual(data.subWeapon, .toxicMist)
            XCTAssertEqual(data.specialWeapon, .inkVac)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueDirect)
            XCTAssertEqual(data.blastDamageDistance.count, 2)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_RapidBlasterProDeco_properties() {
        do {
            let gameParams = try service.decode(Blaster.self, from: "WeaponBlasterLightLong.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .rapidBlasterProDeco)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                    
            XCTAssertEqual(data.mainWeaponId, .rapidBlasterProDeco)
            XCTAssertEqual(data.subWeapon, .angleShooter)
            XCTAssertEqual(data.specialWeapon, .killerWail51)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueDirect)
            XCTAssertEqual(data.blastDamageDistance.count, 2)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    // MARK: - S-BLAST
    func test_SBlast92_properties() {
        do {
            let gameParams = try service.decode(Blaster.self, from: "WeaponBlasterPrecision.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .sblast92)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .sblast92)
            XCTAssertEqual(data.subWeapon, .sprinkler)
            XCTAssertEqual(data.specialWeapon, .reefslider)
            XCTAssertEqual(data.weaponSpeedType, .mid)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueDirect)
            XCTAssertEqual(data.blastDamageDistance.count, 2)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_SBlast91_properties() {
        do {
            let gameParams = try service.decode(Blaster.self, from: "WeaponBlasterPrecision.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .sblast91)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .sblast91)
            XCTAssertEqual(data.subWeapon, .burstBomb)
            XCTAssertEqual(data.specialWeapon, .booyahBomb)
            XCTAssertEqual(data.weaponSpeedType, .mid)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueDirect)
            XCTAssertEqual(data.blastDamageDistance.count, 2)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
