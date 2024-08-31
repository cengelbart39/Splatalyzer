//
//  RollerDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

struct RollerDataTests {
    
    let service = JSONService()
    
    let mainInfo = try! JSONService().decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    
    private func makeFileName(with weapon: MainWeapon) -> String {
        return "Weapon\(weapon.fileName()).game__GameParameterTable"
    }

    @Test("Big Swig Roller", arguments: [
        WeaponKit(.bigSwigRoller, .splashWall, .inkVac),
        WeaponKit(.bigSwigRollerExpress, .angleShooter, .inkStorm)
    ])
    func bigSwigRoller(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Roller.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .mid)
        #expect(data.bodyDamage != nil)
        #expect(data.verticalSwingUnitGroupDamageMax != nil)
        #expect(data.verticalSwingUnitGroupDamageMin != nil)
        #expect(data.wideSwingUnitGroupDamageMax != nil)
        #expect(data.wideSwingUnitGroupDamageMin != nil)
        #expect(data.inkConsumeWeaponVerticalSwing != nil)
        #expect(data.inkConsumeWeaponWideSwing != nil)
    }
    
    @Test("Carbon Roller", arguments: [
        WeaponKit(.carbonRoller, .autobomb, .zipcaster),
        WeaponKit(.carbonRollerDeco, .burstBomb, .trizooka)
    ])
    func carbonRoller(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Roller.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .fast)
        #expect(data.bodyDamage != nil)
        #expect(data.verticalSwingUnitGroupDamageMax != nil)
        #expect(data.verticalSwingUnitGroupDamageMin != nil)
        #expect(data.wideSwingUnitGroupDamageMax != nil)
        #expect(data.wideSwingUnitGroupDamageMin != nil)
        #expect(data.inkConsumeWeaponVerticalSwing != nil)
        #expect(data.inkConsumeWeaponWideSwing != nil)
    }
    
    @Test("Dynamo Roller", arguments: [
        WeaponKit(.dynamoRoller, .sprinkler, .tacticooler),
        WeaponKit(.goldDynamoRoller, .splatBomb, .superChump)
    ])
    func dynamoRoller(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Roller.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .slow)
        #expect(data.bodyDamage != nil)
        #expect(data.verticalSwingUnitGroupDamageMax != nil)
        #expect(data.verticalSwingUnitGroupDamageMin != nil)
        #expect(data.wideSwingUnitGroupDamageMax != nil)
        #expect(data.wideSwingUnitGroupDamageMin != nil)
        #expect(data.inkConsumeWeaponVerticalSwing != nil)
        #expect(data.inkConsumeWeaponWideSwing != nil)
    }
    
    @Test("Flingza Roller", arguments: [
        WeaponKit(.flingzaRoller, .inkMine, .tentaMissiles),
        WeaponKit(.foilFlingzaRoller, .suctionBomb, .splattercolorScreen)
    ])
    func flingzaRoller(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Roller.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.bodyDamage != nil)
        #expect(data.verticalSwingUnitGroupDamageMax != nil)
        #expect(data.verticalSwingUnitGroupDamageMin != nil)
        #expect(data.wideSwingUnitGroupDamageMax != nil)
        #expect(data.wideSwingUnitGroupDamageMin != nil)
        #expect(data.inkConsumeWeaponVerticalSwing != nil)
        #expect(data.inkConsumeWeaponWideSwing != nil)
    }
    
    @Test("Splat Roller", arguments: [
        WeaponKit(.splatRoller, .curlingBomb, .bigBubbler),
        WeaponKit(.krakOnSplatRoller, .squidBeakon, .krakenRoyale),
        WeaponKit(.orderRollerReplica, .curlingBomb, .bigBubbler)
    ])
    func splatRoller(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Roller.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.bodyDamage != nil)
        #expect(data.verticalSwingUnitGroupDamageMax != nil)
        #expect(data.verticalSwingUnitGroupDamageMin != nil)
        #expect(data.wideSwingUnitGroupDamageMax != nil)
        #expect(data.wideSwingUnitGroupDamageMin != nil)
        #expect(data.inkConsumeWeaponVerticalSwing != nil)
        #expect(data.inkConsumeWeaponWideSwing != nil)
    }
}
