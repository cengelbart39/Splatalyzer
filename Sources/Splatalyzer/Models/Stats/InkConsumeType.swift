//
//  InkConsumeType.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

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
}
