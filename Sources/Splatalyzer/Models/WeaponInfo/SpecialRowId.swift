//
//  SpecialRowId.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

enum SpecialRowId: Codable {
    case blower
    case blowerMission
    case castle
    case castleCoop
    case chariot
    case chariotCoop
    case chariotMission
    case chimney
    case energyStand
    case firework
    case gachihoko
    case gachihokoForEventMatch
    case greatBarrier
    case greatBarrierRival
    case ikuraShoot
    case inkStorm
    case inkStormMission
    case inkStormRival
    case jetpack
    case jetpackCoop
    case jetpackMission
    case jetpackRival
    case microLaser
    case microLaserCoop
    case microLaserMission
    case multiMissile
    case multiMissileMission
    case multiMissileRival
    case niceBall
    case niceBallCoop
    case none
    case pogo
    case pogoCoop
    case shockSonar
    case shockSonarCoop
    case shockSonorMission
    case shockSonarRival
    case skewer
    case skewerCoop
    case skewerMission
    case superHook
    case superHookMission
    case superLanding
    case superLandingCoop
    case superLandingRival
    case tripleTornado
    case tripleTornadoCoop
    case tripleTornadoMission
    case ultraShot
    case utlraShotCoop
    case ultraShotMission
    case ultraStamp
    case ultraStampMission
    
    enum CodingKeys: String, CodingKey {
        case blower = "SpBlower"
        case blowerMission = "SpBlower_Mission"
        case castle = "SpCastle"
        case castleCoop = "SpCastle_Coop"
        case chariot = "SpChariot"
        case chariotCoop = "SpChariot_Coop"
        case chariotMission = "SpChariot_Mission"
        case chimney = "SpChimney"
        case energyStand = "SpEnergyStand"
        case firework = "SpFirework"
        case gachihoko = "SpGachihoko"
        case gachihokoForEventMatch = "SpGachihokoForEventMatch"
        case greatBarrier = "SpGreatBarrier"
        case greatBarrierRival = "SpGreatBarrier_Rival"
        case ikuraShoot = "SpIkuraShoot"
        case inkStorm = "SpInkStorm"
        case inkStormMission = "SpInkStorm_Mission"
        case inkStormRival = "SpInkStorm_Rival"
        case jetpack = "SpJetpack"
        case jetpackCoop = "SpJetpack_Coop"
        case jetpackMission = "SpJetpack_Mission"
        case jetpackRival = "SpJetpack_Rival"
        case microLaser = "SpMicroLaser"
        case microLaserCoop = "SpMicroLaser_Coop"
        case microLaserMission = "SpMicroLaser_Mission"
        case multiMissile = "SpMultiMissile"
        case multiMissileMission = "SpMultiMissile_Mission"
        case multiMissileRival = "SpMultiMissile_Rival"
        case niceBall = "SpNiceBall"
        case niceBallCoop = "SpNiceBall_Coop"
        case none = ""
        case pogo = "SpPogo"
        case pogoCoop = "SpPogo_Coop"
        case shockSonar = "SpShockSonar"
        case shockSonarCoop = "SpShockSonar_Coop"
        case shockSonorMission = "SpShockSonar_Mission"
        case shockSonarRival = "SpShockSonar_Rival"
        case skewer = "SpSkewer"
        case skewerCoop = "SpSkewer_Coop"
        case skewerMission = "SpSkewer_Mission"
        case superHook = "SpSuperHook"
        case superHookMission = "SpSuperHook_Mission"
        case superLanding = "SpSuperLanding"
        case superLandingCoop = "SpSuperLanding_Coop"
        case superLandingRival = "SpSuperLanding_Rival"
        case tripleTornado = "SpTripleTornado"
        case tripleTornadoCoop = "SpTripleTornado_Coop"
        case tripleTornadoMission = "SpTripleTornado_Mission"
        case ultraShot = "SpUltraShot"
        case utlraShotCoop = "SpUltraShot_Coop"
        case ultraShotMission = "SpUltraShot_Mission"
        case ultraStamp = "SpUltraStamp"
        case ultraStampMission = "SpUltraStamp_Mission"
    }
}
