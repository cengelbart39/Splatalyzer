//
//  SubDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import XCTest
@testable import Splatalyzer

final class SubDataTests: XCTestCase {
    
    let service = JSONService()
    
    func test_AngleShooter_properties() {
        do {
            let gameParams = try service.decode(AngleShooter.self, from: "WeaponLineMarker.game__GameParameterTable")
            
            let data = SubWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SubOverwrites
                        
            XCTAssertEqual(data.id, .angleShooter)
            XCTAssertNotNil(overwrites.markingFrameSubSpec)
            XCTAssertNotNil(data.directDamage)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_Autobomb_properties() {
        do {
            let gameParams = try service.decode(Autobomb.self, from: "WeaponBombRobot.game__GameParameterTable")
            
            let data = SubWeaponData(container: gameParams)
            
            XCTAssertEqual(data.id, .autobomb)
            XCTAssertFalse(data.distanceDamage.isEmpty)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_BurstBomb_properties() {
        do {
            let gameParams = try service.decode(BurstBomb.self, from: "WeaponBombQuick.game__GameParameterTable")
            
            let data = SubWeaponData(container: gameParams)
            
            XCTAssertEqual(data.id, .burstBomb)
            XCTAssertFalse(data.distanceDamage.isEmpty)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_CurlingBomb_properties() {
        do {
            let gameParams = try service.decode(CurlingBomb.self, from: "WeaponBombCurling.game__GameParameterTable")
            
            let data = SubWeaponData(container: gameParams)
            
            XCTAssertEqual(data.id, .curlingBomb)
            XCTAssertFalse(data.distanceDamage.isEmpty)
            XCTAssertNotNil(data.directDamage)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_FizzyBomb_properties() {
        do {
            let gameParams = try service.decode(FizzyBomb.self, from: "WeaponBombFizzy.game__GameParameterTable")
            
            let data = SubWeaponData(container: gameParams)
            
            XCTAssertEqual(data.id, .fizzyBomb)
            XCTAssertFalse(data.blastParam.isEmpty)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_InkMine_properties() {
        do {
            let gameParams = try service.decode(InkMine.self, from: "WeaponTrap.game__GameParameterTable")
            
            let data = SubWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SubOverwrites
            
            XCTAssertEqual(data.id, .inkMine)
            XCTAssertNotNil(overwrites.markingFrameSubSpec)
            XCTAssertNotNil(overwrites.sensorRadius)
            XCTAssertNotNil(overwrites.explosionRadius)
            XCTAssertFalse(data.distanceDamage.isEmpty)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_PointSensor_properties() {
        do {
            let gameParams = try service.decode(PointSensor.self, from: "WeaponPointSensor.game__GameParameterTable")
            
            let data = SubWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SubOverwrites
            
            XCTAssertEqual(data.id, .pointSensor)
            XCTAssertNotNil(overwrites.markingFrameSubSpec)
            XCTAssertNotNil(overwrites.explosionRadius)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_SplashWall_properties() {
        do {
            let gameParams = try service.decode(SplashWall.self, from: "WeaponShield.game__GameParameterTable")
            
            let data = SubWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SubOverwrites
            
            print(data)
            
            XCTAssertEqual(data.id, .splashWall)
            XCTAssertNotNil(overwrites.maxHp)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_SplatBomb_properties() {
        do {
            let gameParams = try service.decode(SplatBomb.self, from: "WeaponBombSplash.game__GameParameterTable")
            
            let data = SubWeaponData(container: gameParams)
            
            XCTAssertEqual(data.id, .splatBomb)
            XCTAssertFalse(data.distanceDamage.isEmpty)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_Sprinkler_properties() {
        do {
            let gameParams = try service.decode(Sprinkler.self, from: "WeaponSprinkler.game__GameParameterTable")
            
            let data = SubWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SubOverwrites
            
            XCTAssertEqual(data.id, .sprinkler)
            XCTAssertNotNil(overwrites.periodFirst)
            XCTAssertNotNil(overwrites.periodSecond)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_SquidBeakon_properties() {
        do {
            let gameParams = try service.decode(SquidBeakon.self, from: "WeaponBeacon.game__GameParameterTable")
            let player = try service.decode(Player.self, from: "SplPlayer.game__GameParameterTable")
            
            let data = SubWeaponData(container: gameParams, playerInfo: player)
            let overwrites = data.overwrites as! SubOverwrites
            
            XCTAssertEqual(data.id, .squidBeakon)
            XCTAssertNotNil(overwrites.subSpecUpParam)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_SuctionBomb_properties() {
        do {
            let gameParams = try service.decode(SuctionBomb.self, from: "WeaponBombSuction.game__GameParameterTable")
            
            let data = SubWeaponData(container: gameParams)
            
            XCTAssertEqual(data.id, .suctionBomb)
            XCTAssertFalse(data.distanceDamage.isEmpty)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_Torpedo_properties() {
        do {
            let gameParams = try service.decode(Torpedo.self, from: "WeaponBombTorpedo.game__GameParameterTable")
            
            let data = SubWeaponData(container: gameParams)
            
            XCTAssertEqual(data.id, .torpedo)
            XCTAssertFalse(data.blastParamChase.isEmpty)
            XCTAssertFalse(data.splashBlastParam.isEmpty)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_ToxicMist_properties() {
        do {
            let gameParams = try service.decode(ToxicMist.self, from: "WeaponPoisonMist.game__GameParameterTable")
            
            let data = SubWeaponData(container: gameParams)
            
            XCTAssertEqual(data.id, .toxicMist)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
