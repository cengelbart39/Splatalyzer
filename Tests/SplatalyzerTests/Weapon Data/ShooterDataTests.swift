//
//  ShooterDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import XCTest
@testable import Splatalyzer

final class ShooterDataTests: XCTestCase {

    let service = JSONService()
    
    var weaponInfo: WeaponInfoMain!
    
    override func setUp() {
        self.weaponInfo = try! service.decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    }
    
    override func tearDown() {
        self.weaponInfo = nil
    }

    // MARK: - .52 Gal
    func test_52Gal_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterGravity.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .gal52)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
             
            print(data)
            
            XCTAssertEqual(data.mainWeaponId, .gal52)
            XCTAssertEqual(data.subWeapon, .splashWall)
            XCTAssertEqual(data.specialWeapon, .killerWail51)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    // MARK: - .96 Gal
    func test_96Gal_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterHeavy.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .gal96)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
             
            print(data)
            
            XCTAssertEqual(data.mainWeaponId, .gal96)
            XCTAssertEqual(data.subWeapon, .sprinkler)
            XCTAssertEqual(data.specialWeapon, .inkVac)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_96GalDeco_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterHeavy.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .gal96Deco)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
             
            print(data)
            
            XCTAssertEqual(data.mainWeaponId, .gal96Deco)
            XCTAssertEqual(data.subWeapon, .splashWall)
            XCTAssertEqual(data.specialWeapon, .krakenRoyale)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    // MARK: - Aerospray
    func test_AerosprayMG_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterBlaze.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .aerosprayMG)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
             
            print(data)
            
            XCTAssertEqual(data.mainWeaponId, .aerosprayMG)
            XCTAssertEqual(data.subWeapon, .fizzyBomb)
            XCTAssertEqual(data.specialWeapon, .reefslider)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_AerosprayRG_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterBlaze.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .aerosprayRG)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
                         
            XCTAssertEqual(data.mainWeaponId, .aerosprayRG)
            XCTAssertEqual(data.subWeapon, .sprinkler)
            XCTAssertEqual(data.specialWeapon, .booyahBomb)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - H3 Nozzlenose
    func test_H3Nozzlenose_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterTripleMiddle.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .h3Nozzlenose)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .h3Nozzlenose)
            XCTAssertEqual(data.subWeapon, .pointSensor)
            XCTAssertEqual(data.specialWeapon, .tacticooler)
            XCTAssertNotNil(data.tripleShotSpanFrame)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_H3NozzlenoseD_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterTripleMiddle.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .h3NozzlenoseD)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .h3NozzlenoseD)
            XCTAssertEqual(data.subWeapon, .splashWall)
            XCTAssertEqual(data.specialWeapon, .bigBubbler)
            XCTAssertNotNil(data.tripleShotSpanFrame)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Jet Squelcher
    func test_JetSquelcher_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterLong.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .jetSquelcher)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .jetSquelcher)
            XCTAssertEqual(data.subWeapon, .angleShooter)
            XCTAssertEqual(data.specialWeapon, .inkVac)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_CustomJetSquelcher_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterLong.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .customJetSquelcher)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .customJetSquelcher)
            XCTAssertEqual(data.subWeapon, .toxicMist)
            XCTAssertEqual(data.specialWeapon, .inkStorm)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - L3 Nozzlenose
    func test_L3Nozzlenose_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterTripleQuick.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .l3Nozzlenose)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .l3Nozzlenose)
            XCTAssertEqual(data.subWeapon, .curlingBomb)
            XCTAssertEqual(data.specialWeapon, .crabTank)
            XCTAssertNotNil(data.tripleShotSpanFrame)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_L3NozzlenoseD_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterTripleQuick.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .l3NozzlenoseD)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .l3NozzlenoseD)
            XCTAssertEqual(data.subWeapon, .burstBomb)
            XCTAssertEqual(data.specialWeapon, .ultraStamp)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    // MARK: - N-Zap
    func test_NZap85_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterQuickMiddle.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .nzap85)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .nzap85)
            XCTAssertEqual(data.subWeapon, .suctionBomb)
            XCTAssertEqual(data.specialWeapon, .tacticooler)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_NZap89_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterQuickMiddle.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .nzap89)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .nzap89)
            XCTAssertEqual(data.subWeapon, .autobomb)
            XCTAssertEqual(data.specialWeapon, .superChump)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Splash-o-matic
    func test_Splashomatic_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterPrecision.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .splashomatic)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .splashomatic)
            XCTAssertEqual(data.subWeapon, .burstBomb)
            XCTAssertEqual(data.specialWeapon, .crabTank)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_NeoSplashomatic_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterPrecision.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .neoSplashomatic)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .neoSplashomatic)
            XCTAssertEqual(data.subWeapon, .suctionBomb)
            XCTAssertEqual(data.specialWeapon, .tripleInkstrike)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Splattershot
    func test_Splattershot_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .splattershot)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .splattershot)
            XCTAssertEqual(data.subWeapon, .suctionBomb)
            XCTAssertEqual(data.specialWeapon, .trizooka)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_TentatekSplattershot_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .tentatekSplattershot)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .tentatekSplattershot)
            XCTAssertEqual(data.subWeapon, .splatBomb)
            XCTAssertEqual(data.specialWeapon, .tripleInkstrike)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_HeroShot_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterNormal.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .heroShotReplica)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .heroShotReplica)
            XCTAssertEqual(data.subWeapon, .suctionBomb)
            XCTAssertEqual(data.specialWeapon, .trizooka)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Splatershot Jr.
    func test_SplattershotJr_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterFirst.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .splattershotJr)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .splattershotJr)
            XCTAssertEqual(data.subWeapon, .splatBomb)
            XCTAssertEqual(data.specialWeapon, .bigBubbler)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_CustomSplattershotJr_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterFirst.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .customSplattershotJr)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .customSplattershotJr)
            XCTAssertEqual(data.subWeapon, .torpedo)
            XCTAssertEqual(data.specialWeapon, .waveBreaker)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    // MARK: - Splattershot Nova
    func test_SplattershotNova_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterQuickLong.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .splattershotNova)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .splattershotNova)
            XCTAssertEqual(data.subWeapon, .pointSensor)
            XCTAssertEqual(data.specialWeapon, .killerWail51)
            XCTAssertEqual(data.weaponSpeedType, .mid)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_AnnakiSplattershotNova_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterQuickLong.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .annakiSplattershotNova)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .annakiSplattershotNova)
            XCTAssertEqual(data.subWeapon, .inkMine)
            XCTAssertEqual(data.specialWeapon, .inkjet)
            XCTAssertEqual(data.weaponSpeedType, .mid)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Splattershot Pro
    func test_SplattershotPro_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterExpert.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .splattershotPro)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .splattershotPro)
            XCTAssertEqual(data.subWeapon, .angleShooter)
            XCTAssertEqual(data.specialWeapon, .crabTank)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_ForgeSplattershotPro_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterExpert.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .forgeSplattershotPro)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .forgeSplattershotPro)
            XCTAssertEqual(data.subWeapon, .suctionBomb)
            XCTAssertEqual(data.specialWeapon, .booyahBomb)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Sploosh-o-matic
    func test_Splooshomatic_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterShort.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .splooshomatic)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .splooshomatic)
            XCTAssertEqual(data.subWeapon, .curlingBomb)
            XCTAssertEqual(data.specialWeapon, .ultraStamp)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_NeoSplooshomatic_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterShort.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .neoSplooshomatic)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .neoSplooshomatic)
            XCTAssertEqual(data.subWeapon, .squidBeakon)
            XCTAssertEqual(data.specialWeapon, .killerWail51)
            XCTAssertEqual(data.weaponSpeedType, .fast)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.inkRecoverStop)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    // MARK: - Squeezer
    func test_Squeezer_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterFlash.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .squeezer)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .squeezer)
            XCTAssertEqual(data.subWeapon, .splashWall)
            XCTAssertEqual(data.specialWeapon, .trizooka)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.variableDamageMax)
            XCTAssertNotNil(data.variableDamageMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.variableJumpDegSwerve)
            XCTAssertNotNil(data.variableStandDegSwerve)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func test_FoilSqueezer_properties() {
        do {
            let gameParams = try service.decode(Shooter.self, from: "WeaponShooterFlash.game__GameParameterTable")
            let item = self.weaponInfo.getItem(for: .foilSqueezer)!
            
            let data = MainWeaponData(weaponInfo: item, container: gameParams)
            
            XCTAssertEqual(data.mainWeaponId, .foilSqueezer)
            XCTAssertEqual(data.subWeapon, .autobomb)
            XCTAssertEqual(data.specialWeapon, .splattercolorScreen)
            XCTAssertNil(data.weaponSpeedType)
            XCTAssertNotNil(data.moveSpeed)
            XCTAssertNotNil(data.damageValueMax)
            XCTAssertNotNil(data.damageValueMin)
            XCTAssertNotNil(data.variableDamageMax)
            XCTAssertNotNil(data.variableDamageMin)
            XCTAssertNotNil(data.jumpDegSwerve)
            XCTAssertNotNil(data.standDegSwerve)
            XCTAssertNotNil(data.variableJumpDegSwerve)
            XCTAssertNotNil(data.variableStandDegSwerve)
            XCTAssertNotNil(data.inkConsume)

        } catch {
            XCTFail(error.localizedDescription)
        }
    }

}
