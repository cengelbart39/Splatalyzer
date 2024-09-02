//
//  SpecialWeaponData.swift
//
//
//  Created by Christopher Engelbart on 1/8/24.
//

import Foundation

/// An object representing the necessary Special Weapon information for build analysis.
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
    
    public init(for weapon: SpecialWeapon) throws {
        switch weapon {
        case .inkVac:
            let object = try JSONService().decode(.weapon(weapon), into: InkVac.self)
            
            self.init(inkVac: object)

        case .krakenRoyale:
            let object = try JSONService().decode(.weapon(weapon), into: KrakenRoyale.self)

            self.init(krakenRoyale: object)
            
        case .crabTank:
            let object = try JSONService().decode(.weapon(weapon), into: CrabTank.self)

            self.init(crabTank: object)
            
        case .splattercolorScreen:
            let object = try JSONService().decode(.weapon(weapon), into: SplattercolorScreen.self)

            self.init(splattercolorScreen: object)
            
        case .tacticooler:
            let object = try JSONService().decode(.weapon(weapon), into: Tacticooler.self)

            self.init(tacticooler: object)
            
        case .superChump:
            let object = try JSONService().decode(.weapon(weapon), into: SuperChump.self)

            self.init(superChump: object)
            
        case .bigBubbler:
            let object = try JSONService().decode(.weapon(weapon), into: BigBubbler.self)

            self.init(bigBubbler: object)
            
        case .inkStorm:
            let object = try JSONService().decode(.weapon(weapon), into: InkStorm.self)

            self.init(inkStorm: object)
            
        case .inkjet:
            let object = try JSONService().decode(.weapon(weapon), into: Inkjet.self)

            self.init(inkjet: object)
            
        case .killerWail51:
            let object = try JSONService().decode(.weapon(weapon), into: KillerWail51.self)

            self.init(killerWail51: object)
            
        case .tentaMissiles:
            let object = try JSONService().decode(.weapon(weapon), into: TentaMissiles.self)

            self.init(tentaMissiles: object)
            
        case .booyahBomb:
            let object = try JSONService().decode(.weapon(weapon), into: BooyahBomb.self)

            self.init(booyahBomb: object)
            
        case .tripleSplashdown:
            let object = try JSONService().decode(.weapon(weapon), into: TripleSplashdown.self)

            self.init(tripleSplashdown: object)
            
        case .waveBreaker:
            let object = try JSONService().decode(.weapon(weapon), into: WaveBreaker.self)

            self.init(waveBreaker: object)
            
        case .reefslider:
            let object = try JSONService().decode(.weapon(weapon), into: Reefslider.self)

            self.init(reefslider: object)
            
        case .zipcaster:
            let object = try JSONService().decode(.weapon(weapon), into: Zipcaster.self)

            self.init(zipcaster: object)
            
        case .tripleInkstrike:
            let object = try JSONService().decode(.weapon(weapon), into: TripleInkstrike.self)

            self.init(tripleInkstrike: object)
            
        case .trizooka:
            let object = try JSONService().decode(.weapon(weapon), into: Trizooka.self)

            self.init(trizooka: object)
            
        case .ultraStamp:
            let object = try JSONService().decode(.weapon(weapon), into: UltraStamp.self)

            self.init(ultraStamp: object)
        }
    }
    
    public init(bigBubbler: BigBubbler) {
        let gameParams = bigBubbler.parameters
        
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
    
    public init(reefslider: Reefslider) {
        let gameParams = reefslider.parameters
        
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
    
    public init(inkVac: InkVac) {
        let gameParams = inkVac.parameters
        
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
    
    public init(krakenRoyale: KrakenRoyale) {
        let gameParams = krakenRoyale.parameters
        
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
    
    public init(crabTank: CrabTank) {
        let gameParams = crabTank.parameters
        
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
    
    public init(splattercolorScreen: SplattercolorScreen) {
        let gameParams = splattercolorScreen.parameters
        
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
    
    public init(tacticooler: Tacticooler) {
        let gameParams = tacticooler.parameters
        
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
    
    public init(superChump: SuperChump) {
        let gameParams = superChump.parameters
        
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
    
    public init(inkStorm: InkStorm) {
        let gameParams = inkStorm.parameters
        
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
    
    public init(inkjet: Inkjet) {
        let gameParams = inkjet.parameters
        
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
    
    public init(killerWail51: KillerWail51) {
        let gameParams = killerWail51.parameters
        
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
    
    public init(tentaMissiles: TentaMissiles) {
        let gameParams = tentaMissiles.parameters
        
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
    
    public init(booyahBomb: BooyahBomb) {
        let gameParams = booyahBomb.parameters
        
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
    
    public init(tripleSplashdown: TripleSplashdown) {
        let gameParams = tripleSplashdown.parameters
        
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
    
    public init(waveBreaker: WaveBreaker) {
        let gameParams = waveBreaker.parameters
        
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
    
    public init(zipcaster: Zipcaster) {
        let gameParams = zipcaster.parameters
        
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
    
    public init(tripleInkstrike: TripleInkstrike) {
        let gameParams = tripleInkstrike.parameters
        
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
    
    public init(trizooka: Trizooka) {
        let gameParams = trizooka.parameters
        
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
    
    public init(ultraStamp: UltraStamp) {
        let gameParams = ultraStamp.parameters
        
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
        self.throwDirectDamage = gameParams.throwMoveParam.directDamageValue
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
