//
//  BlasterBurstParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BlasterBurstParameter: Codable {
    let type: String
    let burstFrame: Int?
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
    let splashWallDropMoveParam: BlasterWallDropMoveParameter
    let splashWallDropPaintParam: BlasterSplashWallDropPaintParameter
    let wallHitPaintRadius: Double?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case burstFrame = "BurstFrame"
        case moveLength = "MoveLength"
        case noOccurRoundYOver90RoundXPlus = "NoOccurRoundYOver90RoundXPlus"
        case noOccurRoundYOver90RoundXMinus = "NoOccurRoundYOver90RoundXMinus"
        case shotCollisionHitDamageRate = "ShotCollisionHitDamageRate"
        case shotCollisionHitRadiusRate = "ShotCollisionHitRadiusRate"
        case splashDropPaintRadius = "SplashDropPaintRadius"
        case splashDropPaintShotColHitRadius = "SplashDropPaintShotColHitRadius"
        case splashPaintRadius = "SplashPaintRadius"
        case splashPaintShotColHitRadius = "SplashPaintShotColHitRadius"
        case splashRoundAxisXArray = "SplashRoundAxisXArray"
        case splashRoundAxisYArray = "SplashRoundAxisYArray"
        case splashWallDropMoveParam = "SplashWallDropMoveParam"
        case splashWallDropPaintParam = "SplashWallDropPaintParam"
        case wallHitPaintRadius = "WallHitPaintRadius"
    }
}
