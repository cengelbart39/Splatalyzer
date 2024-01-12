//
//  SubParametable.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

protocol SubParametable: Codable {
    associatedtype MoveParameter
    associatedtype WeaponParameter
    
    var moveParam: MoveParameter { get }
    var subWeaponSetting: SubWeaponSetting { get }
    var weaponParam: WeaponParameter { get }
    
    func getOverwrites(_ playerInfo: PlayerParameters?) -> SubOverwrites
}

struct SubOverwrites: Overwritable {
    let spawnSpeedZSpecUp: HighMidLow
    let periodFirst: HighMidLow?
    let periodSecond: HighMidLow?
    let markingFrameSubSpec: HighMidLow?
    let sensorRadius: HighMidLow?
    let explosionRadius: HighMidLow?
    let maxHp: HighMidLow?
    let subSpecUpParam: BeaconSubSpecUpParameter?
    
    func value(for key: AbilityValue) -> HighMidLow? {
        switch key {
        case .markingFrameSubSpec, .subMarkingTimeInSeconds:
            return self.markingFrameSubSpec
            
        case .subSpecUpParam, .subVelocity:
            return self.subSpecUpParam?.subSpecUpParam
            
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
