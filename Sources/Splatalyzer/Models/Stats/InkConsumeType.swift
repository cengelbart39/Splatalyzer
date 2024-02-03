//
//  InkConsumeType.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

/// The way in which ink is consumed
public enum InkConsumeType: String, CaseIterable {
    case normal = "Shots"
    case swing = "Swings"
    case slosh = "Sloshes"
    case verticalSwing = "Vertical Swings"
    case horizontalSwing = "Horizontal Swings"
    case tapShot = "Tap Shots"
    case fullCharge = "Fully Charged Shots"
    case splatlingCharge = "Full Charges"
    case shieldLaunch = "Shield Launches"
    case dualieRoll = "Dodge Rolls"
    
    /// Localized version of raw value
    var localized: String {
        return NSLocalizedString(self.rawValue, comment: "")
    }
}
