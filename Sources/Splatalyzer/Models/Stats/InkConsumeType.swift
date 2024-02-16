//
//  InkConsumeType.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

/// The way in which ink is consumed
public enum InkConsumeType: String, CaseIterable, Codable {
    case normal
    case swing
    case slosh
    case verticalSwing
    case horizontalSwing
    case tapShot
    case fullCharge
    case splatlingCharge
    case shieldLaunch
    case dualieRoll
    
    /// Localized version of raw value
    public var localized: String {
        return NSLocalizedString(self.rawValue, tableName: "InkConsumeType", bundle: Bundle.module, comment: "")
    }
}
