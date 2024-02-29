//
//  RollerDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import XCTest
@testable import Splatalyzer

final class RollerDataTests: XCTestCase {

    let service = JSONService()
    
    var weaponInfo: WeaponInfoMain!
    
    override func setUp() {
        self.weaponInfo = try! service.decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    }
    
    override func tearDown() {
        self.weaponInfo = nil
    }

    // MARK: - Big Swig Roller
    func test_BigSwigRoller_properties() {
        do {
            let gameParams = try service.decode(Roller.self, from: "WeaponRollerWide.game__GameParameterTable")
            let item = weaponInfo.getItem(for: .bigSwigRoller)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                               
            XCTAssertEqual(data.mainWeaponId, .bigSwigRoller)
            XCTAssertEqual(data.subWeapon, .splashWall)
            XCTAssertEqual(data.specialWeapon, .inkVac)
            XCTAssertEqual(data.weaponSpeedType, .mid)
            XCTAssertNotNil(data.bodyDamage)
            XCTAssertNotNil(data.verticalSwingUnitGroupDamageMin)
            XCTAssertNotNil(data.verticalSwingUnitGroupDamageMax)
            XCTAssertNotNil(data.wideSwingUnitGroupDamageMin)
            XCTAssertNotNil(data.wideSwingUnitGroupDamageMax)
            XCTAssertNotNil(data.inkConsumeWeaponVerticalSwing)
            XCTAssertNotNil(data.inkConsumeWeaponWideSwing)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_BigSwigRollerExpress_properties() {
        do {
            let gameParams = try service.decode(Roller.self, from: "WeaponRollerWide.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .bigSwigRollerExpress)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                               
            XCTAssertEqual(data.mainWeaponId, .bigSwigRollerExpress)
            XCTAssertEqual(data.subWeapon, .angleShooter)
            XCTAssertEqual(data.specialWeapon, .inkStorm)
            XCTAssertEqual(data.weaponSpeedType, .mid)
            XCTAssertNotNil(data.bodyDamage)
            XCTAssertNotNil(data.verticalSwingUnitGroupDamageMin)
            XCTAssertNotNil(data.verticalSwingUnitGroupDamageMax)
            XCTAssertNotNil(data.wideSwingUnitGroupDamageMin)
            XCTAssertNotNil(data.wideSwingUnitGroupDamageMax)
            XCTAssertNotNil(data.inkConsumeWeaponVerticalSwing)
            XCTAssertNotNil(data.inkConsumeWeaponWideSwing)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Carbon Roller
    func test_CarbonRoller_properties() {
        do {
            let gameParams = try service.decode(Roller.self, from: "WeaponRollerCompact.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .carbonRoller)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                          
            XCTAssertEqual(data.mainWeaponId, .carbonRoller)
            XCTAssertEqual(data.subWeapon, .autobomb)
            XCTAssertEqual(data.specialWeapon, .zipcaster)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.bodyDamage)
            XCTAssertNotNil(data.verticalSwingUnitGroupDamageMin)
            XCTAssertNotNil(data.verticalSwingUnitGroupDamageMax)
            XCTAssertNotNil(data.wideSwingUnitGroupDamageMin)
            XCTAssertNotNil(data.wideSwingUnitGroupDamageMax)
            XCTAssertNotNil(data.inkConsumeWeaponVerticalSwing)
            XCTAssertNotNil(data.inkConsumeWeaponWideSwing)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_CarbonRollerDeco_properties() {
        do {
            let gameParams = try service.decode(Roller.self, from: "WeaponRollerCompact.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .carbonRollerDeco)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                          
            XCTAssertEqual(data.mainWeaponId, .carbonRollerDeco)
            XCTAssertEqual(data.subWeapon, .burstBomb)
            XCTAssertEqual(data.specialWeapon, .trizooka)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.bodyDamage)
            XCTAssertNotNil(data.verticalSwingUnitGroupDamageMin)
            XCTAssertNotNil(data.verticalSwingUnitGroupDamageMax)
            XCTAssertNotNil(data.wideSwingUnitGroupDamageMin)
            XCTAssertNotNil(data.wideSwingUnitGroupDamageMax)
            XCTAssertNotNil(data.inkConsumeWeaponVerticalSwing)
            XCTAssertNotNil(data.inkConsumeWeaponWideSwing)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Dynamo Roller
    func test_DynamoRoller_properties() {
        do {
            let gameParams = try service.decode(Roller.self, from: "WeaponRollerHeavy.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .dynamoRoller)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                          
            XCTAssertEqual(data.mainWeaponId, .dynamoRoller)
            XCTAssertEqual(data.subWeapon, .sprinkler)
            XCTAssertEqual(data.specialWeapon, .tacticooler)
            XCTAssertEqual(data.weaponSpeedType, .slow)
            XCTAssertNotNil(data.bodyDamage)
            XCTAssertNotNil(data.verticalSwingUnitGroupDamageMin)
            XCTAssertNotNil(data.verticalSwingUnitGroupDamageMax)
            XCTAssertNotNil(data.wideSwingUnitGroupDamageMin)
            XCTAssertNotNil(data.wideSwingUnitGroupDamageMax)
            XCTAssertNotNil(data.inkConsumeWeaponVerticalSwing)
            XCTAssertNotNil(data.inkConsumeWeaponWideSwing)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_GoldDynamoRoller_properties() {
        do {
            let gameParams = try service.decode(Roller.self, from: "WeaponRollerHeavy.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .goldDynamoRoller)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)

            XCTAssertEqual(data.mainWeaponId, .goldDynamoRoller)
            XCTAssertEqual(data.subWeapon, .splatBomb)
            XCTAssertEqual(data.specialWeapon, .superChump)
            XCTAssertEqual(data.weaponSpeedType, .slow)
            XCTAssertNotNil(data.bodyDamage)
            XCTAssertNotNil(data.verticalSwingUnitGroupDamageMin)
            XCTAssertNotNil(data.verticalSwingUnitGroupDamageMax)
            XCTAssertNotNil(data.wideSwingUnitGroupDamageMin)
            XCTAssertNotNil(data.wideSwingUnitGroupDamageMax)
            XCTAssertNotNil(data.inkConsumeWeaponVerticalSwing)
            XCTAssertNotNil(data.inkConsumeWeaponWideSwing)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Flingza Roller
    func test_FlingzaRoller_properties() {
        do {
            let gameParams = try service.decode(Roller.self, from: "WeaponRollerHunter.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .flingzaRoller)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                          
            XCTAssertEqual(data.mainWeaponId, .flingzaRoller)
            XCTAssertEqual(data.subWeapon, .inkMine)
            XCTAssertEqual(data.specialWeapon, .tentaMissiles)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.bodyDamage)
            XCTAssertNotNil(data.verticalSwingUnitGroupDamageMin)
            XCTAssertNotNil(data.verticalSwingUnitGroupDamageMax)
            XCTAssertNotNil(data.wideSwingUnitGroupDamageMin)
            XCTAssertNotNil(data.wideSwingUnitGroupDamageMax)
            XCTAssertNotNil(data.inkConsumeWeaponVerticalSwing)
            XCTAssertNotNil(data.inkConsumeWeaponWideSwing)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Splat Roller
    func test_SplatRoller_properties() {
        do {
            let gameParams = try service.decode(Roller.self, from: "WeaponRollerNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .splatRoller)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                                          
            XCTAssertEqual(data.mainWeaponId, .splatRoller)
            XCTAssertEqual(data.subWeapon, .curlingBomb)
            XCTAssertEqual(data.specialWeapon, .bigBubbler)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.bodyDamage)
            XCTAssertNotNil(data.verticalSwingUnitGroupDamageMin)
            XCTAssertNotNil(data.verticalSwingUnitGroupDamageMax)
            XCTAssertNotNil(data.wideSwingUnitGroupDamageMin)
            XCTAssertNotNil(data.wideSwingUnitGroupDamageMax)
            XCTAssertNotNil(data.inkConsumeWeaponVerticalSwing)
            XCTAssertNotNil(data.inkConsumeWeaponWideSwing)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_KrakOnSplatRoller_properties() {
        do {
            let gameParams = try service.decode(Roller.self, from: "WeaponRollerNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .krakOnSplatRoller)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                              
            print(data)
            
            XCTAssertEqual(data.mainWeaponId, .krakOnSplatRoller)
            XCTAssertEqual(data.subWeapon, .squidBeakon)
            XCTAssertEqual(data.specialWeapon, .krakenRoyale)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.bodyDamage)
            XCTAssertNotNil(data.verticalSwingUnitGroupDamageMin)
            XCTAssertNotNil(data.verticalSwingUnitGroupDamageMax)
            XCTAssertNotNil(data.wideSwingUnitGroupDamageMin)
            XCTAssertNotNil(data.wideSwingUnitGroupDamageMax)
            XCTAssertNotNil(data.inkConsumeWeaponVerticalSwing)
            XCTAssertNotNil(data.inkConsumeWeaponWideSwing)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
