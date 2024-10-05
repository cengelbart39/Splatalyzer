//
//  SpecialWeapon.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

#if os(macOS)
import AppKit
#else
import UIKit
#endif

/// Represents every Special Weapon
public enum SpecialWeapon: String, CaseIterable, Codable, Sendable, WeaponRepresentable {
    case bigBubbler = "SpGreatBarrier"
    case booyahBomb = "SpNiceBall"
    case crabTank = "SpChariot"
    case inkjet = "SpJetpack"
    case inkStorm = "SpInkStorm"
    case inkVac = "SpBlower"
    case killerWail51 = "SpMicroLaser"
    case krakenRoyale = "SpCastle"
    case reefslider = "SpSkewer"
    case splattercolorScreen = "SpChimney"
    case superChump = "SpFirework"
    case tacticooler = "SpEnergyStand"
    case tentaMissiles = "SpMultiMissile"
    case tripleInkstrike = "SpTripleTornado"
    case tripleSplashdown = "SpPogo"
    case trizooka = "SpUltraShot"
    case ultraStamp = "SpUltraStamp"
    case waveBreaker = "SpShockSonar"
    case zipcaster = "SpSuperHook"
    
    #if os(macOS)
    /// The icon for the special weapon used in-game.
    /// - Note: On other OSes, `UIImage` is used instead
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
    /// The icon for the special weapon used in-game.
    /// - Note: On macOS, `NSImage` is used instead.
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
    
    /// The localized name of the Special Weapon
    public var localized: String {
        return NSLocalizedString(self.rawValue, tableName: "SpecialWeapon",  bundle: Bundle.module, comment: "")
    }
    
    /// Gets file name in relation to `.game__GameParameterTable.json` files for special weapons.
    public var fileName: String {
        return "Weapon\(self.rawValue).game__GameParameterTable"
    }
}

extension SpecialWeapon {
    var modelType: any SpecialWeaponable.Type {
        switch self {
        case .inkVac:
            return InkVac.self
        case .krakenRoyale:
            return KrakenRoyale.self
        case .crabTank:
            return CrabTank.self
        case .splattercolorScreen:
            return SplattercolorScreen.self
        case .tacticooler:
            return Tacticooler.self
        case .superChump:
            return SuperChump.self
        case .bigBubbler:
            return BigBubbler.self
        case .inkStorm:
            return InkStorm.self
        case .inkjet:
            return Inkjet.self
        case .killerWail51:
            return KillerWail51.self
        case .tentaMissiles:
            return TentaMissiles.self
        case .booyahBomb:
            return BooyahBomb.self
        case .tripleSplashdown:
            return TripleSplashdown.self
        case .waveBreaker:
            return WaveBreaker.self
        case .reefslider:
            return Reefslider.self
        case .zipcaster:
            return Zipcaster.self
        case .tripleInkstrike:
            return TripleInkstrike.self
        case .trizooka:
            return Trizooka.self
        case .ultraStamp:
            return UltraStamp.self
        }
    }
    
    static func allModelTypes() -> [any GameParametable.Type] {
        return self.allCases.map { $0.modelType }
    }
}
