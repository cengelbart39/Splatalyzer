//
//  SubDefenseDamageTests.swift
//  
//
//  Created by Christopher Engelbart on 2/29/24.
//

import XCTest
@testable import Splatalyzer

final class SubDefenseDamageTests: XCTestCase {
    
    let service = JSONService()
    let ap = AbilityPoints()
    var values: AbilityValues!

    override func setUpWithError() throws {
        self.values = try self.service.decode(AbilityValues.self, from: "ability-values")
    }

    override func tearDownWithError() throws {
        self.values = nil
    }
    
    func test_StatHelper_subDefenseDamages_angleShooter() throws {
        
        let data = try self.getData(for: .angleShooter)
        let subData = [SubWeapon.angleShooter : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, abilities: self.values, subData: subData)
                
        XCTAssertFalse(defDmg.isEmpty)
        XCTAssertNotNil(defDmg[.angleShooter])
        XCTAssertFalse(defDmg[.angleShooter]!.isEmpty)
        XCTAssertTrue(defDmg[.angleShooter]!
            .contains(type: .direct)
        )
    }
    
    func test_StatHelper_subDefenseDamages_autobomb() throws {
        
        let data = try self.getData(for: .autobomb)
        let subData = [SubWeapon.autobomb : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, abilities: self.values, subData: subData)
                
        XCTAssertFalse(defDmg.isEmpty)
        XCTAssertNotNil(defDmg[.autobomb])
        XCTAssertFalse(defDmg[.autobomb]!.isEmpty)
        XCTAssertTrue(defDmg[.autobomb]!
            .contains(type: .bombNormal)
        )
    }
    
    func test_StatHelper_subDefenseDamages_burstBomb() throws {
        
        let data = try self.getData(for: .burstBomb)
        let subData = [SubWeapon.burstBomb : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, abilities: self.values, subData: subData)
                
        XCTAssertFalse(defDmg.isEmpty)
        XCTAssertNotNil(defDmg[.burstBomb])
        XCTAssertFalse(defDmg[.burstBomb]!.isEmpty)
        XCTAssertTrue(defDmg[.burstBomb]!
            .contains(type: .bombNormal)
        )
    }

    func test_StatHelper_subDefenseDamages_curlingBomb() throws {
        
        let data = try self.getData(for: .curlingBomb)
        let subData = [SubWeapon.curlingBomb : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, abilities: self.values, subData: subData)
                
        XCTAssertFalse(defDmg.isEmpty)
        XCTAssertNotNil(defDmg[.curlingBomb])
        XCTAssertFalse(defDmg[.curlingBomb]!.isEmpty)
        XCTAssertTrue(defDmg[.curlingBomb]!
            .contains(type: .bombNormal)
        )
    }

    func test_StatHelper_subDefenseDamages_fizzyBomb() throws {
        
        let data = try self.getData(for: .fizzyBomb)
        let subData = [SubWeapon.fizzyBomb : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, abilities: self.values, subData: subData)
                
        XCTAssertFalse(defDmg.isEmpty)
        XCTAssertNotNil(defDmg[.fizzyBomb])
        XCTAssertFalse(defDmg[.fizzyBomb]!.isEmpty)
        XCTAssertTrue(defDmg[.fizzyBomb]!
            .contains(type: .distance)
        )
    }

    func test_StatHelper_subDefenseDamages_inkMine() throws {
        
        let data = try self.getData(for: .inkMine)
        let subData = [SubWeapon.inkMine : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, abilities: self.values, subData: subData)
                
        XCTAssertFalse(defDmg.isEmpty)
        XCTAssertNotNil(defDmg[.inkMine])
        XCTAssertFalse(defDmg[.inkMine]!.isEmpty)
        XCTAssertTrue(defDmg[.inkMine]!
            .contains(type: .bombNormal)
        )
    }
    
    func test_StatHelper_subDefenseDamages_pointSensor() throws {
        
        let data = try self.getData(for: .pointSensor)
        let subData = [SubWeapon.pointSensor : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, abilities: self.values, subData: subData)
                
        XCTAssertFalse(defDmg.isEmpty)
        XCTAssertNotNil(defDmg[.pointSensor])
        XCTAssertTrue(defDmg[.pointSensor]!.isEmpty)
    }

    func test_StatHelper_subDefenseDamages_splashWall() throws {
        
        let data = try self.getData(for: .splashWall)
        let subData = [SubWeapon.splashWall : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, abilities: self.values, subData: subData)
                
        XCTAssertFalse(defDmg.isEmpty)
        XCTAssertNotNil(defDmg[.splashWall])
        XCTAssertTrue(defDmg[.splashWall]!.isEmpty)
    }

