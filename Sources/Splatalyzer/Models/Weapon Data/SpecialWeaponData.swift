//
//  SpecialWeaponData.swift
//
//
//  Created by Christopher Engelbart on 1/8/24.
//

import Foundation

public struct SpecialWeaponData: WeaponDatable {
    public let id: SpecialWeapon
    public let armorHp: Int?
    public let bulletDamageMin: Int?
    public let bulletDamageMax: Int?
    public let bumpDamage: Int?
    public let cannonDamage: [DistanceDamage]
    public let directDamage: Int?
    public let distanceDamage: [DistanceDamage]
    public let exhaleBlastParamMinCharge: [DistanceDamage]
    public let exhaleBlastParamMaxCharge: [DistanceDamage]
    public let jumpDamage: Int?
    public let overwrites: Overwritable
    public let swingDamage: [DistanceDamage]
    public let throwDamage: [DistanceDamage]
    public let throwDirectDamage: Int?
    public let tickDamage: Int?
    public let waveDamage: Int?
    
    public init(container: BigBubblerGameParameters) {
        let gameParams = container.parameters
        
        self.id = .bigBubbler
        self.armorHp = nil
        self.bulletDamageMax = nil
        self.bulletDamageMin = nil
        self.bumpDamage = nil
        self.cannonDamage = []
        self.directDamage = nil
        self.distanceDamage = []
        self.exhaleBlastParamMaxCharge = []
        self.exhaleBlastParamMinCharge = []
        self.jumpDamage = nil
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = []
        self.throwDamage = []
        self.throwDirectDamage = nil
        self.tickDamage = nil
        self.waveDamage = nil
    }
    
    public init(container: ReefsliderGameParameters) {
        let gameParams = container.parameters
        
        self.id = .reefslider
        self.armorHp = nil
        self.bulletDamageMax = nil
        self.bulletDamageMin = nil
        self.bumpDamage = nil
        self.cannonDamage = []
        self.directDamage = nil
        self.distanceDamage = gameParams.bulletBlastParam.distanceDamage
        self.exhaleBlastParamMaxCharge = []
        self.exhaleBlastParamMinCharge = []
        self.jumpDamage = nil
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = []
        self.throwDamage = []
        self.throwDirectDamage = nil
        self.tickDamage = nil
        self.waveDamage = nil
    }
    
    public init(container: InkVacGameParameters) {
        let gameParams = container.parameters
        
        self.id = .inkVac
        self.armorHp = nil
        self.bulletDamageMax = nil
        self.bulletDamageMin = nil
        self.bumpDamage = nil
        self.cannonDamage = []
        self.directDamage = nil
        self.distanceDamage = []
        self.exhaleBlastParamMaxCharge = gameParams.exhaleBlastParamMaxCharge.distanceDamge
        self.exhaleBlastParamMinCharge = gameParams.exhaleBlastParamMinCharge.distanceDamge
        self.jumpDamage = nil
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = []
        self.throwDamage = []
        self.throwDirectDamage = nil
        self.tickDamage = nil
        self.waveDamage = nil
    }
    
    public init(container: KrakenRoyaleGameParameters) {
        let gameParams = container.parameters
        
        self.id = .krakenRoyale
        self.armorHp = nil
        self.bulletDamageMax = nil
        self.bulletDamageMin = nil
        self.bumpDamage = nil
        self.cannonDamage = []
        self.directDamage = 1200
        self.distanceDamage = []
        self.exhaleBlastParamMaxCharge = []
        self.exhaleBlastParamMinCharge = []
        self.jumpDamage = gameParams.bodyParam.damageJumpValue
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = []
        self.throwDamage = []
        self.throwDirectDamage = nil
        self.tickDamage = nil
        self.waveDamage = nil
    }
    
    public init(container: CrabTankGameParameters) {
        let gameParams = container.parameters
        
        var canon = [DistanceDamage(damage: 600, distance: 1)]
        canon.append(contentsOf: gameParams.cannonParam.blastParam.distanceDamage)
        
        self.id = .crabTank
        self.armorHp = gameParams.weaponParam.armorHP
        self.bulletDamageMax = gameParams.shooterDamageParam.valueMax
        self.bulletDamageMin = gameParams.shooterDamageParam.valueMin
        self.bumpDamage = 400
        self.cannonDamage = canon
        self.directDamage = nil
        self.distanceDamage = []
        self.exhaleBlastParamMaxCharge = []
        self.exhaleBlastParamMinCharge = []
        self.jumpDamage = nil
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = []
        self.throwDamage = []
        self.throwDirectDamage = nil
        self.tickDamage = nil
        self.waveDamage = nil
    }
    
    public init(container: SplattercolorScreenGameParameters) {
        let gameParams = container.parameters
        
        self.id = .splattercolorScreen
        self.armorHp = nil
        self.bulletDamageMax = nil
        self.bulletDamageMin = nil
        self.bumpDamage = nil
        self.cannonDamage = []
        self.directDamage = nil
        self.distanceDamage = []
        self.exhaleBlastParamMaxCharge = []
        self.exhaleBlastParamMinCharge = []
        self.jumpDamage = nil
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = []
        self.throwDamage = []
        self.throwDirectDamage = nil
        self.tickDamage = nil
        self.waveDamage = nil
    }
    
