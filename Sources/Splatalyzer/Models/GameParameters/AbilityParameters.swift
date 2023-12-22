//
//  AbilityParameters.swift
//  
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct PlayerGearSkillParameterActionSpecUpSquid: Parametable {
    
    let type: String
    let wallJumpChargeFormHigh: Int
    let wallJumpChargeFormLow: Int
    let wallJumpChargeFormMid: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case wallJumpChargeFormHigh = "WallJumpChargeFrm_High"
        case wallJumpChargeFormLow = "WallJumpChargeFrm_Low"
        case wallJumpChargeFormMid = "WallJumpChargeFrm_Mid"
    }
}

struct PlayerGearSkillParameterHumanMoveUp: Parametable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}

struct PlayerGearSkillParameterInkRecoveryUp: Parametable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}

struct PlayerGearSkillParameterMainInkSave: Parametable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}

struct PlayerGearSkillParameterOpInkEffectReduction: Parametable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}

struct PlayerGearSkillParameterRespawnSpecialGuageSave: Parametable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}

struct PlayerGearSkillParameterRespawnTimeSave: Parametable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}

struct PlayerGearSkillParameterSpecialIncreaseUp: Parametable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}

struct PlayerGearSkillParameterSquidMoveUp: Parametable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}

struct PlayerGearSkillParameterSubEffectReduction: Parametable {
    let type: String
    let damageRtBombLHigh: Double
    let damageRtBombLMid: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case damageRtBombLHigh = "DamageRt_BombL_High"
        case damageRtBombLMid = "DamageRt_BombL_Mid"
    }
}

struct PlayerGearSkillParameterSubInkSave: Parametable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}

struct PlayerGearSkillParameterSuperJumpTimeSave: Parametable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}
