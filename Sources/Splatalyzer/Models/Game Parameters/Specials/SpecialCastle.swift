//
//  SpecialCastle.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SpecialCastle: Codable {
    let bodyParam: BodyParameter
    let weaponParam: WeaponParameter
    
    enum CodingKeys: String, CodingKey {
        case bodyParam = "BodyParam"
        case weaponParam = "WeaponParam"
    }
    
    struct BodyParameter: Codable {
        let type: String
        let collisionAttackFrontOffset: Double
        let collisionDashFrontOffset: Double
        let collisionDashRadiusForPlayer: Double
        let collisionJumpRadiusForPlayer: Double
        let collisionPaintAttackFrontOffset: Double
        let collisionPaintDashFrontOffset: Double
        let collisionPaintOffFrontOffset: Double
        let collisionRadiusForField: Double
        let collisionUpperOffset: Double
        let damageJumpValue: Int
        let defiladeUpperOffset: Double
        let defiladeYMinusLength: Double
        let paintCheckUpperOffset: Double
        let paintDepthScale: Double
        let paintSpanFrame: Int
        let paintWidthHalf: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case collisionAttackFrontOffset = "CollisionAttackFrontOffset"
            case collisionDashFrontOffset = "CollisionDashFrontOffset"
            case collisionDashRadiusForPlayer = "CollisionDashRadiusForPlayer"
            case collisionJumpRadiusForPlayer = "CollisionJumpRadiusForPlayer"
            case collisionPaintAttackFrontOffset = "CollisionPaintAttackFrontOffset"
            case collisionPaintDashFrontOffset = "CollisionPaintDashFrontOffset"
            case collisionPaintOffFrontOffset = "CollisionPaintOffFrontOffset"
            case collisionRadiusForField = "CollisionRadiusForField"
            case collisionUpperOffset = "CollisionUpperOffset"
            case damageJumpValue = "DamageJumpValue"
            case defiladeUpperOffset = "DefiladeUpperOffset"
            case defiladeYMinusLength = "DefiladeYMinusLength"
            case paintCheckUpperOffset = "PaintCheckUpperOffset"
            case paintDepthScale = "PaintDepthScale"
            case paintSpanFrame = "PaintSpanFrame"
            case paintWidthHalf = "PaintWidthHalf"
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let colBulletOffsetY: Double
        let colBulletOffsetZHead: Double
        let colBulletOffsetZTail: Double
        let colBulletRadius: Double
        let dashChargeCancelableFrame: Int
        let dashChargeFrame: Int
        let dashInvalidFrame: Int
        let dashMoveFrame: Int
        let dashMoveSpeedCoefCharged: Double
        let dashMoveSpeedCoefChargingEd: Double
        let dashMoveSpeedCoefChargingSt: Double
        let dashMoveSpeedFloorMaxCharge: Double
        let dashMoveSpeedFloorMinCharge: Double
        let dashMoveSpeedFloorNoPaint: Double
        let dashMoveSpeedWallMaxCharge: Double
        let dashMoveSpeedWallMinCharge: Double
        let dokanWarpLmtFrmFinishSpecial: Int
        let finishAlertStartFrame: Int
        let knockBackKfChargeEd: Double
        let knockBackKfChargeEdFrm: Int
        let knockBackKfChargeSt: Double
        let knockBackKfDash: Double
        let knockBackKfStd: Double
        let moveSpeed: Double
        let noShotBombFrmFinishSpecial: Int
        let noShotBombReqFrmFinishSpecial: Int
        let specialTotalFrame: HighMidLow
        let startDelayFrameNetRecv: Int
        let startDelayFrameNetSend: Int
        let stickDownRtOnVLift: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case colBulletOffsetY = "ColBullet_OffsetY"
            case colBulletOffsetZHead = "ColBullet_OffsetZ_Head"
            case colBulletOffsetZTail = "ColBullet_OffsetZ_Tail"
            case colBulletRadius = "ColBullet_Radius"
            case dashChargeCancelableFrame = "Dash_ChargeCancelableFrame"
            case dashChargeFrame = "Dash_ChargeFrame"
            case dashInvalidFrame = "Dash_InvalidFrame"
            case dashMoveFrame = "Dash_MoveFrame"
            case dashMoveSpeedCoefCharged = "Dash_MoveSpeedCoef_Charged"
            case dashMoveSpeedCoefChargingEd = "Dash_MoveSpeedCoef_Charging_Ed"
            case dashMoveSpeedCoefChargingSt = "Dash_MoveSpeedCoef_Charging_St"
            case dashMoveSpeedFloorMaxCharge = "Dash_MoveSpeed_Floor_MaxCharge"
            case dashMoveSpeedFloorMinCharge = "Dash_MoveSpeed_Floor_MinCharge"
            case dashMoveSpeedFloorNoPaint = "Dash_MoveSpeed_Floor_NoPaint"
            case dashMoveSpeedWallMaxCharge = "Dash_MoveSpeed_Wall_MaxCharge"
            case dashMoveSpeedWallMinCharge = "Dash_MoveSpeed_Wall_MinCharge"
            case dokanWarpLmtFrmFinishSpecial = "DokanWarpLmtFrm_FinishSpecial"
            case finishAlertStartFrame = "FinishAlertStartFrame"
            case knockBackKfChargeEd = "KnockBackKf_Charge_Ed"
            case knockBackKfChargeEdFrm = "KnockBackKf_Charge_Ed_Frm"
            case knockBackKfChargeSt = "KnockBackKf_Charge_St"
            case knockBackKfDash = "KnockBackKf_Dash"
            case knockBackKfStd = "KnockBackKf_Std"
            case moveSpeed = "MoveSpeed"
            case noShotBombFrmFinishSpecial = "NoShotBombFrm_FinishSpecial"
            case noShotBombReqFrmFinishSpecial = "NoShotBombReqFrm_FinishSpecial"
            case specialTotalFrame = "SpecialTotalFrame"
            case startDelayFrameNetRecv = "StartDelayFrame_NetRecv"
            case startDelayFrameNetSend = "StartDelayFrame_NetSend"
            case stickDownRtOnVLift = "StickDownRt_OnVLift"
        }
    }
}
