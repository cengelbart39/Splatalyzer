//
//  WeaponDatable.swift
//
//
//  Created by Christopher Engelbart on 1/11/24.
//

import Foundation

protocol WeaponDatable {
    var overwrites: any Overwritable { get }
    
    func damage(for type: DamageType) -> Any?
}

protocol Overwritable {
    func value(for key: AbilityValue) -> HighMidLow?
}
