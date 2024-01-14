//
//  MainWeapon.swift
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

public enum MainWeapon: String, CaseIterable, Identifiable {
    // MARK: Blasters
    case rapidBlasterPro = "Blaster_LightLong_00"
    case rapidBlasterProDeco = "Blaster_LightLong_01"
    case clashBlaster = "Blaster_LightShort_00"
    case clashBlasterNeo = "Blaster_LightShort_01"
    case rapidBlaster = "Blaster_Light_00"
    case rapidBlasterDeco = "Blaster_Light_01"
    case rangeBlaster = "Blaster_Long_00"
    case blaster = "Blaster_Middle_00"
    case customBlaster = "Blaster_Middle_01"
    case sblast92 = "Blaster_Precision_00"
    case sblast91 = "Blaster_Precision_01"
    case lunaBlaster = "Blaster_Short_00"
    case lunaBlasterNeo = "Blaster_Short_01"
    
    // MARK: Brushes
    case painbrush = "Brush_Heavy_00"
    case painbrushNouveau = "Brush_Heavy_01"
    case inkbrush = "Brush_Mini_00"
    case inkbrushNouveau = "Brush_Mini_01"
    case octobrush = "Brush_Normal_00"
    case octobrushNouveau = "Brush_Normal_01"
    
    // MARK: Chargers
    case gooTuber = "Charger_Keeper_00"
    case customGooTuber = "Charger_Keeper_01"
    case bamboozler14Mk1 = "Charger_Light_00"
    case eliter4KScope = "Charger_LongScope_00"
    case eliter4K = "Charger_Long_00"
    case splatterscope = "Charger_NormalScope_00"
    case zfSplatterscope = "Charger_NormalScope_01"
    case splatCharger = "Charger_Normal_00"
    case zfSplatCharger = "Charger_Normal_01"
    case snipewriter5H = "Charger_Pencil_00"
    case snipewriter5B = "Charger_Pencil_01"
    case classicSquiffer = "Charger_Quick_00"
    
    // MARK: Dualies
    case dualieSquelchers = "Maneuver_Dual_00"
    case customDualieSquelchers = "Maneuver_Dual_01"
    case gloogaDualies = "Maneuver_Gallon_00"
    case splatDualies = "Maneuver_Normal_00"
    case enperrySplatDualies = "Maneuver_Normal_01"
    case dappleDualies = "Maneuver_Short_00"
    case dappleDualiesNouveau = "Maneuver_Short_01"
    case darkTetraDualies = "Maneuver_Stepper_00"
    case lightTetraDualies = "Maneuver_Stepper_01"
    
    // MARK: Rollers
    case carbonRoller = "Roller_Compact_00"
    case carbonRollerDeco = "Roller_Compact_01"
    case dynamoRoller = "Roller_Heavy_00"
    case goldDynamoRoller = "Roller_Heavy_01"
    case flingzaRoller = "Roller_Hunter_00"
    case splatRoller = "Roller_Normal_00"
    case krakOnSplatRoller = "Roller_Normal_01"
    case bigSwigRoller = "Roller_Wide_00"
    case bigSwigRollerExpress = "Roller_Wide_01"
    
    // MARK: Splatanas
    case splatanaWiper = "Saber_Lite_00"
    case splatanaWiperDeco = "Saber_Lite_01"
    case splatanaStamper = "Saber_Normal_00"
    case neoSplatanaStamper = "Saber_Normal_01"
    
    // MARK: Brellas
    case undercoverBrella = "Shelter_Compact_00"
    case undercoverSorellaBrella = "Shelter_Compact_01"
    case splatBrella = "Shelter_Normal_00"
    case sorellaBrella = "Shelter_Normal_01"
    case tentaBrella = "Shelter_Wide_00"
    case tentaSorellaBrella = "Shelter_Wide_01"
    
    // MARK: Shooters
    case aerosprayMG = "Shooter_Blaze_00"
    case aerosprayRG = "Shooter_Blaze_01"
    case splattershotPro = "Shooter_Expert_00"
    case forgeSplattershotPro = "Shooter_Expert_01"
    case splattershotJr = "Shooter_First_00"
    case customSplattershotJr = "Shooter_First_01"
    case squeezer = "Shooter_Flash_00"
    case foilSqueezer = "Shooter_Flash_01"
    case _52Gal = "Shooter_Gravity_00"
    case _96Gal = "Shooter_Heavy_00"
    case _96GalDeco = "Shooter_Heavy_01"
    case jetSquelcher = "Shooter_Long_00"
    case customJetSquelcher = "Shooter_Long_01"
    case splattershot = "Shooter_Normal_00"
    case tentatekSplattershot = "Shooter_Normal_01"
    case heroShot = "Shooter_Normal_H"
    case splashomatic = "Shooter_Precision_00"
    case neoSplashomatic = "Shooter_Precision_01"
    case splattershotNova = "Shooter_QuickLong_00"
    case annakiSplattershotNova = "Shooter_QuickLong_01"
    case nzap85 = "Shooter_QuickMiddle_00"
    case nzap89 = "Shooter_QuickMiddle_01"
    case splooshomatic = "Shooter_Short_00"
    case neoSplooshomatic = "Shooter_Short_01"
    case l3Nozzlenose = "Shooter_TripleMiddle_00"
    case l3NozzlenoseD = "Shooter_TripleMiddle_01"
    case h3Nozzlenose = "Shooter_TripleQuick_00"
    case h3NozzlenoseD = "Shooter_TripleQuick_01"
    
