//
//  GameParametable.swift
//
//
//  Created by Christopher Engelbart on 12/29/23.
//

import Foundation
import SwiftUI

/// Generally represents models that represent game parameters
///
/// This protocol helps model `game__GameParameterTable.json` files.
///
/// They are structured as follows:
/// ```json
///{
///   "GameParameters": {
///     "Param1": {...}
///     "Param2": {...}
///     ...
///   }
///}
/// ```
///
/// However, every file is a different; the contents of `GameParameters` isn't constant file-to-file.
///
/// This protocol is designed to support this structure.
public protocol GameParametable: Decodable {
    /// A type that represents the game parameters and all of their properties.
    associatedtype Parameters: Codable
    
    /// The game parameters
    var parameters: Parameters { get }
    
    init(parameters: Parameters)
}

public extension GameParametable {
    init(parameters: Parameters) {
        self.init(parameters: parameters)
    }
    
    /// Inherited from `Decodable.init(from:)`.
    ///
    /// If this was a `struct`, we'd be able to just add some Coding Keys and call it a day.
    ///
    /// Since this is a `protocol`, we can't do that.
    ///
    /// The initializers uses ``GPCodingKeys`` to decode ``Parameters``, regardless of its type.
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: GPCodingKeys.self)
        let parameters = try container.decode(Parameters.self, forKey: .parameters)
        
        self.init(parameters: parameters)
    }
}

public enum GPCodingKeys: String, CodingKey {
    case parameters = "GameParameters"
}
