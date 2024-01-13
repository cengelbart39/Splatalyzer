//
//  GameParameters.swift
//  
//
//  Created by Christopher Engelbart on 12/29/23.
//

import Foundation

public struct GameParameters<T: Codable>: Codable {
    public let parent: String?
    public let parameters: T
    
    public enum CodingKeys: String, CodingKey {
        case parent = "$parent"
        case parameters = "GameParameters"
    }
}


// MARK: - Main Weapons
public typealias BlasterGameParameters = GameParameters<Blaster>
public typealias BrellaGameParameters = GameParameters<Brella>
public typealias BrushGameParameters = GameParameters<Brush>
public typealias ChargerGameParameters = GameParameters<Charger>
public typealias DualieGameParameters = GameParameters<Dualie>
public typealias RollerGameParameters = GameParameters<Roller>
public typealias ShooterGameParameters = GameParameters<Shooter>
public typealias SlosherGameParameters = GameParameters<Slosher>
public typealias SplatanaGameParameters = GameParameters<Splatana>
public typealias SplatlingGameParameters = GameParameters<Splatling>
public typealias StringerGameParameters = GameParameters<Stringer>

// MARK: - Sub Weapons
public typealias AngleShooterGameParameters = GameParameters<AngleShooter>
public typealias AutobombGameParameters = GameParameters<Autobomb>
public typealias BurstBombGameParameters = GameParameters<BurstBomb>
public typealias CurlingBombGameParameters = GameParameters<CurlingBomb>
public typealias FizzyBombGameParameters = GameParameters<FizzyBomb>
public typealias InkMineGameParameters = GameParameters<InkMine>
public typealias PointSensorGameParameters = GameParameters<PointSensor>
public typealias SplashWallGameParameters = GameParameters<SplashWall>
public typealias SplatBombGameParameters = GameParameters<SplatBomb>
public typealias SprinklerGameParameters = GameParameters<Sprinkler>
public typealias SquidBeakonGameParameters = GameParameters<SquidBeakon>
public typealias SuctionBombGameParameters = GameParameters<SuctionBomb>
public typealias TorpedoGameParameters = GameParameters<Torpedo>
public typealias ToxicMistGameParameters = GameParameters<ToxicMist>

// MARK: - Special Weapons
public typealias BigBubblerGameParameters = GameParameters<BigBubbler>
public typealias BooyahBombGameParameters = GameParameters<BooyahBomb>
public typealias CrabTankGameParameters = GameParameters<CrabTank>
typealias IkuraShootGameParameters = GameParameters<IkuraShoot>
public typealias InkjetGameParameters = GameParameters<Inkjet>
public typealias InkStormGameParameters = GameParameters<InkStorm>
public typealias InkVacGameParameters = GameParameters<InkVac>
public typealias KrakenRoyaleGameParameters = GameParameters<KrakenRoyale>
public typealias KillerWail51GameParameters = GameParameters<KillerWail51>
typealias RainmakerGameParameters = GameParameters<Rainmaker>
public typealias ReefsliderGameParameters = GameParameters<Reefslider>
typealias SplashdownGameParameters = GameParameters<Splashdown>
public typealias SplattercolorScreenGameParameters = GameParameters<SplattercolorScreen>
public typealias SuperChumpGameParameters = GameParameters<SuperChump>
public typealias TacticoolerGameParameters = GameParameters<Tacticooler>
public typealias TentaMissilesGameParameters = GameParameters<TentaMissiles>
public typealias TripleInkstrikeGameParameters = GameParameters<TripleInkstrike>
public typealias TripleSplashdownGameParameters = GameParameters<TripleSplashdown>
public typealias TrizookaGameParameters = GameParameters<Trizooka>
public typealias UltraStampGameParameters = GameParameters<UltraStamp>
public typealias WaveBreakerGameParameters = GameParameters<WaveBreaker>
public typealias ZipcasterGameParameters = GameParameters<Zipcaster>

// MARK: Player Parameters
public typealias PlayerGameParameters = GameParameters<PlayerParameters>