    // MARK: Sloshers
    case bloblobber = "Slosher_Bathtub_00"
    case bloblobberDeco = "Slosher_Bathtub_01"
    case triSlosher = "Slosher_Diffusion_00"
    case triSlosherNouveau = "Slosher_Diffusion_01"
    case dreadWringer = "Slosher_Double_00"
    case sloshingMachine = "Slosher_Launcher_00"
    case sloshingMachineNeo = "Slosher_Launcher_01"
    case slosher = "Slosher_Strong_00"
    case slosherDeco = "Slosher_Strong_01"
    case explosher = "Slosher_Washtub_00"

    // MARK: Splatlings
    case ballpointSplatling = "Spinner_Downpour_00"
    case ballpointSplatlingNouveau = "Spinner_Downpour_01"
    case heavyEditSplatling = "Spinner_HyperShort_00"
    case hydraSplatling = "Spinner_Hyper_00"
    case miniSplatling = "Spinner_Quick_00"
    case zinkMiniSplatling = "Spinner_Quick_01"
    case nautilus47 = "Spinner_Serein_00"
    case heavySplatling = "Spinner_Standard_00"
    case heavySplatlingDeco = "Spinner_Standard_01"
    
    // MARK: Stringer
    case triStringer = "Stringer_Normal_00"
    case inklineTriStringer = "Stringer_Normal_01"
    case reeflux450 = "Stringer_Short_00"
    case reeflux450Deco = "Stringer_Short_01"
    
    public var type: WeaponClass {
        switch self {
        case .rapidBlasterPro, .rapidBlasterProDeco, .clashBlaster, .clashBlasterNeo, .rapidBlaster, .rapidBlasterDeco, .rangeBlaster, .blaster, .customBlaster, .sblast91, .sblast92, .lunaBlaster, .lunaBlasterNeo:
            return .blaster
            
        case .painbrush, .painbrushNouveau, .inkbrush, .inkbrushNouveau, .octobrush, .octobrushNouveau:
            return .brush
            
        case .gooTuber, .customGooTuber, .bamboozler14Mk1, .eliter4K, .eliter4KScope, .splatterscope, .zfSplatterscope, .splatCharger, .zfSplatCharger, .snipewriter5H, .snipewriter5B, .classicSquiffer:
            return .charger
            
        case .dualieSquelchers, .customDualieSquelchers, .gloogaDualies, .splatDualies, .enperrySplatDualies, .dappleDualies, .dappleDualiesNouveau, .darkTetraDualies, .lightTetraDualies:
            return .dualie
            
        case .carbonRoller, .carbonRollerDeco, .dynamoRoller, .goldDynamoRoller, .flingzaRoller, .splatRoller, .krakOnSplatRoller, .bigSwigRoller, .bigSwigRollerExpress:
            return .roller
            
        case .splatanaWiper, .splatanaWiperDeco, .splatanaStamper, .neoSplatanaStamper:
            return .splatana
            
        case .undercoverBrella, .undercoverSorellaBrella, .splatBrella, .sorellaBrella, .tentaBrella, .tentaSorellaBrella:
            return .brella
            
        case .aerosprayMG, .aerosprayRG, .splattershotPro, .forgeSplattershotPro, .splattershotJr, .customSplattershotJr, .squeezer, .foilSqueezer, ._52Gal, ._96Gal, ._96GalDeco, .jetSquelcher, .customJetSquelcher, .splattershot, .tentatekSplattershot, .heroShot, .splashomatic, .neoSplashomatic, .splattershotNova, .annakiSplattershotNova, .nzap85, .nzap89, .splooshomatic, .neoSplooshomatic, .l3Nozzlenose, .l3NozzlenoseD, .h3Nozzlenose, .h3NozzlenoseD:
            return .shooter
            
        case .bloblobber, .bloblobberDeco, .triSlosher, .triSlosherNouveau, .dreadWringer, .sloshingMachine, .sloshingMachineNeo, .slosher, .slosherDeco, .explosher:
            return .slosher
            
        case .ballpointSplatling, .ballpointSplatlingNouveau, .heavyEditSplatling, .hydraSplatling, .miniSplatling, .zinkMiniSplatling, .nautilus47, .heavySplatling, .heavySplatlingDeco:
            return .splatling
            
        case .triStringer, .inklineTriStringer, .reeflux450, .reeflux450Deco:
            return .stringer
        }
    }
    
    public var id: UUID {
        return UUID()
    }
    
    #if os(macOS)
    public var image: NSImage? {
        return NSImage(named: "Path_Wst_\(self.rawValue).png")
    }
    #else
    public var image: UIImage? {
        guard let url = Bundle.module.url(forResource: "Path_Wst_\(self.rawValue)", withExtension: "png") else {
            return nil
        }
        
        guard let data = try? Data(contentsOf: url) else {
            return nil
        }
        
        return UIImage(data: data)
    }
    #endif
    
    func fileName() -> String {
        let split = self.rawValue.split(separator: "_")
        return String(split[0] + split[1])
    }
    
    static func getWeapons(for type: WeaponClass) -> [MainWeapon] {
        return MainWeapon.allCases.filter { $0.type == type }
            .sorted(by: { $0.rawValue < $1.rawValue })
    }
}

public enum WeaponClass: String, CaseIterable {
    case blaster = "Blasters"
    case brush = "Brushes"
    case charger = "Chargers"
    case dualie = "Dualies"
    case roller = "Rollers"
    case splatana = "Splatanas"
    case brella = "Brellas"
    case shooter = "Shooters"
    case slosher = "Sloshers"
    case splatling = "Splatlings"
    case stringer = "Stringers"
    
    #if os(macOS)
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
}