    func test_StatHelper_subDefenseDamages_splatBomb() throws {
        
        let data = try self.getData(for: .splatBomb)
        let subData = [SubWeapon.splatBomb : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, abilities: self.values, subData: subData)
                
        XCTAssertFalse(defDmg.isEmpty)
        XCTAssertNotNil(defDmg[.splatBomb])
        XCTAssertFalse(defDmg[.splatBomb]!.isEmpty)
        XCTAssertTrue(defDmg[.splatBomb]!
            .contains(type: .bombNormal)
        )
    }

    func test_StatHelper_subDefenseDamages_sprinkler() throws {
        
        let data = try self.getData(for: .sprinkler)
        let subData = [SubWeapon.sprinkler : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, abilities: self.values, subData: subData)
                
        XCTAssertFalse(defDmg.isEmpty)
        XCTAssertNotNil(defDmg[.sprinkler])
        XCTAssertTrue(defDmg[.sprinkler]!.isEmpty)
    }
    
    func test_StatHelper_subDefenseDamages_squidBeakon() throws {
        
        let data = try self.getData(for: .squidBeakon)
        let subData = [SubWeapon.squidBeakon : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, abilities: self.values, subData: subData)
                
        XCTAssertFalse(defDmg.isEmpty)
        XCTAssertNotNil(defDmg[.squidBeakon])
        XCTAssertTrue(defDmg[.squidBeakon]!.isEmpty)
    }
    
    func test_StatHelper_subDefenseDamages_suctionBomb() throws {
        
        let data = try self.getData(for: .suctionBomb)
        let subData = [SubWeapon.suctionBomb : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, abilities: self.values, subData: subData)
                
        XCTAssertFalse(defDmg.isEmpty)
        XCTAssertNotNil(defDmg[.suctionBomb])
        XCTAssertFalse(defDmg[.suctionBomb]!.isEmpty)
        XCTAssertTrue(defDmg[.suctionBomb]!
            .contains(type: .bombNormal)
        )
    }

    func test_StatHelper_subDefenseDamages_torpedo() throws {
        
        let data = try self.getData(for: .torpedo)
        let subData = [SubWeapon.torpedo : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, abilities: self.values, subData: subData)
                
        XCTAssertFalse(defDmg.isEmpty)
        XCTAssertNotNil(defDmg[.torpedo])
        XCTAssertFalse(defDmg[.torpedo]!.isEmpty)
        XCTAssertTrue(defDmg[.torpedo]!.contains(type: .splash))
        XCTAssertTrue(defDmg[.torpedo]!.contains(type: .bombDirect))
    }
    
    func test_StatHelper_subDefenseDamages_toxicMist() throws {
        
        let data = try self.getData(for: .toxicMist)
        let subData = [SubWeapon.toxicMist : data]
        
        let defDmg = StatHelper.subDefenseDamages(ap: self.ap, abilities: self.values, subData: subData)
                
        XCTAssertFalse(defDmg.isEmpty)
        XCTAssertNotNil(defDmg[.toxicMist])
        XCTAssertTrue(defDmg[.toxicMist]!.isEmpty)
    }

    func getData(for weapon: SubWeapon) throws -> SubWeaponData {
        switch weapon {
        case .angleShooter:
            let angleShooter = try service.decode(
                AngleShooter.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: angleShooter)
            
            return subData
            
        case .autobomb:
            let autobomb = try service.decode(
                Autobomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: autobomb)
            
            return subData
            
        case .burstBomb:
            let burstBomb = try service.decode(
                BurstBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: burstBomb)
            
            return subData
            
        case .curlingBomb:
            let curlingBomb = try service.decode(
                CurlingBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: curlingBomb)
            
            return subData
            
        case .fizzyBomb:
            let fizzyBomb = try service.decode(
                FizzyBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: fizzyBomb)
            
            return subData
            
        case .inkMine:
            let inkMine = try service.decode(
                InkMine.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: inkMine)
            
            return subData
            
        case .pointSensor:
            let pointSensor = try service.decode(
                PointSensor.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: pointSensor)
            
            return subData
            
        case .splashWall:
            let splashWall = try service.decode(
                SplashWall.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: splashWall)
            
            return subData
            
        case .splatBomb:
            let splatBomb = try service.decode(
                SplatBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: splatBomb)
            
            return subData
            
        case .sprinkler:
            let sprinkler = try service.decode(
                Sprinkler.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: sprinkler)
            
            return subData
            
        case .squidBeakon:
            let squidBeakon = try service.decode(
                SquidBeakon.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let playerInfo = try service.decode(Player.self, from: "SplPlayer.game__GameParameterTable")
            
            let subData = SubWeaponData(container: squidBeakon, playerInfo: playerInfo)
            
            return subData
            
        case .suctionBomb:
            let suctionBomb = try service.decode(
                SuctionBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: suctionBomb)
            
            return subData
            
        case .torpedo:
            let torpedo = try service.decode(
                Torpedo.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: torpedo)
            
            return subData
            
        case .toxicMist:
            let toxicMist = try service.decode(
                ToxicMist.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: toxicMist)
            
            return subData
        }
    }
}
