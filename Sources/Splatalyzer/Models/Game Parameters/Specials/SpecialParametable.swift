//
//  SpecialParametable.swift
//
//
//  Created by Christopher Engelbart on 1/9/24.
//

import Foundation

protocol SpecialParametable: Codable {
    
    func getOverwrites() -> SpecialOverwrites
}

struct SpecialOverwrites {
    let chargeRateAutoPerFrame: HighMidLow?
    let crossPaintCheckLength: HighMidLow?
    let crossPaintRadius: HighMidLow?
    let distanceDamageDistanceRate: HighMidLow?
    let inkConsumeHook: HighMidLow?
    let inkConsumePerSec: HighMidLow?
    let maxFieldHp: HighMidLow?
    let maxFrame: HighMidLow?
    let maxHp: HighMidLow?
    let maxRadius: HighMidLow?
    let moveSpeed: HighMidLow?
    let paintRadius: HighMidLow?
    let powerUpFrame: HighMidLow?
    let radiusMax: HighMidLow?
    let radiusMin: HighMidLow?
    let spawnSpeedZSpecUp: HighMidLow?
    let specialDurationFrame: HighMidLow?
    let splashAroundVelocityMax: HighMidLow?
    let splashAroundVelocityMin: HighMidLow?
    let targetInCircleRadius: HighMidLow?
}
