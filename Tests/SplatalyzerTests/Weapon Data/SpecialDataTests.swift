//
//  SpecialDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import XCTest
@testable import Splatalyzer

final class SpecialDataTests: XCTestCase {

    let service = JSONService()
    
    func test_SpecialWeaponData_init_bigBubbler() {
        do {
            let gameParams = try service.decode(BigBubbler.self, from: "WeaponSpGreatBarrier.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .bigBubbler)
            XCTAssertNotNil(overwrites.maxFieldHp)
            XCTAssertNotNil(overwrites.maxHp)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_SpecialWeaponData_init_booyahBomb() {
        do {
            let gameParams = try service.decode(BooyahBomb.self, from: "WeaponSpNiceBall.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .booyahBomb)
            XCTAssertNotNil(overwrites.chargeRateAutoPerFrame)
            XCTAssertNotNil(data.tickDamage)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_SpecialWeaponData_init_crabTank() {
        do {
            let gameParams = try service.decode(CrabTank.self, from: "WeaponSpChariot.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .crabTank)
            XCTAssertNotNil(data.armorHp)
            XCTAssertNotNil(data.bulletDamageMin)
            XCTAssertNotNil(data.bulletDamageMax)
            XCTAssertNotNil(data.bumpDamage)
            XCTAssertFalse(data.cannonDamage.isEmpty)
            XCTAssertNotNil(overwrites.specialDurationFrame)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_SpecialWeaponData_init_inkjet() {
        do {
            let gameParams = try service.decode(Inkjet.self, from: "WeaponSpJetpack.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .inkjet)
            XCTAssertNotNil(data.directDamage)
            XCTAssertFalse(data.distanceDamage.isEmpty)
            XCTAssertNotNil(overwrites.distanceDamageDistanceRate)
            XCTAssertNotNil(overwrites.paintRadius)
            XCTAssertNotNil(overwrites.splashAroundVelocityMax)
            XCTAssertNotNil(overwrites.splashAroundVelocityMin)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_SpecialWeaponData_init_inkStorm() {
        do {
            let gameParams = try service.decode(InkStorm.self, from: "WeaponSpInkStorm.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .inkStorm)
            XCTAssertNotNil(overwrites.spawnSpeedZSpecUp)
            XCTAssertNotNil(overwrites.specialDurationFrame)
            XCTAssertNotNil(data.tickDamage)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_SpecialWeaponData_init_inkVac() {
        do {
            let gameParams = try service.decode(InkVac.self, from: "WeaponSpBlower.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .inkVac)
            XCTAssertNotNil(data.exhaleBlastParamMaxCharge)
            XCTAssertNotNil(data.exhaleBlastParamMinCharge)
            XCTAssertNotNil(overwrites.radiusMax)
            XCTAssertNotNil(overwrites.radiusMin)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_SpecialWeaponData_init_killerWail51() {
        do {
            let gameParams = try service.decode(KillerWail51.self, from: "WeaponSpMicroLaser.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .killerWail51)
            XCTAssertNotNil(overwrites.specialDurationFrame)
            XCTAssertNotNil(data.tickDamage)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_SpecialWeaponData_init_krakenRoyale() {
        do {
            let gameParams = try service.decode(KrakenRoyale.self, from: "WeaponSpCastle.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .krakenRoyale)
            XCTAssertNotNil(data.directDamage)
            XCTAssertNotNil(data.jumpDamage)
            XCTAssertNotNil(overwrites.specialDurationFrame)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_SpecialWeaponData_init_reefslider() {
        do {
            let gameParams = try service.decode(Reefslider.self, from: "WeaponSpSkewer.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .reefslider)
            XCTAssertFalse(data.distanceDamage.isEmpty)
            XCTAssertNotNil(overwrites.distanceDamageDistanceRate)
            XCTAssertNotNil(overwrites.paintRadius)
            XCTAssertNotNil(overwrites.splashAroundVelocityMax)
            XCTAssertNotNil(overwrites.splashAroundVelocityMin)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_SpecialWeaponData_init_splattercolorScreen() {
        do {
            let gameParams = try service.decode(SplattercolorScreen.self, from: "WeaponSpChimney.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .splattercolorScreen)
            XCTAssertNotNil(overwrites.moveSpeed)
            XCTAssertNotNil(overwrites.spawnSpeedZSpecUp)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_SpecialWeaponData_init_superChump() {
        do {
            let gameParams = try service.decode(SuperChump.self, from: "WeaponSpFirework.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .superChump)
            XCTAssertFalse(data.distanceDamage.isEmpty)
            XCTAssertNotNil(overwrites.crossPaintCheckLength)
            XCTAssertNotNil(overwrites.crossPaintRadius)
            XCTAssertNotNil(overwrites.distanceDamageDistanceRate)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_SpecialWeaponData_init_tacticooler() {
        do {
            let gameParams = try service.decode(Tacticooler.self, from: "WeaponSpEnergyStand.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .tacticooler)
            XCTAssertNotNil(overwrites.powerUpFrame)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_SpecialWeaponData_init_tentaMissiles() {
        do {
            let gameParams = try service.decode(TentaMissiles.self, from: "WeaponSpMultiMissile.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .tentaMissiles)
            XCTAssertFalse(data.distanceDamage.isEmpty)
            XCTAssertNotNil(overwrites.targetInCircleRadius)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_SpecialWeaponData_init_tripleInkstrike() {
        do {
            let gameParams = try service.decode(TripleInkstrike.self, from: "WeaponSpTripleTornado.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .tripleInkstrike)
            XCTAssertNotNil(overwrites.spawnSpeedZSpecUp)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_SpecialWeaponData_init_tripleSplashdown() {
        do {
            let gameParams = try service.decode(TripleSplashdown.self, from: "WeaponSpPogo.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .tripleSplashdown)
            XCTAssertFalse(data.distanceDamage.isEmpty)
            XCTAssertNotNil(overwrites.distanceDamageDistanceRate)
            XCTAssertNotNil(overwrites.paintRadius)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_SpecialWeaponData_init_trizooka() {
        do {
            let gameParams = try service.decode(Trizooka.self, from: "WeaponSpUltraShot.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .trizooka)
            XCTAssertNotNil(data.directDamage)
            XCTAssertFalse(data.distanceDamage.isEmpty)
            XCTAssertNotNil(overwrites.distanceDamageDistanceRate)
            XCTAssertNotNil(overwrites.paintRadius)
            XCTAssertNotNil(overwrites.specialDurationFrame)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_SpecialWeaponData_init_ultraStamp() {
        do {
            let gameParams = try service.decode(UltraStamp.self, from: "WeaponSpUltraStamp.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .ultraStamp)
            XCTAssertNotNil(overwrites.specialDurationFrame)
            XCTAssertFalse(data.swingDamage.isEmpty)
            XCTAssertFalse(data.throwDamage.isEmpty)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_SpecialWeaponData_init_waveBreaker() {
        do {
            let gameParams = try service.decode(WaveBreaker.self, from: "WeaponSpShockSonar.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .waveBreaker)
            XCTAssertNotNil(data.directDamage)
            XCTAssertNotNil(overwrites.maxFrame)
            XCTAssertNotNil(overwrites.maxRadius)
            XCTAssertNotNil(data.waveDamage)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_SpecialWeaponData_init_zipcaster() {
        do {
            let gameParams = try service.decode(Zipcaster.self, from: "WeaponSpSuperHook.game__GameParameterTable")
            
            let data = SpecialWeaponData(container: gameParams)
            let overwrites = data.overwrites as! SpecialOverwrites
                        
            XCTAssertEqual(data.id, .zipcaster)
            XCTAssertFalse(data.distanceDamage.isEmpty)
            XCTAssertNotNil(overwrites.inkConsumeHook)
            XCTAssertNotNil(overwrites.inkConsumePerSec)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

}
