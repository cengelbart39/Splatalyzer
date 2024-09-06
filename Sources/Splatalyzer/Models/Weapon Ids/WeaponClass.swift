//
//  WeaponClass.swift
//  
//
//  Created by Christopher Engelbart on 1/27/24.
//

import Foundation

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
    
    /// The image of the weapon class
    public var image: PlatformImage? {
        guard let url = Bundle.main.url(forResource: self.rawValue, withExtension: "png") else {
            return nil
        }
        
        guard let data = try? Data(contentsOf: url) else {
            return nil
        }
        
        return PlatformImage(data: data)
    }
    
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

