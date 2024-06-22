//
//  BuildStats.swift
//
//
//  Created by Christopher Engelbart on 1/10/24.
//

import Foundation

/// Represents all stats for a``GearBuild``
public struct BuildStats: Codable, Equatable, Identifiable, Sendable {
    
    public var id = UUID()
    
    /// Statistics about the Main Weapon
    public let mainStats: MainWeaponStats
    
    /// Statistics about the Sub Weapon
    public let subStats: SubWeaponStats
    
    /// Statistics about the Special Weapon
    public let specialStats: SpecialWeaponStats
    
    /// Statistics about Sub Weapon Defense
    public let subDefenseStats: SubDefenseStats
    
    /// Statistics about player Movement
    public let moveStats: MovementStats
    
    /// Statistics that don't fall in any particular category
    public let miscStats: MiscStats
    
    /// The number of main weapon shots per button press
    public let multiShots: Int?
    
    /// The number of shots that can be taken after a number of sub weapon uses.
    public let fullInkTankOptions: [Int : [InkTankOption]]
    
    /// Damage done by the Main Weapon
    public let mainDamages: [DamageStat]
    
    /// Damage done by the Special Weapon
    public let specialDamages: [DamageStat]
    
    /// Damage done by every Sub Weapon. Keys refer to the specific sub weapon.
    public let subDefenseDamages: [SubWeapon : [DamageEffectStat]]
    
    
    /// Calculates stats for a ``GearBuild`` and weapon kit pair
    /// - Parameters:
    ///   - mainInfo: Information about the main weapon
    ///   - allSubInfo: Information about every sub weapon
    ///   - specialInfo: Information about the associated special weapon
    ///   - gearBuild: The user's gear build
    ///   - ldeIntensity: The intensity of Last-Ditch Effort; a range from 0 to 21
    ///   - usingTacticooler: Whether Tacticooler effects should be accounted for
    public init(
        mainInfo: MainWeaponData,
        allSubInfo: [SubWeapon : SubWeaponData],
        specialInfo: SpecialWeaponData,
        gearBuild: GearBuild,
        ldeIntensity: Int,
        usingTacticooler: Bool
    ) {
        let ap = gearBuild.toAbilityPoints(ldeIntensity: ldeIntensity, usingTacticooler: usingTacticooler)
        
        let subInfo = allSubInfo[mainInfo.subWeapon]!
        
        self.mainStats = MainWeaponStats(
            weapon: mainInfo.mainWeaponId,
            ap: ap,
            data: mainInfo
        )
        
        self.subStats = SubWeaponStats(
            ap: ap,
            mainData: mainInfo,
            subData: subInfo
        )
        
        self.specialStats = SpecialWeaponStats(
            ap: ap,
            gearBuild: gearBuild,
            mainData: mainInfo,
            specialData: specialInfo
        )
        
        self.subDefenseStats = SubDefenseStats(
            ap: ap,
            mainData: mainInfo,
            allSubData: allSubInfo
        )
        
        self.moveStats = MovementStats(
            ap: ap,
            gearBuild: gearBuild,
            mainData: mainInfo
        )
        
        self.miscStats = MiscStats(
            ap: ap,
            gearBuild: gearBuild,
            mainData: mainInfo,
            usingTacticooler: usingTacticooler
        )
                        
        self.multiShots = StatHelper.multiShotDict[mainInfo.mainWeaponId]
        
        self.fullInkTankOptions = StatHelper.fullInkTankOptions(
            ap: ap,
            mainInfo: mainInfo,
            subInfo: subInfo)
        
        self.mainDamages = StatHelper.mainDamages(mainInfo: mainInfo)

        self.specialDamages = StatHelper.specialDamages(specialInfo: specialInfo)
        
        self.subDefenseDamages = StatHelper.subDefenseDamages(ap: ap,subData: allSubInfo)
    }
}
