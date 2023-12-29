//
//  BrellaBulletShotgunParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct BrellaBulletShotgunParameter: Codable {
    let type: String
    let damageEffectiveTotalMax: Int
    let groupParams: [BrellaBulletShotgunGroupParameter]
    let shotgunWallDropCollisionParam: BrellaBulletShotgunWallDropCollisionParameter?
    let shotgunWallDropMoveParam: BrellaBulletShotgunWallDropMoveParameter
    let splashParam: BrellaBulletShotgunSplashParameter
    let splashWallDropCollisionParam: BrellaBulletShotgunSplashWallDropCollisionParameter
    let splashWallDropMoveParam: BrellaBulletShotgunSplashWallDropMoveParameter
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case damageEffectiveTotalMax = "DamageEffectiveTotalMax"
        case groupParams = "GroupParams"
        case shotgunWallDropCollisionParam = "ShotgunWallDropCollisionParam"
        case shotgunWallDropMoveParam = "ShotgunWallDropMoveParam"
        case splashParam = "SplashParam"
        case splashWallDropCollisionParam = "SplashWallDropCollisionParam"
        case splashWallDropMoveParam = "SplashWallDropMoveParam"
    }
}

struct BrellaBulletShotgunWallDropCollisionParameter: Codable {
    let paintRadiusShock: Double
    
    enum CodingKeys: String, CodingKey {
        case paintRadiusShock = "PaintRadiusShock"
    }
}

struct BrellaBulletShotgunWallDropMoveParameter: Codable {
    let fallPeriodFirstFrameMax: Int
    let fallPeriodFirstFrameMin: Int
    let fallPeriodFirstTargetSpeed: Double
    let fallPeriodLastFrameMax: Int
    let fallPeriodLastFrameMin: Int
    
    enum CodingKeys: String, CodingKey {
        case fallPeriodFirstFrameMax = "FallPeriodFirstFrameMax"
        case fallPeriodFirstFrameMin = "FallPeriodFirstFrameMin"
        case fallPeriodFirstTargetSpeed = "FallPeriodFirstTargetSpeed"
        case fallPeriodLastFrameMax = "FallPeriodLastFrameMax"
        case fallPeriodLastFrameMin = "FallPeriodLastFrameMin"
    }
}

struct BrellaBulletShotgunSplashParameter: Codable {
    let createSplashLength: Double?
    let createSplashNum: Int?
    let splashPaintDepthScaleFullActive: Double
    let splashPaintDepthScaleOneActive: Double
    let splashPaintWidthFullActive: Double
    let splashPaintWidthOneActive: Double
    
    enum CodingKeys: String, CodingKey {
        case createSplashLength = "CreateSplashLength"
        case createSplashNum = "CreateSplashNum"
        case splashPaintDepthScaleFullActive = "SplashPaintDepthScaleFullActive"
        case splashPaintDepthScaleOneActive = "SplashPaintDepthScaleOneActive"
        case splashPaintWidthFullActive = "SplashPaintWidthFullActive"
        case splashPaintWidthOneActive = "SplashPaintWidthOneActive"
    }
}

struct BrellaBulletShotgunSplashWallDropCollisionParameter: Codable {
    let paintRadiusFall: Double
    let paintRadiusGround: Double
    let paintRadiusShock: Double
    
    enum CodingKeys: String, CodingKey {
        case paintRadiusFall = "PaintRadiusFall"
        case paintRadiusGround = "PaintRadiusGround"
        case paintRadiusShock = "PaintRadiusShock"
    }
}

struct BrellaBulletShotgunSplashWallDropMoveParameter: Codable {
    let fallPeriodFirstFrameMax: Int
    let fallPeriodFirstTargetSpeed: Double
    let fallPeriodLastFrameMax: Int
    let fallPeriodLastFrameMin: Int
    let fallPeriodSecondFrame: Int
    let fallPeriodSecondTargetSpeed: Double
    
    enum CodingKeys: String, CodingKey {
        case fallPeriodFirstFrameMax = "FallPeriodFirstFrameMax"
        case fallPeriodFirstTargetSpeed = "FallPeriodFirstTargetSpeed"
        case fallPeriodLastFrameMax = "FallPeriodLastFrameMax"
        case fallPeriodLastFrameMin = "FallPeriodLastFrameMin"
        case fallPeriodSecondFrame = "FallPeriodSecondFrame"
        case fallPeriodSecondTargetSpeed = "FallPeriodSecondTargetSpeed"
    }
}
