//
//  FileRepresentable.swift
//  Splatalyzer
//
//  Created by Christopher Engelbart on 9/2/24.
//

import Foundation

public protocol FileRepresentable {
    var fileName: String { get }
}

public protocol WeaponRepresentable: FileRepresentable {
    var localized: String { get }
    var image: PlatformImage? { get }
}
