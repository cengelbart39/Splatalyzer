//
//  SubParametable.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

public protocol SubWeaponable: GameParametable where Parameters: SubParametable { }

/// Sets required properties for any Sub Weapon
public protocol SubParametable: Parametable {
    associatedtype MoveParameter: Parametable
    associatedtype WeaponParameter: Parametable
    
    var moveParam: MoveParameter { get }
    var subWeaponSetting: SubWeaponSetting { get }
    var weaponParam: WeaponParameter { get }
    
    
    /// Isolates properties of  the sub weapon that can overwrite other properties
    /// - Parameter playerInfo: Expected to be `nil` unless, computing overwrites for ``SquidBeakon``
    /// - Returns: Overwrites for properties that exist
    func getOverwrites(_ playerInfo: Player?) -> SubOverwrites
}

/// Represents values that can be overwritten with a sub weapon's properties
public struct SubOverwrites: Overwritable {
    public let spawnSpeedZSpecUp: HighMidLow
    public let periodFirst: HighMidLow?
    public let periodSecond: HighMidLow?
    public let markingFrameSubSpec: HighMidLow?
    public let sensorRadius: HighMidLow?
    public let explosionRadius: HighMidLow?
    public let maxHp: HighMidLow?
    public let subSpecUpParam: BeaconSubSpecUpParameter?
    
    public func value(for key: AbilityValue) -> HighMidLow? {
        switch key {
        case .markingFrameSubSpec, .subMarkingTimeInSeconds:
            return self.markingFrameSubSpec
            
        case .subSpecUpParam, .subVelocity:
            return self.subSpecUpParam?.subSpecUpParam ?? self.spawnSpeedZSpecUp
            
        case .subFirstPhaseDuration:
            return self.periodFirst
            
        case .subSecondPhaseDuration:
            return self.periodSecond
            
        case .subMarkingRadius:
            return self.sensorRadius
            
        case .subExplosionRadius:
            return self.explosionRadius
            
        case .subHp:
            return self.maxHp
            
        default:
            return nil
        }
    }
}
