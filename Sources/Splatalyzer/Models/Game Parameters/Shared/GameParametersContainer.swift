//
//  GameParametersContainer.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import Foundation

struct GameParametersContainer<T: Codable>: Codable {
    let parent: String?
    let gameParameters: T
    
    enum CodingKeys: String, CodingKey {
        case parent = "$parent"
        case gameParameters = "GameParameters"
    }
}


// MARK: - Main Weapons
typealias BlasterGameParameters = GameParametersContainer<BlasterParameters>
typealias BrushGameParameters = GameParametersContainer<BrushParameters>
typealias ChargerGameParameters = GameParametersContainer<ChargerParameters>
typealias ManeuverGameParameters = GameParametersContainer<ManeuverParameters>
typealias RollerGameParameters = GameParametersContainer<RollerParameters>
typealias SaberGameParameters = GameParametersContainer<SaberParameters>
typealias ShelterGameParameters = GameParametersContainer<ShelterParameters>
typealias ShooterGameParameters = GameParametersContainer<ShooterParameters>
typealias SlosherGameParameters = GameParametersContainer<SlosherParameters>
typealias SpinnerGameParameters = GameParametersContainer<SpinnerParameters>
typealias StringerGameParameters = GameParametersContainer<StringerParameters>

// MARK: - Sub Weapons
typealias SubBeaconGameParameters = GameParametersContainer<SubBeacon>
typealias SubBombCurlingGameParameters = GameParametersContainer<SubBombCurling>
typealias SubBombFizzyGameParameters = GameParametersContainer<SubBombFizzy>
typealias SubBombQuickGameParameters = GameParametersContainer<SubBombQuick>
typealias SubBombRobotGameParameters = GameParametersContainer<SubBombRobot>
typealias SubBombSplashGameParameters = GameParametersContainer<SubBombSplash>
typealias SubBombSuctionGameParameters = GameParametersContainer<SubBombSuction>
typealias SubBombTorpedoGameParameters = GameParametersContainer<SubBombTorpedo>
typealias SubLineMarkerGameParameters = GameParametersContainer<SubLineMarker>
typealias SubPointSensorGameParameters = GameParametersContainer<SubPointSensor>
typealias SubPoisonMistGameParameters = GameParametersContainer<SubPoisonMist>
typealias SubShieldGameParameters = GameParametersContainer<SubShield>
typealias SubSprinklerGameParameters = GameParametersContainer<SubSprinkler>
typealias SubTrapGameParameters = GameParametersContainer<SubTrap>

// MARK: - Special Weapons
typealias SpecialBlowerGameParameters = GameParametersContainer<SpecialBlower>
typealias SpecialCastleGameParameters = GameParametersContainer<SpecialCastle>
typealias SpecialChariotGameParameters = GameParametersContainer<SpecialChariot>
typealias SpecialChimneyGameParameters = GameParametersContainer<SpecialChimney>
typealias SpecialEnergyStandGameParameters = GameParametersContainer<SpecialEnergyStand>
typealias SpecialFireworkGameParameters = GameParametersContainer<SpecialFirework>
typealias SpecialGachihokoGameParameters = GameParametersContainer<SpecialGachihoko>
typealias SpecialGreatBarrierGameParameters = GameParametersContainer<SpecialGreatBarrier>
typealias SpecialIkuraShootGameParameters = GameParametersContainer<SpecialIkuraShoot>
typealias SpecialInkStormGameParameters = GameParametersContainer<SpecialInkStorm>
typealias SpecialJetpackGameParameters = GameParametersContainer<SpecialJetpack>
typealias SpecialMicroLaserGameParameters = GameParametersContainer<SpecialMicroLaser>
typealias SpecialMultiMissileGameParameters = GameParametersContainer<SpecialMultiMissile>
typealias SpecialNiceBallGameParameters = GameParametersContainer<SpecialNiceBall>
typealias SpecialPogoGameParameters = GameParametersContainer<SpecialPogo>
typealias SpecialShockSonarGameParameters = GameParametersContainer<SpecialShockSonar>
typealias SpecialSkewerGameParameters = GameParametersContainer<SpecialSkewer>
typealias SpecialSuperHookGameParameters = GameParametersContainer<SpecialSuperHook>
typealias SpecialSuperLandingGameParameters = GameParametersContainer<SpecialSuperLanding>
typealias SpecialTripleTornadoGameParameters = GameParametersContainer<SpecialTripleTornado>
typealias SpecialUltraShotGameParameters = GameParametersContainer<SpecialUltraShot>
typealias SpecialUltraStampGameParameters = GameParametersContainer<SpecialUltraStamp>
