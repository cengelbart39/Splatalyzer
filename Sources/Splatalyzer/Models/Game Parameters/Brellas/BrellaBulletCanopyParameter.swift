//
//  BrellaBulletCanopyParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct BrellaBulletCanopyParameter: Codable {
    let type: String
    let canopyAttackedDamageRate: Double
    let canopyColRadius: Double
    let canopyCureHPPerFrame: Int
    let canopyDamage: Int
    let canopyFrame: Int
    let canopyGravity: Double
    let canopyHP: Int
    let canopyHitOtherCanopyDamage: Int
    let canopyHitOtherCanopyVolume: Int
    let canopyHitShieldAttackDamage: Int
    let canopyHitShieldReceiveDamage: Int
    let canopyInitSpeed: Double
    let canopyMoveKnockBackSideStepRate: Double
    let canopyNakedFrame: Int
    let canopyPaintRadius: Double
    let canopySpeedAirAddScaleXZ: Double
    let canopySpeedGroundAddScale: Double
    let gootSplashPaintRadius: Double
    let gootSplashShapeCastOffset: Double
    let gootSplashSpanFrame: Int
    let gootSplashWaitFrame: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case canopyAttackedDamageRate = "CanopyAttackedDamageRate"
        case canopyColRadius = "CanopyColRadius"
        case canopyCureHPPerFrame = "CanopyCureHPPerFrame"
        case canopyDamage = "CanopyDamage"
        case canopyFrame = "CanopyFrame"
        case canopyGravity = "CanopyGravity"
        case canopyHP = "CanopyHP"
        case canopyHitOtherCanopyDamage = "CanopyHitOtherCanopyDamage"
        case canopyHitOtherCanopyVolume = "CanopyHitOtherCanopyVolume"
        case canopyHitShieldAttackDamage = "CanopyHitShieldAttackDamage"
        case canopyHitShieldReceiveDamage = "CanopyHitShieldReceiveDamage"
        case canopyInitSpeed = "CanopyInitSpeed"
        case canopyMoveKnockBackSideStepRate = "CanopyMoveKnockBackSideStepRate"
        case canopyNakedFrame = "CanopyNakedFrame"
        case canopyPaintRadius = "CanopyPaintRadius"
        case canopySpeedAirAddScaleXZ = "CanopySpeedAirAddScaleXZ"
        case canopySpeedGroundAddScale = "CanopySpeedGroundAddScale"
        case gootSplashPaintRadius = "FootSplashPaintRadius"
        case gootSplashShapeCastOffset = "FootSplashShapeCastOffset"
        case gootSplashSpanFrame = "FootSplashSpanFrame"
        case gootSplashWaitFrame = "FootSplashWaitFrame"
    }
}
