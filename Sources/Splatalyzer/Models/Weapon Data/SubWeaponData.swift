//
//  SubWeaponData.swift
//
//
//  Created by Christopher Engelbart on 1/8/24.
//

import Foundation

/// An object representing the necessary Sub Weapon information for build analysis.
public struct SubWeaponData: WeaponDatable {
    public let id: SubWeapon
    public let overwrites: Overwritable
    public let subLevelSave: Int
    public let inkConsume: Double
    public let inkRecoverStop: Int
    public let distanceDamage: [DistanceDamage]
    public let directDamage: Int?
    public let blastParam: [DistanceDamage]
    public let blastParamChase: [DistanceDamage]
    public let splashBlastParam: [DistanceDamage]
    

    /// Create an instance for the Beacon sub weapon
    /// - Parameters:
    ///   - container: `Beacon` game parameters
    ///   - playerInfo: Player game parameters
    public init(container: SquidBeakon, playerInfo: Player) {
        let gameParams = container.parameters
        
        self.id = .squidBeakon
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
    public init(container: CurlingBomb) {
        let gameParams = container.parameters
        
        self.id = .curlingBomb
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = gameParams.blastParamMaxCharge.distanceDamage + gameParams.blastParamMinCharge.distanceDamage
        self.directDamage = gameParams.moveParam.damageDirectHit
        self.blastParam = []
        self.blastParamChase = []
        self.splashBlastParam = []
    }
    
    /// Create an instance for the `BombFizzy` sub weapon
    /// - Parameter container: `BombFizzy` game parameters
    public init(container: FizzyBomb) {
        let gameParams = container.parameters
        
        self.id = .fizzyBomb
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
    public init(container: BurstBomb) {
        let gameParams = container.parameters
        
        self.id = .burstBomb
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = gameParams.blastParam.distanceDamage
        self.directDamage = nil
        self.blastParam = []
        self.blastParamChase = []
        self.splashBlastParam = []
    }
    
    /// Create an instance for the `BombRobot` sub weapon
    /// - Parameter container: `BombRobot` game parameters
    public init(container: Autobomb) {
        let gameParams = container.parameters
        
        self.id = .autobomb
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = gameParams.blastParam.distanceDamage
        self.directDamage = nil
        self.blastParam = []
        self.blastParamChase = []
        self.splashBlastParam = []
    }
    
    /// Create an instance for the `BombSplash` sub weapon
    /// - Parameter container: `BombSplash` game parameters
    public init(container: SplatBomb) {
        let gameParams = container.parameters
        
        self.id = .splatBomb
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = 0.7
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = gameParams.blastParam.distanceDamage
        self.directDamage = nil
        self.blastParam = []
        self.blastParamChase = []
        self.splashBlastParam = []
    }
    
    /// Create an instance for the `BombSuction` sub weapon
    /// - Parameter container: `BombSuction` game parameters
    public init(container: SuctionBomb) {
        let gameParams = container.parameters
        
        self.id = .suctionBomb
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = 0.7
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = gameParams.blastParam.distanceDamage
        self.directDamage = nil
        self.blastParam = []
        self.blastParamChase = []
        self.splashBlastParam = []
    }
    
    /// Create an instance for the `BombTorpedo` sub weapon
    /// - Parameter container: `BombTorpedo` game parameters
    public init(container: Torpedo) {
        let gameParams = container.parameters
        
        self.id = .torpedo
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
    public init(container: AngleShooter) {
        let gameParams = container.parameters
        
        self.id = .angleShooter
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
    public init(container: PointSensor) {
        let gameParams = container.parameters
        
        self.id = .pointSensor
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
    public init(container: ToxicMist) {
        let gameParams = container.parameters
        
        self.id = .toxicMist
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
    public init(container: SplashWall) {
        let gameParams = container.parameters
        
        self.id = .splashWall
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
    public init(container: Sprinkler) {
        let gameParams = container.parameters
        
        self.id = .sprinkler
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
    public init(container: InkMine) {
        let gameParams = container.parameters
        
        self.id = .inkMine
        self.overwrites = gameParams.getOverwrites()
        self.subLevelSave = gameParams.subWeaponSetting.subInkSaveLv ?? 2
        self.inkConsume = gameParams.weaponParam.inkConsume
        self.inkRecoverStop = gameParams.weaponParam.inkRecoverStop
        self.distanceDamage = gameParams.blastParam.distanceDamage
        self.directDamage = nil
        self.blastParam = []
        self.blastParamChase = []
        self.splashBlastParam = []
    }
    
    public func damage(for type: DamageType) -> Any? {
        switch type {
        case .bombNormal:
            return self.distanceDamage
            
        case .bombDirect:
            return self.directDamage ?? self.blastParamChase
            
        case .distance:
            return self.blastParam
            
        case .splash:
            return self.splashBlastParam
            
        case .direct:
            return self.directDamage.toDouble()
            
        default:
            return nil
        }
    }
    
    /// Returns the ``AbilityValue`` associated with the represented ``SubWeapon``.
    /// - Returns: The associated `AbilityValue`; can be `nil` since not all sub weapons have an associated `AbilityValue`.
    public func abilityValue() -> AbilityValue? {
        switch self.id {
        case .splatBomb, .suctionBomb, .curlingBomb, .autobomb, .inkMine, .torpedo:
            return .damageRtBombH
            
        case .burstBomb, .fizzyBomb:
            return .damageRtBombL
            
        case .angleShooter:
            return .damageRtLineMarker
            
        case .sprinkler:
            return .damageRtSprinkler
            
        case .splashWall:
            return .damageRtShield
            
        default:
            return nil
        }
    }
}
