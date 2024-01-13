//
//  KrakenRoyale.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

public struct KrakenRoyale: SpecialParametable {
    public let bodyParam: BodyParameter
    public let weaponParam: WeaponParameter
    
    public enum CodingKeys: String, CodingKey {
        case bodyParam = "BodyParam"
        case weaponParam = "WeaponParam"
    }
    
    public struct BodyParameter: Codable {
        public let type: String
        public let collisionAttackFrontOffset: Double
        public let collisionDashFrontOffset: Double
        public let collisionDashRadiusForPlayer: Double
        public let collisionJumpRadiusForPlayer: Double
        public let collisionPaintAttackFrontOffset: Double
        public let collisionPaintDashFrontOffset: Double
        public let collisionPaintOffFrontOffset: Double
        public let collisionRadiusForField: Double
        public let collisionUpperOffset: Double
        public let damageJumpValue: Int
        public let defiladeUpperOffset: Double
        public let defiladeYMinusLength: Double
        public let paintCheckUpperOffset: Double
        public let paintDepthScale: Double
        public let paintSpanFrame: Int
        public let paintWidthHalf: Double
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct WeaponParameter: Codable {
        public let type: String
        public let colBulletOffsetY: Double
        public let colBulletOffsetZHead: Double
        public let colBulletOffsetZTail: Double
        public let colBulletRadius: Double
        public let dashChargeCancelableFrame: Int
        public let dashChargeFrame: Int
        public let dashInvalidFrame: Int
        public let dashMoveFrame: Int
        public let dashMoveSpeedCoefCharged: Double
        public let dashMoveSpeedCoefChargingEd: Double
        public let dashMoveSpeedCoefChargingSt: Double
        public let dashMoveSpeedFloorMaxCharge: Double
        public let dashMoveSpeedFloorMinCharge: Double
        public let dashMoveSpeedFloorNoPaint: Double
        public let dashMoveSpeedWallMaxCharge: Double
        public let dashMoveSpeedWallMinCharge: Double
        public let dokanWarpLmtFrmFinishSpecial: Int
        public let finishAlertStartFrame: Int
        public let knockBackKfChargeEd: Double
        public let knockBackKfChargeEdFrm: Int
        public let knockBackKfChargeSt: Double
        public let knockBackKfDash: Double
        public let knockBackKfStd: Double
        public let moveSpeed: Double
        public let noShotBombFrmFinishSpecial: Int
        public let noShotBombReqFrmFinishSpecial: Int
        public let specialTotalFrame: HighMidLow
        public let startDelayFrameNetRecv: Int
        public let startDelayFrameNetSend: Int
        public let stickDownRtOnVLift: Double
        
        public enum CodingKeys: String, CodingKey {
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
    
    public func getOverwrites() -> SpecialOverwrites {
        return SpecialOverwrites(
            chargeRateAutoPerFrame: nil,
            crossPaintCheckLength: nil,
            crossPaintRadius: nil,
            distanceDamageDistanceRate: nil,
            inkConsumeHook: nil,
            inkConsumePerSec: nil,
            maxFieldHp: nil,
            maxFrame: nil,
            maxHp: nil,
            maxRadius: nil,
            moveSpeed: nil,
            paintRadius: nil,
            powerUpFrame: nil,
            radiusMax: nil,
            radiusMin: nil,
            spawnSpeedZSpecUp: nil,
            specialDurationFrame: self.weaponParam.specialTotalFrame,
            splashAroundVelocityMax: nil,
            splashAroundVelocityMin: nil,
            targetInCircleRadius: nil)
    }
}
