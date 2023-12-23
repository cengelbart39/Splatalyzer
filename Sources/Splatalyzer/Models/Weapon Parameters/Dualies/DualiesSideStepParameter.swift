//
//  DualiesSideStepParameter.swift
//
//
//  Created by Christopher Engelbart on 12/23/23.
//

import Foundation

struct DualiesSideStepParameter: Codable {
    let type: String
    let chargeFrame: Int?
    let inkConsume: Double
    let inkRecoverStop: Int?
    let isShootableInMove: Bool?
    let moveDist: Double?
    let moveFrame: Int?
    let repeatCnt: Int?
    let slipMoveDistAir: Double?
    let slipMoveDistGnd: Double?
    let slipMoveFrame: Int?
    let splashSlideParam: SplashSlideParameter?
    let unrelaxFrameMove: Int
    let unrelaxFrameMoveLast: Int
    let unrelaxFrameNoSideStep: Int?
    let unrelaxFrameNoSideStepLast: Int?
    let unrelaxFrameNoSquid: Int?
    let unrelaxFrameNoSquidLast: Int?
    let unrelaxFrameNoWeapon: Int?
    let unrelaxFrameNoWeaponLast: Int?
    let unrelaxFrameOneMuzzle: Int?
    let unrelaxFrameOneMuzzleLast: Int?
    
    struct SplashSlideParameter: Codable {
        let moveLength: Double?
        let paintWidthHalf: Double
        
        enum CodingKeys: String, CodingKey {
            case moveLength = "MoveLength"
            case paintWidthHalf = "PaintWidthHalf"
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case chargeFrame = "ChargeFrame"
        case inkConsume = "InkConsume"
        case inkRecoverStop = "InkRecoverStop"
        case isShootableInMove = "IsShootableInMove"
        case moveDist = "MoveDist"
        case moveFrame = "MoveFrame"
        case repeatCnt = "RepeatCnt"
        case slipMoveDistAir = "SlipMoveDistAir"
        case slipMoveDistGnd = "SlipMoveDistGnd"
        case slipMoveFrame = "SlipMoveFrame"
        case splashSlideParam = "SplashSlideParam"
        case unrelaxFrameMove = "UnrelaxFrameMove"
        case unrelaxFrameMoveLast = "UnrelaxFrameMove_Last"
        case unrelaxFrameNoSideStep = "UnrelaxFrameNoSideStep"
        case unrelaxFrameNoSideStepLast = "UnrelaxFrameNoSideStep_Last"
        case unrelaxFrameNoSquid = "UnrelaxFrameNoSquid"
        case unrelaxFrameNoSquidLast = "UnrelaxFrameNoSquid_Last"
        case unrelaxFrameNoWeapon = "UnrelaxFrameNoWeapon"
        case unrelaxFrameNoWeaponLast = "UnrelaxFrameNoWeapon_Last"
        case unrelaxFrameOneMuzzle = "UnrelaxFrameOneMuzzle"
        case unrelaxFrameOneMuzzleLast = "UnrelaxFrameOneMuzzle_Last"
    }
}
