//
//  ShootingRunSpeedType.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

/// Represents the type of run speed while shooting a weapon
/// - SeeAlso: ``StatHelper/shootingRunSpeed(for:ap:mainInfo:)`` for how to use this Enum.
public enum ShootingRunSpeedType {
    case moveSpeed
    case moveSpeedCharge
    case moveSpeedFullCharge
    case moveSpeedVariable
}
