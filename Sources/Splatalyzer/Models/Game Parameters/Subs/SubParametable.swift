//
//  SubParametable.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

public protocol SubParametable: Codable {
    associatedtype MoveParameter
    associatedtype WeaponParameter
    
    var moveParam: MoveParameter { get }
    var subWeaponSetting: SubWeaponSetting { get }
    var weaponParam: WeaponParameter { get }
    
    func getOverwrites(_ playerInfo: PlayerParameters?) -> SubOverwrites
}

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
