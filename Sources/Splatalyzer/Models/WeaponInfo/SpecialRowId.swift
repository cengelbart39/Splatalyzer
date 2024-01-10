//
//  SpecialRowId.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

enum SpecialRowId: String, Codable {
    case inkVac = "SpBlower"
    case inkVacMission = "SpBlower_Mission"
    
    case krakenRoyale = "SpCastle"
    case krakenRoyaleCoop = "SpCastle_Coop"
    
    case crabTank = "SpChariot"
    case crabTankCoop = "SpChariot_Coop"
    case crabTankMission = "SpChariot_Mission"
    
    case splattercolorScreen = "SpChimney"
    
    case tacticooler = "SpEnergyStand"
    
    case superChump = "SpFirework"
    
    case rainmaker = "SpGachihoko"
    case rainmakerForEventMatch = "SpGachihokoForEventMatch"
    
    case bigBubbler = "SpGreatBarrier"
    case bigBubblerRival = "SpGreatBarrier_Rival"
    
    case ikuraShoot = "SpIkuraShoot"
    
    case inkStorm = "SpInkStorm"
    case inkStormMission = "SpInkStorm_Mission"
    case inkStormRival = "SpInkStorm_Rival"
    
    case inkjet = "SpJetpack"
    case inkjetCoop = "SpJetpack_Coop"
    case inkjetMission = "SpJetpack_Mission"
    case inkjetRival = "SpJetpack_Rival"
    
    case killerWail51 = "SpMicroLaser"
    case killerWail51Coop = "SpMicroLaser_Coop"
    case killerWail51Mission = "SpMicroLaser_Mission"
    
    case tentaMissiles = "SpMultiMissile"
    case tentaMissilesMission = "SpMultiMissile_Mission"
    case tentaMissilesRival = "SpMultiMissile_Rival"
    
    case booyahBomb = "SpNiceBall"
    case booyahBombCoop = "SpNiceBall_Coop"
    
    case none = ""
    
    case tripleSplashdown = "SpPogo"
    case tripleSplashdownCoop = "SpPogo_Coop"
    
    case waveBreaker = "SpShockSonar"
    case waveBreakerCoop = "SpShockSonar_Coop"
    case waveBreakerMission = "SpShockSonar_Mission"
    case waveBreakerRival = "SpShockSonar_Rival"
    
    case reefslider = "SpSkewer"
    case reefsliderCoop = "SpSkewer_Coop"
    case reefsliderMission = "SpSkewer_Mission"
    
    case zipcaster = "SpSuperHook"
    case zipcasterMission = "SpSuperHook_Mission"
    
    case splashdown = "SpSuperLanding"
    case splashdownCoop = "SpSuperLanding_Coop"
    case splashdownRival = "SpSuperLanding_Rival"
    
    case tripleInkstrike = "SpTripleTornado"
    case tripleInkstrikeCoop = "SpTripleTornado_Coop"
    case tripleInkstrikeMission = "SpTripleTornado_Mission"
    
    case trizooka = "SpUltraShot"
    case trizookaCoop = "SpUltraShot_Coop"
    case trizookaMission = "SpUltraShot_Mission"
    
    case ultraStamp = "SpUltraStamp"
    case ultraStampMission = "SpUltraStamp_Mission"
}
