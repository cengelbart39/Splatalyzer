//
//  TestHelper.swift
//
//
//  Created by Christopher Engelbart on 3/2/24.
//

@testable import Splatalyzer
import Foundation

/// A helper structure that contains functions that prepares certain data for use in tests.
///
/// These are typically used when certain data is needed as parameters for certain functions or strcutures.
struct TestHelper {
    static let localizationUrl = Bundle.module.url(forResource: "localizations", withExtension: "json")!
    
    static func getFullInkTankOptions(for weapon: MainWeapon) throws -> [Int : [InkTankOption]] {
        
        let mainInfo = try JSONService().decode(.weaponInfoMain, into: WeaponInfoMain.self)
        
        guard let mainItem = mainInfo.getItem(for: weapon),
              let subWeapon = mainItem.subWeapon.toSubWeapon() else {
            return [:]
        }
        
        do {
            let mainData = try MainWeaponData(for: weapon)
            let subData = try SubWeaponData(for: subWeapon)
            
            return StatHelper.fullInkTankOptions(ap: AbilityPoints(), mainInfo: mainData, subInfo: subData)
            
        } catch {
            return [:]
        }
    }
    
    static func getMainWeaponStats(for weapon: MainWeapon) throws -> MainWeaponStats {
        
        let data = try MainWeaponData(for: weapon)
        
        let mainStats = MainWeaponStats(weapon: weapon, ap: AbilityPoints(), data: data)
        
        return mainStats
    }
    
    static func getMoveStats(for weapon: MainWeapon) throws -> MovementStats {
        
        let data = try MainWeaponData(for: weapon)
        
        let moveStats = MovementStats(ap: AbilityPoints(), gearBuild: GearBuild(), mainData: data)
        
        return moveStats
    }
}
