//
//  SlosherDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

struct SlosherDataTests {
    
    let service = JSONService()
    
    let mainInfo = try! JSONService().decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    
    private func makeFileName(with weapon: MainWeapon) -> String {
        return "Weapon\(weapon.fileName()).game__GameParameterTable"
    }
    
    @Test("Bloblobber", arguments: [
        WeaponKit(.bloblobber, .sprinkler, .inkStorm),
        WeaponKit(.bloblobberDeco, .angleShooter, .krakenRoyale)
    ])
    func bloblobber(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Slosher.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueDirect != nil)
        #expect(data.damageSecondaryValueDirectMax != nil)
        #expect(data.damageSecondaryValueDirectMin != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsumeSlosher != nil)
    }
    
    @Test("Dread Wringer", arguments: [
        WeaponKit(.dreadWringer, .suctionBomb, .reefslider),
        WeaponKit(.dreadWringerD, .squidBeakon, .waveBreaker)
    ])
    func dreadWringer(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Slosher.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueDirectMax != nil)
        #expect(data.damageValueDirectMin != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsumeSlosher != nil)
    }
    
    @Test("Explosher", arguments: [
        WeaponKit(.explosher, .pointSensor, .inkStorm),
        WeaponKit(.customExplosher, .splashWall, .tripleSplashdown)
    ])
    func explosher(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Slosher.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .slow)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueDirect != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsumeSlosher != nil)
    }
    
    @Test("Slosher", arguments: [
        WeaponKit(.slosher, .splatBomb, .tripleInkstrike),
        WeaponKit(.slosherDeco, .angleShooter, .zipcaster),
        WeaponKit(.orderSlosherReplica, .splatBomb, .tripleInkstrike)
    ])
    func slosher(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Slosher.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueDirectMax != nil)
        #expect(data.damageValueDirectMin != nil)
        #expect(data.damageSecondaryValueDirectMax != nil)
        #expect(data.damageSecondaryValueDirectMin != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsumeSlosher != nil)
    }
    
    @Test("Sloshing Machine", arguments: [
        WeaponKit(.sloshingMachine, .fizzyBomb, .booyahBomb),
        WeaponKit(.sloshingMachineNeo, .pointSensor, .trizooka)
    ])
    func sloshingMachine(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Slosher.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueDirectMax != nil)
        #expect(data.damageValueDirectMin != nil)
        #expect(data.damageSecondaryValueDirectMax != nil)
        #expect(data.damageSecondaryValueDirectMin != nil)
        #expect(data.blastSplashDamage != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsumeSlosher != nil)
    }
    
    @Test("Tri-Slosher", arguments: [
        WeaponKit(.triSlosher, .toxicMist, .inkjet),
        WeaponKit(.triSlosherNouveau, .fizzyBomb, .tacticooler)
    ])
    func triSlosher(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Slosher.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.mainInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .fast)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueDirectMax != nil)
        #expect(data.damageValueDirectMin != nil)
        #expect(data.damageSecondaryValueDirectMax != nil)
        #expect(data.damageSecondaryValueDirectMin != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsumeSlosher != nil)
    }
}
