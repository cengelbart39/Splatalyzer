//
//  ColumnKey.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

enum ColumnKey: Codable {
    case attractTarget
    case blowerInhale
    case blowoutsRoll
    case bombTorpedoBullet
    case bulletPogo
    case bulletUmbrellaCanopyCompact
    case bulletUmbrellaCanopyNormal
    case bulletUmbrellaCanopyWide
    case castleKnockBack
    case chariot
    case coopEnemyCupTwinsCup
    case coopEnemyFriendlyFire
    case coopEnemyHardBody
    case coopEnemySakeJaw
    case coopEnemySakeRope
    case coopEnemySakeTamaire
    case coopEnemySakeTamaireOneBomb
    case coopEnemySakelienCupTwins
    case coopEnemySakelienGiant
    case coopEnemySakelienGiantFriendlyFire
    case coopEnemySakelienTowerPart
    case coopEnemySakelienTowerUnite
    case coopGoldenIkuraBox
    case coopPropeller
    case coopSpawnBox
    case decoy
    case `default`
    case enemyRockBall
    case gachihokoBarrier
    case geyserOnline
    case greatBarrierBarrier
    case greatBarrierWeakPoint
    case inkRail
    case msnBossWeak
    case msnBossHard
    case msnBoxL
    case msnBoxS
    case msnEnemy
    case msnEnemyEscape
    case msnEnemyShield
    case msnEnemyTakopodDEV
    case msnGoal
    case msnLeaderMoray
    case msnMantaShadow
    case msnRailKingHand
    case msnSharkKing
    case msnYakan
    case niceBallArmor
    case propeller
    case propellerOnline
    case salmonBuddy
    case shockSonar
    case snakeBlock
    case spongeVersus
    case wsbFlag
    case wsbShield
    case wsbSprinkler
    
    enum CodingKeys: String, CodingKey {
        case attractTarget = "AttractTarget"
        case blowerInhale = "BlowerInhale"
        case blowoutsRoll = "BlowoutsRoll"
        case bombTorpedoBullet = "Bomb_TorpedoBullet"
        case bulletPogo = "BulletPogo"
        case bulletUmbrellaCanopyCompact = "BulletUmbrellaCanopyCompact"
        case bulletUmbrellaCanopyNormal = "BulletUmbrellaCanopyNormal"
        case bulletUmbrellaCanopyWide = "BulletUmbrellaCanopyWide"
        case castleKnockBack = "CastleKnockBack"
        case chariot = "Chariot"
        case coopEnemyCupTwinsCup = "CoopEnemyCupTwinsCup"
        case coopEnemyFriendlyFire = "CoopEnemyFriendlyFire"
        case coopEnemyHardBody = "CoopEnemyHardBody"
        case coopEnemySakeJaw = "CoopEnemySakeJaw"
        case coopEnemySakeRope = "CoopEnemySakeRope"
        case coopEnemySakeTamaire = "CoopEnemySakeTamaire"
        case coopEnemySakeTamaireOneBomb = "CoopEnemySakeTamaireOneBomb"
        case coopEnemySakelienCupTwins = "CoopEnemySakelienCupTwins"
        case coopEnemySakelienGiant = "CoopEnemySakelienGiant"
        case coopEnemySakelienGiantFriendlyFire = "CoopEnemySakelienGiantFriendlyFire"
        case coopEnemySakelienTowerPart = "CoopEnemySakelienTowerPart"
        case coopEnemySakelienTowerUnite = "CoopEnemySakelienTowerUnite"
        case coopGoldenIkuraBox = "CoopGoldenIkuraBox"
        case coopPropeller = "CoopPropeller"
        case coopSpawnBox = "CoopSpawnBox"
        case decoy = "Decoy"
        case `default` = "Default"
        case enemyRockBall = "EnemyRockBall"
        case gachihokoBarrier = "Gachihoko_Barrier"
        case geyserOnline = "GeyserOnline"
        case greatBarrierBarrier = "GreatBarrier_Barrier"
        case greatBarrierWeakPoint = "GreatBarrier_WeakPoint"
        case inkRail = "InkRail"
        case msnBossWeak = "MsnBossWeak"
        case msnBossHard = "MsnBoxHard"
        case msnBoxL = "MsnBoxL"
        case msnBoxS = "MsnBoxS"
        case msnEnemy = "MsnEnemy"
        case msnEnemyEscape = "MsnEnemyEscape"
        case msnEnemyShield = "MsnEnemyShield"
        case msnEnemyTakopodDEV = "MsnEnemyTakopodDEV"
        case msnGoal = "MsnGoal"
        case msnLeaderMoray = "MsnLeaderMoray"
        case msnMantaShadow = "MsnMantaShadow"
        case msnRailKingHand = "MsnRailKingHand"
        case msnSharkKing = "MsnSharkKing"
        case msnYakan = "MsnYakan"
        case niceBallArmor = "NiceBall_Armor"
        case propeller = "Propeller"
        case propellerOnline = "PropellerOnline"
        case salmonBuddy = "SalmonBuddy"
        case shockSonar = "ShockSonar"
        case snakeBlock = "SnakeBlock"
        case spongeVersus = "Sponge_Versus"
        case wsbFlag = "Wsb_Flag"
        case wsbShield = "Wsb_Shield"
        case wsbSprinkler = "Wsb_Sprinkler"
    }
}
