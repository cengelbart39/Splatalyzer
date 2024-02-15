//
//  SpecialWeapon.swift
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

/// Represents every Special Weapon
public enum SpecialWeapon: String, CaseIterable, Codable {
    case inkVac = "SpBlower"
    case krakenRoyale = "SpCastle"
    case crabTank = "SpChariot"
    case splattercolorScreen = "SpChimney"
    case tacticooler = "SpEnergyStand"
    case superChump = "SpFirework"
    case bigBubbler = "SpGreatBarrier"
    case inkStorm = "SpInkStorm"
    case inkjet = "SpJetpack"
    case killerWail51 = "SpMicroLaser"
    case tentaMissiles = "SpMultiMissile"
    case booyahBomb = "SpNiceBall"
    case tripleSplashdown = "SpPogo"
    case waveBreaker = "SpShockSonar"
    case reefslider = "SpSkewer"
    case zipcaster = "SpSuperHook"
    case tripleInkstrike = "SpTripleTornado"
    case trizooka = "SpUltraShot"
    case ultraStamp = "SpUltraStamp"
    
    #if os(macOS)
    /// The image of the current special weapon
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
    /// The image of the current special weapon
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
    
    /// The localized name of the Special Weapon
    public var localized: String {
        return NSLocalizedString(self.rawValue, tableName: "SpecialWeapon",  bundle: Bundle.module, comment: "")
    }
    
    /// Gets file name in relation to `.game__GameParameterTable.json` files for special weapons.
    func fileName() -> String {
        return self.rawValue
    }
}
