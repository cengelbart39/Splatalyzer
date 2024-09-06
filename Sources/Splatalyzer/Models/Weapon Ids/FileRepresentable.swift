//
//  FileRepresentable.swift
//  Splatalyzer
//
//  Created by Christopher Engelbart on 9/2/24.
//

import Foundation

/// A type that has an associated JSON file
public protocol FileRepresentable {
    
    /// The name of the associated file
    var fileName: String { get }
}

/// A type that represents an in-game weapon
public protocol WeaponRepresentable: FileRepresentable {
    /// The localized name of the object
    var localized: String { get }
    
    /// The name of an associated image
    var image: PlatformImage? { get }
}
