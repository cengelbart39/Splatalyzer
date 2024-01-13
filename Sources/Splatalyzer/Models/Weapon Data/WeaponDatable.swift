//
//  WeaponDatable.swift
//
//
//  Created by Christopher Engelbart on 1/11/24.
//

import Foundation

public protocol WeaponDatable {
    var overwrites: any Overwritable { get }
    
    func damage(for type: DamageType) -> Any?
}

public protocol Overwritable {
    func value(for key: AbilityValue) -> HighMidLow?
}
