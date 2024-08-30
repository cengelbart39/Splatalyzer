//
//  BlasterDataTests.swift
//  
//
//  Created by Christopher Engelbart on 2/16/24.
//

import Testing
@testable import Splatalyzer

struct WeaponKit: CustomTestStringConvertible {
    let main: MainWeapon
    let sub: SubWeapon
    let special: SpecialWeapon
    
    var testDescription: String {
        return main.localized
    }
    
    init(_ main: MainWeapon, _ sub: SubWeapon, _ special: SpecialWeapon) {
        self.main = main
        self.sub = sub
        self.special = special
    }
}

struct BlasterDataTests {
    
    let service = JSONService()
    
    var weaponInfo: WeaponInfoMain
    
    init() throws {
        self.weaponInfo = try service.decode(WeaponInfoMain.self, from: "WeaponInfoMain")
    }
    
    private func makeFileName(with weapon: MainWeapon) -> String {
        return "Weapon\(weapon.fileName()).game__GameParameterTable"
    }
    
    @Test("Blaster", arguments: [
        WeaponKit(.blaster, .autobomb, .bigBubbler),
        WeaponKit(.customBlaster, .pointSensor, .tripleSplashdown)
    ])
    func blaster(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Blaster.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueDirect != nil)
        #expect(data.blastDamageDistance.count == 2)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
    
    @Test("Clash Blaster", arguments: [
        WeaponKit(.clashBlaster, .splatBomb, .trizooka),
        WeaponKit(.clashBlasterNeo, .curlingBomb, .superChump)
    ])
    func clashBlaster(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Blaster.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .fast)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueDirect != nil)
        #expect(data.blastDamageDistance.count == 2)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
    
    @Test("Luna Blaster", arguments: [
        WeaponKit(.lunaBlaster, .splatBomb, .zipcaster),
        WeaponKit(.lunaBlasterNeo, .fizzyBomb, .ultraStamp),
        WeaponKit(.orderBlasterReplica, .splatBomb, .zipcaster)
    ])
    func lunaBlaster(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Blaster.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .fast)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueDirect != nil)
        #expect(data.blastDamageDistance.count == 2)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
    
    @Test("Range Blaster", arguments: [
        WeaponKit(.rangeBlaster, .suctionBomb, .waveBreaker),
        WeaponKit(.customRangeBlaster, .splatBomb, .krakenRoyale)
    ])
    func rangeBlaster(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Blaster.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueDirect != nil)
        #expect(data.blastDamageDistance.count == 2)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
    
    @Test("Rapid Blaster", arguments: [
        WeaponKit(.rapidBlaster, .inkMine, .tripleInkstrike),
        WeaponKit(.rapidBlasterDeco, .torpedo, .inkjet)
    ])
    func rapidBlaster(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Blaster.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueDirect != nil)
        #expect(data.blastDamageDistance.count == 2)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
    
    @Test("Rapid Blaster Pro", arguments: [
        WeaponKit(.rapidBlasterPro, .toxicMist, .inkVac),
        WeaponKit(.rapidBlasterProDeco, .angleShooter, .killerWail51)
    ])
    func rapidBlasterPro(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Blaster.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == nil)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueDirect != nil)
        #expect(data.blastDamageDistance.count == 2)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
    
    @Test("S-BLAST", arguments: [
        WeaponKit(.sblast92, .sprinkler, .reefslider),
        WeaponKit(.sblast91, .burstBomb, .booyahBomb)
    ])
    func sblast(_ kit: WeaponKit) throws {
        let gameParams = try service.decode(Blaster.self, from: self.makeFileName(with: kit.main))
        
        let item = try #require(self.weaponInfo.getItem(for: kit.main))
        
        let data = MainWeaponData(weaponInfo: item, container: gameParams)
        
        #expect(data.mainWeaponId == kit.main)
        #expect(data.subWeapon == kit.sub)
        #expect(data.specialWeapon == kit.special)
        #expect(data.weaponSpeedType == .mid)
        #expect(data.moveSpeed != nil)
        #expect(data.damageValueMax != nil)
        #expect(data.damageValueDirect != nil)
        #expect(data.blastDamageDistance.count == 2)
        #expect(data.jumpDegSwerve != nil)
        #expect(data.standDegSwerve != nil)
        #expect(data.inkRecoverStop != nil)
        #expect(data.inkConsume != nil)
    }
}
