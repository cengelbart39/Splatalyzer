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
    public let overwrites: SubOverwrites
    public let subLevelSave: Int
    public let inkConsume: Double
    public let inkRecoverStop: Int
    public let distanceDamage: [DistanceDamage]
    public let directDamage: Int?
    public let blastParam: [DistanceDamage]
    public let blastParamChase: [DistanceDamage]
    public let splashBlastParam: [DistanceDamage]
    
    
    /// A convenience initializer that creates instances for all sub weapons
    public init(for weapon: SubWeapon) throws {
        switch weapon {
        case .angleShooter:
            let object = try JSONService().decode(.weapon(weapon), into: AngleShooter.self)
            
            self.init(angleShooter: object)
            
        case .autobomb:
            let object = try JSONService().decode(.weapon(weapon), into: Autobomb.self)
            
            self.init(autobomb: object)
            
        case .burstBomb:
            let object = try JSONService().decode(.weapon(weapon), into: BurstBomb.self)
            
            self.init(burstBomb: object)
            
        case .curlingBomb:
            let object = try JSONService().decode(.weapon(weapon), into: CurlingBomb.self)
            
            self.init(curlingBomb: object)
            
        case .fizzyBomb:
            let object = try JSONService().decode(.weapon(weapon), into: FizzyBomb.self)
            
            self.init(fizzyBomb: object)
            
        case .inkMine:
            let object = try JSONService().decode(.weapon(weapon), into: InkMine.self)
            
            self.init(inkMine: object)
            
        case .pointSensor:
            let object = try JSONService().decode(.weapon(weapon), into: PointSensor.self)
            
            self.init(pointSensor: object)
            
        case .splashWall:
            let object = try JSONService().decode(.weapon(weapon), into: SplashWall.self)
            
            self.init(splashWall: object)
            
        case .splatBomb:
            let object = try JSONService().decode(.weapon(weapon), into: SplatBomb.self)
            
            self.init(splatBomb: object)
            
        case .squidBeakon:
            let object = try JSONService().decode(.weapon(weapon), into: SquidBeakon.self)
            
            let player = try JSONService().decode(.player, into: Player.self)
            
            self.init(squidBeakon: object, playerInfo: player)
            
        case .sprinkler:
            let object = try JSONService().decode(.weapon(weapon), into: Sprinkler.self)
            
            self.init(sprinkler: object)
            
        case .suctionBomb:
            let object = try JSONService().decode(.weapon(weapon), into: SuctionBomb.self)
            
            self.init(suctionBomb: object)
            
        case .torpedo:
            let object = try JSONService().decode(.weapon(weapon), into: Torpedo.self)
            
            self.init(torpedo: object)
            
        case .toxicMist:
            let object = try JSONService().decode(.weapon(weapon), into: ToxicMist.self)
            
            self.init(toxicMist: object)
        }
    }
    
    /// Create an instance for the Beacon sub weapon
    /// - Parameters:
    ///   - squidBeakon: `Beacon` game parameters
    ///   - playerInfo: Player game parameters
    public init(squidBeakon: SquidBeakon, playerInfo: Player) {
        let gameParams = squidBeakon.parameters
        
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
    /// - Parameter curlingBomb: `BombCurling` game parameters
    public init(curlingBomb: CurlingBomb) {
        let gameParams = curlingBomb.parameters
        
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
    /// - Parameter fizzyBomb: `BombFizzy` game parameters
    public init(fizzyBomb: FizzyBomb) {
        let gameParams = fizzyBomb.parameters
        
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
    /// - Parameter burstBomb: `BombQuick` game parameters
    public init(burstBomb: BurstBomb) {
        let gameParams = burstBomb.parameters
        
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
    /// - Parameter autobomb: `BombRobot` game parameters
    public init(autobomb: Autobomb) {
        let gameParams = autobomb.parameters
        
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
    /// - Parameter splatBomb: `BombSplash` game parameters
    public init(splatBomb: SplatBomb) {
        let gameParams = splatBomb.parameters
        
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
    /// - Parameter suctionBomb: `BombSuction` game parameters
    public init(suctionBomb: SuctionBomb) {
        let gameParams = suctionBomb.parameters
        
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
    /// - Parameter torpedo: `BombTorpedo` game parameters
    public init(torpedo: Torpedo) {
        let gameParams = torpedo.parameters
        
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
    /// - Parameter angleShooter: `LineMarker` game parameters
    public init(angleShooter: AngleShooter) {
        let gameParams = angleShooter.parameters
        
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
    /// - Parameter pointSensor: `PointSensor` game parameters
    public init(pointSensor: PointSensor) {
        let gameParams = pointSensor.parameters
        
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
    /// - Parameter toxicMist: `PoisonMist` game parameters
    public init(toxicMist: ToxicMist) {
        let gameParams = toxicMist.parameters
        
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
    /// - Parameter splashWall: `Shield` game parameters
    public init(splashWall: SplashWall) {
        let gameParams = splashWall.parameters
        
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
    /// - Parameter sprinkler: `Sprinkler` game parameters
    public init(sprinkler: Sprinkler) {
        let gameParams = sprinkler.parameters
        
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
    /// - Parameter inkMine: `Trap` game parameters
    public init(inkMine: InkMine) {
        let gameParams = inkMine.parameters
        
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