    public init(container: TacticoolerGameParameters) {
        let gameParams = container.parameters
        
        self.id = .tacticooler
        self.armorHp = nil
        self.bulletDamageMax = nil
        self.bulletDamageMin = nil
        self.bumpDamage = nil
        self.cannonDamage = []
        self.directDamage = nil
        self.distanceDamage = []
        self.exhaleBlastParamMaxCharge = []
        self.exhaleBlastParamMinCharge = []
        self.jumpDamage = nil
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = []
        self.throwDamage = []
        self.throwDirectDamage = nil
        self.tickDamage = nil
        self.waveDamage = nil
    }
    
    public init(container: SuperChumpGameParameters) {
        let gameParams = container.parameters
        
        self.id = .superChump
        self.armorHp = nil
        self.bulletDamageMax = nil
        self.bulletDamageMin = nil
        self.bumpDamage = nil
        self.cannonDamage = []
        self.directDamage = nil
        self.distanceDamage = gameParams.iceParam.blastParam.distanceDamage
        self.exhaleBlastParamMaxCharge = []
        self.exhaleBlastParamMinCharge = []
        self.jumpDamage = nil
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = []
        self.throwDamage = []
        self.throwDirectDamage = nil
        self.tickDamage = nil
        self.waveDamage = nil
    }
    
    public init(container: InkStormGameParameters) {
        let gameParams = container.parameters
        
        self.id = .inkStorm
        self.armorHp = nil
        self.bulletDamageMax = nil
        self.bulletDamageMin = nil
        self.bumpDamage = nil
        self.cannonDamage = []
        self.directDamage = nil
        self.distanceDamage = []
        self.exhaleBlastParamMaxCharge = []
        self.exhaleBlastParamMinCharge = []
        self.jumpDamage = nil
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = []
        self.throwDamage = []
        self.throwDirectDamage = nil
        self.tickDamage = 4
        self.waveDamage = nil
    }
    
    public init(container: InkjetGameParameters) {
        let gameParams = container.parameters
        
        self.id = .inkjet
        self.armorHp = nil
        self.bulletDamageMax = nil
        self.bulletDamageMin = nil
        self.bumpDamage = nil
        self.cannonDamage = []
        self.directDamage = 1200
        self.distanceDamage = gameParams.blastParam.distanceDamage
        self.exhaleBlastParamMaxCharge = []
        self.exhaleBlastParamMinCharge = []
        self.jumpDamage = nil
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = []
        self.throwDamage = []
        self.throwDirectDamage = nil
        self.tickDamage = nil
        self.waveDamage = nil
    }
    
    public init(container: KillerWail51GameParameters) {
        let gameParams = container.parameters
        
        self.id = .killerWail51
        self.armorHp = nil
        self.bulletDamageMax = nil
        self.bulletDamageMin = nil
        self.bumpDamage = nil
        self.cannonDamage = []
        self.directDamage = nil
        self.distanceDamage = []
        self.exhaleBlastParamMaxCharge = []
        self.exhaleBlastParamMinCharge = []
        self.jumpDamage = nil
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = []
        self.throwDamage = []
        self.throwDirectDamage = nil
        self.tickDamage = gameParams.bulletBitParam.laserParam.laserDamage
        self.waveDamage = nil
    }
    
    public init(container: TentaMissilesGameParameters) {
        let gameParams = container.parameters
        
        self.id = .tentaMissiles
        self.armorHp = nil
        self.bulletDamageMax = nil
        self.bulletDamageMin = nil
        self.bumpDamage = nil
        self.cannonDamage = []
        self.directDamage = nil
        self.distanceDamage = gameParams.bulletBlastParam.distanceDamage
        self.exhaleBlastParamMaxCharge = []
        self.exhaleBlastParamMinCharge = []
        self.jumpDamage = nil
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = []
        self.throwDamage = []
        self.throwDirectDamage = nil
        self.tickDamage = nil
        self.waveDamage = nil
    }
    
    public init(container: BooyahBombGameParameters) {
        let gameParams = container.parameters
        
        self.id = .booyahBomb
        self.armorHp = nil
        self.bulletDamageMax = nil
        self.bulletDamageMin = nil
        self.bumpDamage = nil
        self.cannonDamage = []
        self.directDamage = nil
        self.distanceDamage = []
        self.exhaleBlastParamMaxCharge = []
        self.exhaleBlastParamMinCharge = []
        self.jumpDamage = nil
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = []
        self.throwDamage = []
        self.throwDirectDamage = nil
        self.tickDamage = 33
        self.waveDamage = nil
    }
    
