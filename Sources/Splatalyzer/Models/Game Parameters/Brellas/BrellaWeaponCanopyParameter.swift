//
//  BrellaWeaponCanopyParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct BrellaWeaponCanopyParameter: Codable {
    let type: String
    let canopyChargeFrame: Int?
    let canopyDirXZDiffDegH: Double?
    let canopyDirXZDiffDegL: Double?
    let canopyDirXZRotDegBias: Double?
    let canopyDirXZRotDegH: Double?
    let canopyDirXZRotDegL: Double?
    let canopyNakedFrame: Int?
    let canopyOpenEndBias: Double?
    let canopyOpenEndOffset: Double
    let canopyOpenFrame: Int?
    let canopyOpenStartOffset: Double
    let canopyShotFrame: Int?
    let inkConsumeUmbrella: Double
    let isAlwaysNaked: Bool?
    let isCanopyShot: Bool?
    let isRecoverCanopyByKill: Bool?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case canopyChargeFrame = "CanopyChargeFrame"
        case canopyDirXZDiffDegH = "CanopyDirXZ_DiffDeg_H"
        case canopyDirXZDiffDegL = "CanopyDirXZ_DiffDeg_L"
        case canopyDirXZRotDegBias = "CanopyDirXZ_RotDegBias"
        case canopyDirXZRotDegH = "CanopyDirXZ_RotDeg_H"
        case canopyDirXZRotDegL = "CanopyDirXZ_RotDeg_L"
        case canopyNakedFrame = "CanopyNakedFrame"
        case canopyOpenEndBias = "CanopyOpenEndBias"
        case canopyOpenEndOffset = "CanopyOpenEndOffset"
        case canopyOpenFrame = "CanopyOpenFrame"
        case canopyOpenStartOffset = "CanopyOpenStartOffset"
        case canopyShotFrame = "CanopyShotFrame"
        case inkConsumeUmbrella = "InkConsumeUmbrella"
        case isAlwaysNaked = "IsAlwaysNaked"
        case isCanopyShot = "IsCanopyShot"
        case isRecoverCanopyByKill = "IsRecoverCanopyByKill"
    }
}
