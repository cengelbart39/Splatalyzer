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

/// Represents every Main Weapon (including alternate kits).
public enum MainWeapon: String, CaseIterable, Codable, Identifiable, Sendable {
    // MARK: Blasters
    case rapidBlasterPro = "Blaster_LightLong_00"
    case rapidBlasterProDeco = "Blaster_LightLong_01"
    case clashBlaster = "Blaster_LightShort_00"
    case clashBlasterNeo = "Blaster_LightShort_01"
    case rapidBlaster = "Blaster_Light_00"
    case rapidBlasterDeco = "Blaster_Light_01"
    case rangeBlaster = "Blaster_Long_00"
    case customRangeBlaster = "Blaster_Long_01"
    case blaster = "Blaster_Middle_00"
    case customBlaster = "Blaster_Middle_01"
    case sblast92 = "Blaster_Precision_00"
    case sblast91 = "Blaster_Precision_01"
    case lunaBlaster = "Blaster_Short_00"
    case lunaBlasterNeo = "Blaster_Short_01"
    case orderBlasterReplica = "Blaster_Short_O"
    
    // MARK: Brushes
    case painbrush = "Brush_Heavy_00"
    case painbrushNouveau = "Brush_Heavy_01"
    case inkbrush = "Brush_Mini_00"
    case inkbrushNouveau = "Brush_Mini_01"
    case octobrush = "Brush_Normal_00"
    case octobrushNouveau = "Brush_Normal_01"
    case orderbrushReplica = "Brush_Normal_O"
    
    // MARK: Chargers
    case gooTuber = "Charger_Keeper_00"
    case customGooTuber = "Charger_Keeper_01"
    case bamboozler14MkI = "Charger_Light_00"
    case bamboozler14MkII = "Charger_Light_01"
    case eliter4KScope = "Charger_LongScope_00"
    case customEliter4KScope = "Charger_LongScope_01"
    case eliter4K = "Charger_Long_00"
    case customEliter4K = "Charger_Long_01"
    case splatterscope = "Charger_NormalScope_00"
    case zfSplatterscope = "Charger_NormalScope_01"
    case splatCharger = "Charger_Normal_00"
    case zfSplatCharger = "Charger_Normal_01"
    case orderChargerReplica = "Charger_Normal_O"
    case snipewriter5H = "Charger_Pencil_00"
    case snipewriter5B = "Charger_Pencil_01"
    case classicSquiffer = "Charger_Quick_00"
    case newSquiffer = "Charger_Quick_01"
    
    // MARK: Dualies
    case dualieSquelchers = "Maneuver_Dual_00"
    case customDualieSquelchers = "Maneuver_Dual_01"
    case gloogaDualies = "Maneuver_Gallon_00"
    case gloogaDualiesDeco = "Maneuver_Gallon_01"
    case douserDualiesFF = "Maneuver_Long_00"
    case customDouserDualiesFF = "Maneuver_Long_01"
    case splatDualies = "Maneuver_Normal_00"
    case enperrySplatDualies = "Maneuver_Normal_01"
    case orderDualiesReplica = "Maneuver_Normal_O"
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
    case foilFlingzaRoller = "Roller_Hunter_01"
    case splatRoller = "Roller_Normal_00"
    case krakOnSplatRoller = "Roller_Normal_01"
    case orderRollerReplica = "Roller_Normal_O"
    case bigSwigRoller = "Roller_Wide_00"
    case bigSwigRollerExpress = "Roller_Wide_01"
    
    // MARK: Splatanas
    case mintDecavitator = "Saber_Heavy_00"
    case charcoalDecavitator = "Saber_Heavy_01"
    case splatanaWiper = "Saber_Lite_00"
    case splatanaWiperDeco = "Saber_Lite_01"
    case splatanaStamper = "Saber_Normal_00"
    case splatanaStamperNouveau = "Saber_Normal_01"
    case orderSplatanaReplica = "Saber_Normal_O"

