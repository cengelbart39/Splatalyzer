//
//  WeaponDatable.swift
//
//
//  Created by Christopher Engelbart on 1/11/24.
//

import Foundation

/// Represents structures that contain weapon data 
public protocol WeaponDatable: Sendable {
    var overwrites: any Overwritable { get }
    
    /// Fetches the proper damage value for a ``DamageType``
    /// - Parameter type: A specified type of damage
    /// - Returns: Damage is represented in different ways. Most commonly `Double` and ``HighMidLow``. Can return `nil` in the absence of a property.
    func damage(for type: DamageType) -> Any?
}

/// A structure that can overwrite an ``AbilityValue`` property with its own property
public protocol Overwritable: Sendable {
    
    /// Gets the associated weapon property for an ``AbilityValue``
    /// - Parameter key: An  `AbilityValue` that the weapon *may* be able to overwrite
    /// - Returns: If the weapon cannot overwrite the `AbilityValue`, return `nil`; otherwise, return the overwrite value
    func value(for key: AbilityValue) -> HighMidLow?
}
