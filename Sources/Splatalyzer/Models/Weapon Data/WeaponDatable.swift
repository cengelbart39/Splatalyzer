//
//  WeaponDatable.swift
//
//
//  Created by Christopher Engelbart on 1/11/24.
//

import Foundation

/// A type that contains weapon data
public protocol WeaponDatable: Sendable {
    associatedtype Weapon: WeaponRepresentable
    associatedtype Overwrite: Overwritable
    
    /// Required throwable initializer
    /// - Parameter weapon: Some object conforming to ``WeaponRepresentable``
    init(for weapon: Weapon) throws
    
    /// An object that contains properties that can overwrite those in the conforming object
    var overwrites: Overwrite { get }
    
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
