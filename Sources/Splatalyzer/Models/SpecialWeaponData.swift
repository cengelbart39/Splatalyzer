//
//  SpecialWeaponData.swift
//
//
//  Created by Christopher Engelbart on 1/8/24.
//

import Foundation

struct SpecialWeaponData {
    let armorHp: Int?
    let bulletDamageMin: Int?
    let bulletDamageMax: Int?
    let bumpDamage: Int?
    let cannonDamage: [DistanceDamage]
    let directDamage: Int?
    let distanceDamage: [DistanceDamage]
    let exhaleBlastParamMinCharge: [DistanceDamage]
    let exhaleBlastParamMaxCharge: [DistanceDamage]
    let jumpDamage: Int?
    let overwrites: SpecialOverwrites
    let swingDamage: [DistanceDamage]
    let throwDamage: [DistanceDamage]
    let throwDirectDamage: Int?
    let tickDamage: Int?
    let waveDamage: Int?
    
    init(container: SpecialBlowerGameParameters) {
        let gameParams = container.gameParameters
        
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
    
    init(container: SpecialCastleGameParameters) {
        let gameParams = container.gameParameters
        
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
    
    init(container: SpecialChariotGameParameters) {
        let gameParams = container.gameParameters
        
        var canon = [DistanceDamage(damage: 600, distance: 1)]
        canon.append(contentsOf: gameParams.cannonParam.blastParam.distanceDamage)
        
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
    
    init(container: SpecialChimneyGameParameters) {
        let gameParams = container.gameParameters
        
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
    
    init(container: SpecialEnergyStandGameParameters) {
        let gameParams = container.gameParameters
        
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
    
    init(container: SpecialFireworkGameParameters) {
        let gameParams = container.gameParameters
        
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
    
    init(container: SpecialInkStormGameParameters) {
        let gameParams = container.gameParameters
        
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
    
    init(container: SpecialJetpackGameParameters) {
        let gameParams = container.gameParameters
        
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
    
    init(container: SpecialMicroLaserGameParameters) {
        let gameParams = container.gameParameters
        
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
    
    init(container: SpecialMultiMissileGameParameters) {
        let gameParams = container.gameParameters
        
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
    
    init(container: SpecialNiceBallGameParameters) {
        let gameParams = container.gameParameters
        
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
    
    init(container: SpecialPogoGameParameters) {
        let gameParams = container.gameParameters
        
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
    
    init(container: SpecialShockSonarGameParameters) {
        let gameParams = container.gameParameters
        
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
    
    init(container: SpecialSuperHookGameParameters) {
        let gameParams = container.gameParameters
        
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
    
    init(container: SpecialTripleTornadoGameParameters) {
        let gameParams = container.gameParameters
        
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
    
    init(container: SpecialUltraShotGameParameters) {
        let gameParams = container.gameParameters
        
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
    
    init(container: SpecialUltraStampGameParameters) {
        let gameParams = container.gameParameters
        
        var swingDmg = [DistanceDamage(damage: 1000, distance: 0)]
        swingDmg.append(contentsOf: gameParams.swingBigBlastParam.distanceDamage)
        
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
}