    // MARK: Brellas
    case undercoverBrella = "Shelter_Compact_00"
    case undercoverSorellaBrella = "Shelter_Compact_01"
    case recycledBrella24MkI = "Shelter_Focus_00"
    case recycledBrella24MkII = "Shelter_Focus_01"
    case splatBrella = "Shelter_Normal_00"
    case sorellaBrella = "Shelter_Normal_01"
    case orderBrellaReplica = "Shelter_Normal_O"
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
    /// Refers to .52 Gal
    case gal52 = "Shooter_Gravity_00"
    /// Refers to .52 Gal Deco
    case gal52Deco = "Shooter_Gravity_01"
    /// Refers to .96 Gal
    case gal96 = "Shooter_Heavy_00"
    /// Refers to .96 Gal Deco
    case gal96Deco = "Shooter_Heavy_01"
    case jetSquelcher = "Shooter_Long_00"
    case customJetSquelcher = "Shooter_Long_01"
    case splattershot = "Shooter_Normal_00"
    case tentatekSplattershot = "Shooter_Normal_01"
    case heroShotReplica = "Shooter_Normal_H"
    case orderShotReplica = "Shooter_Normal_O"
    case octoShotReplica = "Shooter_Normal_Oct"
    case splashomatic = "Shooter_Precision_00"
    case neoSplashomatic = "Shooter_Precision_01"
    case splattershotNova = "Shooter_QuickLong_00"
    case annakiSplattershotNova = "Shooter_QuickLong_01"
    case nzap85 = "Shooter_QuickMiddle_00"
    case nzap89 = "Shooter_QuickMiddle_01"
    case splooshomatic = "Shooter_Short_00"
    case neoSplooshomatic = "Shooter_Short_01"
    case h3Nozzlenose = "Shooter_TripleMiddle_00"
    case h3NozzlenoseD = "Shooter_TripleMiddle_01"
    case l3Nozzlenose = "Shooter_TripleQuick_00"
    case l3NozzlenoseD = "Shooter_TripleQuick_01"
    
    // MARK: Sloshers
    case bloblobber = "Slosher_Bathtub_00"
    case bloblobberDeco = "Slosher_Bathtub_01"
    case triSlosher = "Slosher_Diffusion_00"
    case triSlosherNouveau = "Slosher_Diffusion_01"
    case dreadWringer = "Slosher_Double_00"
    case dreadWringerD = "Slosher_Double_01"
    case sloshingMachine = "Slosher_Launcher_00"
    case sloshingMachineNeo = "Slosher_Launcher_01"
    case slosher = "Slosher_Strong_00"
    case slosherDeco = "Slosher_Strong_01"
    case orderSlosherReplica = "Slosher_Strong_O"
    case explosher = "Slosher_Washtub_00"
    case customExplosher = "Slosher_Washtub_01"

    // MARK: Splatlings
    case ballpointSplatling = "Spinner_Downpour_00"
    case ballpointSplatlingNouveau = "Spinner_Downpour_01"
    case heavyEditSplatling = "Spinner_HyperShort_00"
    case heavyEditSplatlingNouveau = "Spinner_HyperShort_01"
    case hydraSplatling = "Spinner_Hyper_00"
    case customHydraSplatling = "Spinner_Hyper_01"
    case miniSplatling = "Spinner_Quick_00"
    case zinkMiniSplatling = "Spinner_Quick_01"
    case nautilus47 = "Spinner_Serein_00"
    case nautilus79 = "Spinner_Serein_01"
    case heavySplatling = "Spinner_Standard_00"
    case heavySplatlingDeco = "Spinner_Standard_01"
    case orderSplatlingReplica = "Spinner_Standard_O"
    
    // MARK: Stringer
    case wellspringV = "Stringer_Explosion_00"
    case customWellspringV = "Stringer_Explosion_01"
    case triStringer = "Stringer_Normal_00"
    case inklineTriStringer = "Stringer_Normal_01"
    case orderStringerReplica = "Stringer_Normal_O"
    case reeflux450 = "Stringer_Short_00"
    case reeflux450Deco = "Stringer_Short_01"
    
