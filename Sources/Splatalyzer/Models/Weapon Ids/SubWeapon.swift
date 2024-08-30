//
//  SubWeapon.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

#if os(macOS)
import AppKit
#else
import UIKit
#endif

import Foundation

/// Represents every Sub Weapon
public enum SubWeapon: String, CaseIterable, Codable, Sendable {
    case angleShooter = "LineMarker"
    case autobomb = "Bomb_Robot"
    case burstBomb = "Bomb_Quick"
    case curlingBomb = "Bomb_Curling"
    case fizzyBomb = "Bomb_Fizzy"
    case inkMine = "Trap"
    case pointSensor = "PointSensor"
    case splashWall = "Shield"
    case splatBomb = "Bomb_Splash"
    case squidBeakon = "Beacon"
    case sprinkler = "Sprinkler"
    case suctionBomb = "Bomb_Suction"
    case torpedo = "Bomb_Torpedo"
    case toxicMist = "PoisonMist"
    
    #if os(macOS)
    /// The image of the current sub weapon
    /// - Note: OSes other than `macOS` use `UIImage` instead.
    public var image: NSImage? {
        guard let url = Bundle.module.url(forResource: self.rawValue, withExtension: "png") else {
            return nil
        }
        
        guard let data = try? Data(contentsOf: url) else {
            return nil
        }
        
        return NSImage(data: data)
    }
    #else
    /// The image of the current sub weapon
    /// - Note: `macOS` use `NSImage` instead.
    public var image: UIImage? {
        guard let url = Bundle.module.url(forResource: self.rawValue, withExtension: "png") else {
            return nil
        }
        
        guard let data = try? Data(contentsOf: url) else {
            return nil
        }
        
        return UIImage(data: data)
    }
    #endif
    
    /// The localized name of the Sub Weapon
    public var localized: String {
        return NSLocalizedString(self.rawValue, tableName: "SubWeapon",  bundle: Bundle.module, comment: "")
    }
    
    /// Converts the raw value into a file name in relation to `.game__GameParameterTable.json` files for sub weapons.
    ///
    /// Say we want to decode the game parameters of the Curling Bomb. It's raw value is `Bomb_Curling`.
    ///
    /// It's file is `WeaponBombCurling.game__GameParameterTable.json`.
    ///
    /// This function outputs `BombCurling`, removing the underscore.
    ///
    /// For no-underscore raw values, we can just return them without doing any work.
    func fileName() -> String {
        if self.rawValue.contains("_") {
            let subSplit = self.rawValue.split(separator: "_")
            
            return String(subSplit[0] + subSplit[1])
            
        } else {
            return self.rawValue
        }
    }
}

extension SubWeapon {
    var modelType: any GameParametable.Type {
        switch self {
        case .angleShooter:
            return AngleShooter.self
        case .autobomb:
            return Autobomb.self
        case .burstBomb:
            return BurstBomb.self
        case .curlingBomb:
            return CurlingBomb.self
        case .fizzyBomb:
            return FizzyBomb.self
        case .inkMine:
            return InkMine.self
        case .pointSensor:
            return PointSensor.self
        case .splashWall:
            return SplashWall.self
        case .splatBomb:
            return SplatBomb.self
        case .squidBeakon:
            return SquidBeakon.self
        case .sprinkler:
            return Sprinkler.self
        case .suctionBomb:
            return SuctionBomb.self
        case .torpedo:
            return Torpedo.self
        case .toxicMist:
            return ToxicMist.self
        }
    }
    
    static func fileNames() -> [String] {
        return self.allCases.map { $0.fileName() }
    }
    
    static func allModelTypes() -> [any GameParametable.Type] {
        return self.allCases.map { $0.modelType }
    }
}
