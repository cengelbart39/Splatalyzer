//
//  BlasterBurstParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BlasterBurstParameter: Codable {
    let type: String
    let burstFrame: Int
    let moveLength: Double?
    let noOccurRoundYOver90RoundXPlus: Bool?
    let noOccurRoundYOver90RoundXMinus: Bool?
    let shotCollisionHitDamageRate: Double?
    let shotCollisionHitRadiusRate: Double?
    let splashDropPaintRadius: Double?
    let splashDropPaintShotColHitRadius: Double
    let splashPaintRadius: Double?
    let splashPaintShotColHitRadius: Double?
    let splashRoundAxisXArray: [Double]
    let splashRoundAxisYArray: [Double]
    let splashWallDropMoveParam: BlasterSplashWallDropMoveParameter
    let splashWallDropPaintParam: BlasterSplashWallDropPaintParameter
    let wallHitPaintRadius: Double?
}