    /// The weapon class associated with the main weapon
    public var type: WeaponClass {
        switch self {
        case .rapidBlasterPro, .rapidBlasterProDeco, .clashBlaster, .clashBlasterNeo, .rapidBlaster, .rapidBlasterDeco, .rangeBlaster, .customRangeBlaster, .blaster, .customBlaster, .sblast91, .sblast92, .lunaBlaster, .lunaBlasterNeo, .orderBlasterReplica:
            return .blaster
            
        case .painbrush, .painbrushNouveau, .inkbrush, .inkbrushNouveau, .octobrush, .octobrushNouveau, .orderbrushReplica:
            return .brush
            
        case .gooTuber, .customGooTuber, .bamboozler14MkI, .bamboozler14MkII, .eliter4K, .customEliter4K, .eliter4KScope, .customEliter4KScope, .splatterscope, .zfSplatterscope, .splatCharger, .zfSplatCharger, .orderChargerReplica, .snipewriter5H, .snipewriter5B, .classicSquiffer, .newSquiffer:
            return .charger
            
        case .dualieSquelchers, .customDualieSquelchers, .gloogaDualies, .gloogaDualiesDeco, .douserDualiesFF, .customDouserDualiesFF, .splatDualies, .enperrySplatDualies, .orderDualiesReplica, .dappleDualies, .dappleDualiesNouveau, .darkTetraDualies, .lightTetraDualies:
            return .dualie
            
        case .carbonRoller, .carbonRollerDeco, .dynamoRoller, .goldDynamoRoller, .flingzaRoller, .foilFlingzaRoller, .splatRoller, .krakOnSplatRoller, .orderRollerReplica, .bigSwigRoller, .bigSwigRollerExpress:
            return .roller
            
        case .mintDecavitator, .charcoalDecavitator, .splatanaWiper, .splatanaWiperDeco, .splatanaStamper, .splatanaStamperNouveau, .orderSplatanaReplica:
            return .splatana
            
        case .undercoverBrella, .undercoverSorellaBrella, .recycledBrella24MkI, .recycledBrella24MkII, .splatBrella, .sorellaBrella, .orderBrellaReplica, .tentaBrella, .tentaSorellaBrella:
            return .brella
            
        case .aerosprayMG, .aerosprayRG, .splattershotPro, .forgeSplattershotPro, .splattershotJr, .customSplattershotJr, .squeezer, .foilSqueezer, .gal52, .gal52Deco, .gal96, .gal96Deco, .jetSquelcher, .customJetSquelcher, .splattershot, .tentatekSplattershot, .heroShotReplica, .orderShotReplica, .octoShotReplica, .splashomatic, .neoSplashomatic, .splattershotNova, .annakiSplattershotNova, .nzap85, .nzap89, .splooshomatic, .neoSplooshomatic, .l3Nozzlenose, .l3NozzlenoseD, .h3Nozzlenose, .h3NozzlenoseD:
            return .shooter
            
        case .bloblobber, .bloblobberDeco, .triSlosher, .triSlosherNouveau, .dreadWringer, .dreadWringerD, .sloshingMachine, .sloshingMachineNeo, .slosher, .slosherDeco, .orderSlosherReplica, .explosher, .customExplosher:
            return .slosher
            
        case .ballpointSplatling, .ballpointSplatlingNouveau, .heavyEditSplatling, .heavyEditSplatlingNouveau, .hydraSplatling, .customHydraSplatling, .miniSplatling, .zinkMiniSplatling, .nautilus47, .nautilus79, .heavySplatling, .heavySplatlingDeco, .orderSplatlingReplica:
            return .splatling
            
        case .wellspringV, .customWellspringV, .triStringer, .inklineTriStringer, .orderStringerReplica, .reeflux450, .reeflux450Deco:
            return .stringer
        }
    }
    
    public var id: UUID {
        return UUID()
    }
    
    #if os(macOS)
    /// The image of the current main weapon
    /// - Note: OSes other than `macOS` use `UIImage` instead
    public var image: NSImage? {
        guard let url = Bundle.module.url(forResource: "Path_Wst_\(self.rawValue)", withExtension: "png") else {
            return nil
        }
        
        guard let data = try? Data(contentsOf: url) else {
            return nil
        }
        
        return NSImage(data: data)
    }
    #else
    /// The image of the current main weapon
    /// - Note: `macOS` use `NSImage` instead
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
    
    /// The localized name of the main weapon.
    public var localized: String {
        return NSLocalizedString(self.rawValue, tableName: "MainWeapon",  bundle: Bundle.module, comment: "")
    }
    
    /// Converts the raw value into a file name in relation to `.game__GameParameterTable.json` files.
    ///
    /// Say we want to decode the game parameters of Rapid Blaster Pro. It's raw value is `Blaster_LightLong_00`.
    ///
    /// It's file is `WeaponBlasterLightLong.game__GameParameterTable.json`.
    ///
    /// This function outputs `BlasterLightLong`, ignoring the right-most side (`_00`) and removing the left underscore.
    func fileName() -> String {
        let split = self.rawValue.split(separator: "_")
        return String(split[0] + split[1])
    }
    
    
    /// Gets all main weapons of a ``WeaponClass``
    /// - Parameter type: Some main weapon class
    /// - Returns: All main weapons of `type`
    public static func getWeapons(of type: WeaponClass) -> [MainWeapon] {
        return MainWeapon.allCases
            .filter { $0.type == type }
            .sorted(by: { $0.rawValue < $1.rawValue })
    }
    
    public static func vanillaWeapons(of type: WeaponClass) -> [MainWeapon] {
        return MainWeapon.allCases
            .filter { $0.rawValue.hasSuffix("00") }
            .filter { $0.type == type }
            .sorted(by: { $0.rawValue < $1.rawValue })
    }
}