    public init(container: TripleSplashdownGameParameters) {
        let gameParams = container.parameters
        
        self.id = .tripleSplashdown
        self.armorHp = nil
        self.bulletDamageMax = nil
        self.bulletDamageMin = nil
        self.bumpDamage = nil
        self.cannonDamage = []
        self.directDamage = nil
        self.distanceDamage = gameParams.blastParamDokanWarp.distanceDamage
        self.exhaleBlastParamMaxCharge = []
        self.exhaleBlastParamMinCharge = []
        self.jumpDamage = nil
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = []
        self.throwDamage = []
        self.throwDirectDamage = nil
        self.tickDamage = nil
        self.waveDamage = nil
    }
    
    public init(container: WaveBreakerGameParameters) {
        let gameParams = container.parameters
        
        self.id = .waveBreaker
        self.armorHp = nil
        self.bulletDamageMax = nil
        self.bulletDamageMin = nil
        self.bumpDamage = nil
        self.cannonDamage = []
        self.directDamage = gameParams.bulletParam.generatorParam.hitDamage
        self.distanceDamage = []
        self.exhaleBlastParamMaxCharge = []
        self.exhaleBlastParamMinCharge = []
        self.jumpDamage = nil
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = []
        self.throwDamage = []
        self.throwDirectDamage = nil
        self.tickDamage = nil
        self.waveDamage = gameParams.bulletParam.waveParam.damage
    }
    
    public init(container: ZipcasterGameParameters) {
        let gameParams = container.parameters
        
        self.id = .zipcaster
        self.armorHp = nil
        self.bulletDamageMax = nil
        self.bulletDamageMin = nil
        self.bumpDamage = nil
        self.cannonDamage = []
        self.directDamage = nil
        self.distanceDamage = gameParams.hookBlastParam.distanceDamage
        self.exhaleBlastParamMaxCharge = []
        self.exhaleBlastParamMinCharge = []
        self.jumpDamage = nil
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = []
        self.throwDamage = []
        self.throwDirectDamage = nil
        self.tickDamage = nil
        self.waveDamage = nil
    }
    
    public init(container: TripleInkstrikeGameParameters) {
        let gameParams = container.parameters
        
        self.id = .tripleInkstrike
        self.armorHp = nil
        self.bulletDamageMax = nil
        self.bulletDamageMin = nil
        self.bumpDamage = nil
        self.cannonDamage = []
        self.directDamage = nil
        self.distanceDamage = []
        self.exhaleBlastParamMaxCharge = []
        self.exhaleBlastParamMinCharge = []
        self.jumpDamage = nil
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = []
        self.throwDamage = []
        self.throwDirectDamage = nil
        self.tickDamage = nil
        self.waveDamage = nil
    }
    
    public init(container: TrizookaGameParameters) {
        let gameParams = container.parameters
        
        self.id = .trizooka
        self.armorHp = nil
        self.bulletDamageMax = nil
        self.bulletDamageMin = nil
        self.bumpDamage = nil
        self.cannonDamage = []
        self.directDamage = gameParams.damageParam.directHitDamage
        self.distanceDamage = gameParams.blastParam.distanceDamage
        self.exhaleBlastParamMaxCharge = []
        self.exhaleBlastParamMinCharge = []
        self.jumpDamage = nil
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = []
        self.throwDamage = []
        self.throwDirectDamage = nil
        self.tickDamage = nil
        self.waveDamage = nil
    }
    
    public init(container: UltraStampGameParameters) {
        let gameParams = container.parameters
        
        var swingDmg = [DistanceDamage(damage: 1000, distance: 0)]
        swingDmg.append(contentsOf: gameParams.swingBigBlastParam.distanceDamage)
        
        self.id = .ultraStamp
        self.armorHp = nil
        self.bulletDamageMax = nil
        self.bulletDamageMin = nil
        self.bumpDamage = nil
        self.cannonDamage = []
        self.directDamage = nil
        self.distanceDamage = []
        self.exhaleBlastParamMaxCharge = []
        self.exhaleBlastParamMinCharge = []
        self.jumpDamage = nil
        self.overwrites = gameParams.getOverwrites()
        self.swingDamage = swingDmg
        self.throwDamage = gameParams.throwBlastParam.distanceDamage
        self.throwDirectDamage = nil
        self.tickDamage = nil
        self.waveDamage = nil
    }
    
    public func damage(for type: DamageType) -> Any? {
        switch type {
        case .bombNormal:
            return self.distanceDamage
            
        case .bombDirect:
            return self.directDamage
            
        case .wave:
            return self.waveDamage.toDouble()
            
        case .specialThrowDirect:
            return self.throwDirectDamage.toDouble()
            
        case .specialBulletMax:
            return self.bulletDamageMax.toDouble()
            
        case .specialBulletMin:
            return self.bulletDamageMin.toDouble()
            
        case .specialBump:
            return self.bumpDamage.toDouble()
            
        case .specialJump:
            return self.jumpDamage.toDouble()
            
        case .specialTick:
            return self.tickDamage.toDouble()
            
        case .specialMaxCharge:
            return self.exhaleBlastParamMaxCharge
            
        case .specialMinCharge:
            return self.exhaleBlastParamMinCharge
            
        case .specialThrow:
            return self.throwDamage
            
        case .specialSwing:
            return self.swingDamage
            
        case .specialCannon:
            return self.cannonDamage
            
        default:
            return nil
        }
    }
}
