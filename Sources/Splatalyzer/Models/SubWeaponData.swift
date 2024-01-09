//
//  SubWeaponData.swift
//
//
//  Created by Christopher Engelbart on 1/8/24.
//

import Foundation

struct SubWeaponData {
    let overwrites: SubOverwrites
    let subLevelSave: Int
    let inkConsume: Double
    let inkRecoverStop: Int
    let distanceDamage: [[DistanceDamage]]
    let directDamage: Int?
    let blastParam: [DistanceDamage]
    let blastParamChase: [DistanceDamage]
    let splashBlastParam: [DistanceDamage]
    

    /// Create an instance for the Beacon sub weapon
    /// - Parameters:
    ///   - container: `Beacon` game parameters
    ///   - playerInfo: Player game parameters
    init(container: SubBeaconGameParameters, playerInfo: PlayerParameters) {
        let gameParams = container.gameParameters
        
        self.overwrites = gameParams.getOverwrites(playerInfo)        
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = []
        self.directDamage = nil
        self.blastParam = []
        self.blastParamChase = []
        self.splashBlastParam = []
    }
    
    /// Create an instance for the `BombCurling` sub weapon
    /// - Parameter container: `BombCurling` game parameters
    init(container: SubBombCurlingGameParameters) {
        let gameParams = container.gameParameters
        
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = [
            gameParams.blastParamMaxCharge.distanceDamage,
            gameParams.blastParamMinCharge.distanceDamage
        ]
        self.directDamage = gameParams.moveParam.damageDirectHit
        self.blastParam = []
        self.blastParamChase = []
        self.splashBlastParam = []
    }
    
    /// Create an instance for the `BombFizzy` sub weapon
    /// - Parameter container: `BombFizzy` game parameters
    init(container: SubBombFizzyGameParameters) {
        let gameParams = container.gameParameters
        
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = []
        self.directDamage = nil
        self.blastParam = gameParams.moveParam.blastParamArray.flatMap { $0.distanceDamage }
        self.blastParamChase = []
        self.splashBlastParam = []
    }
    
    /// Create an instance for the `BombQuick` sub weapon
    /// - Parameter container: `BombQuick` game parameters
    init(container: SubBombQuickGameParameters) {
        let gameParams = container.gameParameters
        
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = [gameParams.blastParam.distanceDamage]
        self.directDamage = nil
        self.blastParam = []
        self.blastParamChase = []
        self.splashBlastParam = []
    }
    
    /// Create an instance for the `BombRobot` sub weapon
    /// - Parameter container: `BombRobot` game parameters
    init(container: SubBombRobotGameParameters) {
        let gameParams = container.gameParameters
        
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = [gameParams.blastParam.distanceDamage]
        self.directDamage = nil
        self.blastParam = []
        self.blastParamChase = []
        self.splashBlastParam = []
    }
    
    /// Create an instance for the `BombSplash` sub weapon
    /// - Parameter container: `BombSplash` game parameters
    init(container: SubBombSplashGameParameters) {
        let gameParams = container.gameParameters
        
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = 0.7
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = [gameParams.blastParam.distanceDamage]
        self.directDamage = nil
        self.blastParam = []
        self.blastParamChase = []
        self.splashBlastParam = []
    }
    
    /// Create an instance for the `BombSuction` sub weapon
    /// - Parameter container: `BombSuction` game parameters
    init(container: SubBombSuctionGameParameters) {
        let gameParams = container.gameParameters
        
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = 0.7
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = [gameParams.blastParam.distanceDamage]
        self.directDamage = nil
        self.blastParam = []
        self.blastParamChase = []
        self.splashBlastParam = []
    }
    
    /// Create an instance for the `BombTorpedo` sub weapon
    /// - Parameter container: `BombTorpedo` game parameters
    init(container: SubBombTorpedoGameParameters) {
        let gameParams = container.gameParameters
        
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = []
        self.directDamage = nil
        self.blastParam = []
        self.blastParamChase = gameParams.blastParamChase.distanceDamage
        self.splashBlastParam = gameParams.blastParamChase.splashBlastParam?.distanceDamage ?? []
    }
    
    /// Create an instance for the `LineMarker` sub weapon
    /// - Parameter container: `LineMarker` game parameters
    init(container: SubLineMarkerGameParameters) {
        let gameParams = container.gameParameters
        
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = []
        self.directDamage = gameParams.moveParam.directDamage
        self.blastParam = []
        self.blastParamChase = []
        self.splashBlastParam = []
    }
    
    /// Create an instance for the `PointSensor` sub weapon
    /// - Parameter container: `PointSensor` game parameters
    init(container: SubPointSensorGameParameters) {
        let gameParams = container.gameParameters
        
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = []
        self.directDamage = nil
        self.blastParam = []
        self.blastParamChase = []
        self.splashBlastParam = []
    }
    
    /// Create an instance for the `PoisonMist` sub weapon
    /// - Parameter container: `PoisonMist` game parameters
    init(container: SubPoisonMistGameParameters) {
        let gameParams = container.gameParameters
        
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = []
        self.directDamage = nil
        self.blastParam = []
        self.blastParamChase = []
        self.splashBlastParam = []
    }
    
    /// Create an instance for the `Shield` sub weapon
    /// - Parameter container: `Shield` game parameters
    init(container: SubShieldGameParameters) {
        let gameParams = container.gameParameters
        
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = []
        self.directDamage = nil
        self.blastParam = []
        self.blastParamChase = []
        self.splashBlastParam = []
    }
    
    /// Create an instance for the `Sprinkler` sub weapon
    /// - Parameter container: `Sprinkler` game parameters
    init(container: SubSprinklerGameParameters) {
        let gameParams = container.gameParameters
        
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = []
        self.directDamage = nil
        self.blastParam = []
        self.blastParamChase = []
        self.splashBlastParam = []
    }
    
    /// Create an instance for the `Trap` sub weapon
    /// - Parameter container: `Trap` game parameters
    init(container: SubTrapGameParameters) {
        let gameParams = container.gameParameters
        
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = [gameParams.blastParam.distanceDamage]
        self.directDamage = nil
        self.blastParam = []
        self.blastParamChase = []
        self.splashBlastParam = []
    }
}
