//
//  File.swift
//  
//
//  Created by Christopher Engelbart on 1/27/24.
//

import Foundation

#if os(macOS)
import AppKit
#else
import UIKit
#endif

/// Represents the classes of Main Weapons
public enum WeaponClass: String, CaseIterable, Sendable {
    case blaster = "Blaster"
    case brush = "Brush"
    case charger = "Charger"
    case dualie = "Maneuver"
    case roller = "Roller"
    case splatana = "Saber"
    case brella = "Shelter"
    case shooter = "Shooter"
    case slosher = "Slosher"
    case splatling = "Spinner"
    case stringer = "Stringer"
    
    #if os(macOS)
    /// The image of the weapon class
    /// - Note: OSes other than `macOS` use `UIImage` instead.
    public var image: NSImage? {
        guard let url = Bundle.main.url(forResource: self.rawValue, withExtension: "png") else {
            return nil
        }
        
        guard let data = try? Data(contentsOf: url) else {
            return nil
        }
        
        return NSImage(data: data)
    }
    #else
    /// The image of the weapon class
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
    
    /// Localized version of the weapon class name
    public var localized: String {
        return NSLocalizedString(self.rawValue, tableName: "WeaponClass",  bundle: Bundle.module, comment: "")
    }
    
    public var symbolName: String {
        switch self {
        case .blaster:
            return "weapon.class.blaster"
        case .brush:
            return "weapon.class.brush"
        case .charger:
            return "weapon.class.charger"
        case .dualie:
            return "weapon.class.dualies"
        case .roller:
            return "weapon.class.roller"
        case .splatana:
            return "weapon.class.splatana"
        case .brella:
            return "weapon.class.brella"
        case .shooter:
            return "weapon.class.shooter"
        case .slosher:
            return "weapon.class.slosher"
        case .splatling:
            return "weapon.class.splatling"
        case .stringer:
            return "weapon.class.stringer"
        }
    }
}
