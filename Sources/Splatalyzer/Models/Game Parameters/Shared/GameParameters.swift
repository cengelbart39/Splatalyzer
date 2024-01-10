//
//  GameParameters.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import Foundation

struct GameParameters<T: Codable>: Codable {
    let parent: String?
    let parameters: T
    
    enum CodingKeys: String, CodingKey {
        case parent = "$parent"
        case parameters = "GameParameters"
    }
}


// MARK: - Main Weapons
typealias BlasterGameParameters = GameParameters<Blaster>
typealias BrellaGameParameters = GameParameters<Brella>
typealias BrushGameParameters = GameParameters<Brush>
typealias ChargerGameParameters = GameParameters<Charger>
typealias DualieGameParameters = GameParameters<Dualie>
typealias RollerGameParameters = GameParameters<Roller>
typealias ShooterGameParameters = GameParameters<Shooter>
typealias SlosherGameParameters = GameParameters<Slosher>
typealias SplatanaGameParameters = GameParameters<Splatana>
typealias SplatlingGameParameters = GameParameters<Splatling>
typealias StringerGameParameters = GameParameters<Stringer>

// MARK: - Sub Weapons
typealias AngleShooterGameParameters = GameParameters<AngleShooter>
typealias AutobombGameParameters = GameParameters<Autobomb>
typealias BurstBombGameParameters = GameParameters<BurstBomb>
typealias CurlingBombGameParameters = GameParameters<CurlingBomb>
typealias FizzyBombGameParameters = GameParameters<FizzyBomb>
typealias InkMineGameParameters = GameParameters<InkMine>
typealias PointSensorGameParameters = GameParameters<PointSensor>
typealias SplashWallGameParameters = GameParameters<SplashWall>
typealias SplatBombGameParameters = GameParameters<SplatBomb>
typealias SprinklerGameParameters = GameParameters<Sprinkler>
typealias SquidBeakonGameParameters = GameParameters<SquidBeakon>
typealias SuctionBombGameParameters = GameParameters<SuctionBomb>
typealias TorpedoGameParameters = GameParameters<Torpedo>
typealias ToxicMistGameParameters = GameParameters<ToxicMist>

// MARK: - Special Weapons
typealias BigBubblerGameParameters = GameParameters<BigBubbler>
typealias BooyahBombGameParameters = GameParameters<BooyahBomb>
typealias CrabTankGameParameters = GameParameters<CrabTank>
typealias IkuraShootGameParameters = GameParameters<IkuraShoot>
typealias InkjetGameParameters = GameParameters<Inkjet>
typealias InkStormGameParameters = GameParameters<InkStorm>
typealias InkVacGameParameters = GameParameters<InkVac>
typealias KrakenRoyaleGameParameters = GameParameters<KrakenRoyale>
typealias KillerWail51GameParameters = GameParameters<KillerWail51>
typealias RainmakerGameParameters = GameParameters<Rainmaker>
typealias ReefsliderGameParameters = GameParameters<Reefslider>
typealias SplashdownGameParameters = GameParameters<Splashdown>
typealias SplattercolorScreenGameParameters = GameParameters<SplattercolorScreen>
typealias SuperChumpGameParameters = GameParameters<SuperChump>
typealias TacticoolerGameParameters = GameParameters<Tacticooler>
typealias TentaMissilesGameParameters = GameParameters<TentaMissiles>
typealias TripleInkstrikeGameParameters = GameParameters<TripleInkstrike>
typealias TripleSplashdownGameParameters = GameParameters<TripleSplashdown>
typealias TrizookaGameParameters = GameParameters<Trizooka>
typealias UltraStampGameParameters = GameParameters<UltraStamp>
typealias WaveBreakerGameParameters = GameParameters<WaveBreaker>
typealias ZipcasterGameParameters = GameParameters<Zipcaster>
