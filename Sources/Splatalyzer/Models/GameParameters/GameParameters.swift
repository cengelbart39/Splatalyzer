//
//  GameParameters.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

protocol Parametable: Codable {
    var type: String { get }
}

struct GameParameters: Codable {
    let parameters: [Parameters]
}

struct Parameters: Codable {
    let dieBlastParam: DieBlastParameter
    
    let playerLeagueInGameModifierParam: PlayerLeagueInGameModifierParameter
    
    let constraintBidnableHelperParam: ConstraintBindableHelperParameter
    
    let coopBuildParam: CoopBuildParameter
    
    let coopBuildParamHumanMoveUp: CoopBuildParameterHumanMoveUp
    
    let coopBuildParamOpInkEffectReduction: CoopBuildParameterOpInkEffectReduction
    
    let coopBuildParamSquidMoveUp: CoopBuildParameterSquidMoveUp
    
    let damageParam: DamageParameter
    
    let displayItemGetHelperParam: DisplayItemGetHelperParameter
    
    let inkRailPlayerParam: InkRailPlayerParameter
    
    let playerAttractTargetParam: PlayerAttractTargetParameter
    
    let playerBeaconSubSpecUpParam: PlayerBeaconSubSpecUpParameter
    
    let playerCameraPeriscopeParam: PlayerCameraPeriscopeParameter
    
    let playerCanolaShotParam: PlayerCanolaShotParameter
    
    let playerEntryLiftParam: PlayerEntryLiftParameter
    
    let skillActionSpecUpSquidParam: PlayerGearSkillParameterActionSpecUpSquid
    
    let skillHumanMoveUpParam: PlayerGearSkillParameterHumanMoveUp
    
    let skillInkRecoveryUpParam: PlayerGearSkillParameterInkRecoveryUp
    
    let skillMainInkSaveParam: PlayerGearSkillParameterMainInkSave
    
    let skillOpInkEffectReductionParam: PlayerGearSkillParameterOpInkEffectReduction
    
    let skillRespawnSpecialGuageSaveParam: PlayerGearSkillParameterRespawnSpecialGuageSave
    
    let skillRespawnTimeSaveParam: PlayerGearSkillParameterRespawnTimeSave
    
    let skillSpecialIncreaseUpParam: PlayerGearSkillParameterSpecialIncreaseUp
    
    let skillSquidMoveUpParam: PlayerGearSkillParameterSquidMoveUp
    
    let skillSubEffectReductionParam: PlayerGearSkillParameterSubEffectReduction
    
    let skillSubInkSaveParam: PlayerGearSkillParameterSubInkSave
    
    let skillSuperJumpTimeSave: PlayerGearSkillParameterSuperJumpTimeSave
    
    let playerGeyserParam: PlayerGeyserParameter
    
    let playerGrindRailParam: PlayerGrindRailParameter
    
    let playerJumpGimmickParam: PlayerJumpGimmickParameter
    
    let playerMissionSearchAbilityParam: PlayerMissionSearchAbilityParameter
    
    let playerMissionSkillParam: PlayerMissionSkillParameter
    
    let playerPeriscopeParam: PlayerPeriscopeParameter
    
    let playerPipelineParam: PlayerPipelineParameter
    
    let playerVehicleSpectacleParam: PlayerVehicleSpectacleParameter
    
    let playerThrowClamParma: ThrowClamParameter
    
    let playerThrowGoldIkuraParam: ThrowGoldenIkuraParameter
}
