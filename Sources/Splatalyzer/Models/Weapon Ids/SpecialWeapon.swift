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

public enum SpecialWeapon: String, CaseIterable {
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
    var image: NSImage? {
        return NSImage(named: self.rawValue)
    }
    #else
    var image: UIImage? {
        return UIImage(named: self.rawValue)
    }
    #endif
    
    func fileName() -> String {
        return self.rawValue
    }
}
