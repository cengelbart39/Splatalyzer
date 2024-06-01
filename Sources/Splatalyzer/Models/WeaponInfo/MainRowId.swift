//
//  MainRowId.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

public enum MainRowId: String, CaseIterable, Codable {
    // MARK: Blasters
    case grizzcoBlaster = "Blaster_Bear_Coop"
        
    case rapidBlasterPro = "Blaster_LightLong_00"
    case rapidBlasterProDeco = "Blaster_LightLong_01"
    case rapidBlasterProCoop = "Blaster_LightLong_Coop"
    case rapidBlasterProMsn = "Blaster_LightLong_Msn"
    
    case clashBlaster = "Blaster_LightShort_00"
    case clashBlasterNeo = "Blaster_LightShort_01"
    case clashBlasterCoop = "Blaster_LightShort_Coop"
    case clashBlasterMsn = "Blaster_LightShort_Msn"
    
    case rapidBlaster = "Blaster_Light_00"
    case rapidBlasterDeco = "Blaster_Light_01"
    case rapidBlasterCoop = "Blaster_Light_Coop"
    case rapidBlasterMsn = "Blaster_Light_Msn"
    
    case rangeBlaster = "Blaster_Long_00"
    case customRangeBlaster = "Blaster_Long_01"
    case rangeBlasterCoop = "Blaster_Long_Coop"
    case rangeBlasterMsn = "Blaster_Long_Msn"
    
    case blaster = "Blaster_Middle_00"
    case customBlaster = "Blaster_Middle_01"
    case blasterCoop = "Blaster_Middle_Coop"
    case blasterMsn = "Blaster_Middle_Msn"
    
    case sblast92 = "Blaster_Precision_00"
    case sblast91 = "Blaster_Precision_01"
    case sblast92Coop = "Blaster_Precision_Coop"
    
    case blasterRivalLv1 = "Blaster_RivalLv1_00"
    case blasterRivalLv2 = "Blaster_RivalLv2_00"
    
    case lunaBlaster = "Blaster_Short_00"
    case lunaBlasterNeo = "Blaster_Short_01"
    case orderBlasterReplica = "Blaster_Short_O"
    case lunaBlasterCoop = "Blaster_Short_Coop"
    case lunaBlasterMsn = "Blaster_Short_Msn"
    
    case blasterSdodr = "Blaster_ExtraOne_Sdodr"
    
    // MARK: Brushes
    case painbrush = "Brush_Heavy_00"
    case painbrushNouveau = "Brush_Heavy_01"
    case painbrushCoop = "Brush_Heavy_Coop"
    
    case inkbrush = "Brush_Mini_00"
    case inkbrushNouveau = "Brush_Mini_01"
    case inkbrushCoop = "Brush_Mini_Coop"
    case inkbrushMsn = "Brush_Mini_Msn"
    
    case octobrush = "Brush_Normal_00"
    case octobrushNouveau = "Brush_Normal_01"
    case orderbrushReplica = "Brush_Normal_O"
    case octobrushCoop = "Brush_Normal_Coop"
    case octobrushMsn = "Brush_Normal_Msn"
    
    case brushRivalLv1 = "Brush_RivalLv1_00"
    case brushRivalLv2 = "Brush_RivalLv2_00"
    
    case brushSdodr = "Brush_Sdodr"
    
    // MARK: Chargers
    case grizzcoCharger = "Charger_Bear_Coop"
    
    case gooTuber = "Charger_Keeper_00"
    case customGooTuber = "Charger_Keeper_01"
    case gooTuberCoop = "Charger_Keeper_Coop"
    case gooTuberMsn = "Charger_Keeper_Msn"
    
    case bamboozler14Mk1 = "Charger_Light_00"
    case bamboozler14MkII = "Charger_Light_01"
    case bamboozler14Mk1Coop = "Charger_Light_Coop"
    case bamboozler14Mk1Msn = "Charger_Light_Msn"
    
    case eliter4KScope = "Charger_LongScope_00"
    case customEliter4KScope = "Charger_LongScope_01"
    case eliter4KScopeMsn = "Charger_LongScope_Msn"
    
    case eliter4K = "Charger_Long_00"
    case customEliter4K = "Charger_Long_01"
    case eliter4KAMB = "Charger_Long_00_AMB"
    case eliter4KCoop = "Charger_Long_Coop"
    case eliter4KMsn = "Charger_Long_Msn"
    
    case splatterscope = "Charger_NormalScope_00"
    case zfSplatterscope = "Charger_NormalScope_01"
    case splatterscopeMsn = "Charger_NormalScope_Msn"
    
    case splatCharger = "Charger_Normal_00"
    case zfSplatCharger = "Charger_Normal_01"
    case orderChargerReplica = "Charger_Normal_O"
    case splatChargerCoop = "Charger_Normal_Coop"
    case splatChargerMsn = "Charger_Normal_Msn"
    
    case snipewriter5H = "Charger_Pencil_00"
    case snipewriter5B = "Charger_Pencil_01"
    case snipewriter5HCoop = "Charger_Pencil_Coop"
    
    case classicSquiffer = "Charger_Quick_00"
    case newSquiffer = "Charger_Quick_01"
    case classicSquifferCoop = "Charger_Quick_Coop"
    case classicSquifferMsn = "Charger_Quick_Msn"
    
    case chargerSdodr = "Charger_ExtraOne_Sdodr"
    
    // MARK: Free
    case free = "Free"
    
    // MARK: Dualies
    case grizzcoDualies = "Maneuver_Bear_Coop"
    
    case dualieSquelchers = "Maneuver_Dual_00"
    case customDualieSquelchers = "Maneuver_Dual_01"
    case dualieSquelchersCoop = "Maneuver_Dual_Coop"
    case dualieSquelchersMsn = "Maneuver_Dual_Msn"
    
    case gloogaDualies = "Maneuver_Gallon_00"
    case gloogaDualiesDeco = "Maneuver_Gallon_01"
    case gloogaDualiesCoop = "Maneuver_Gallon_Coop"
    case gloogaDualiesMsn = "Maneuver_Gallon_Msn"
    
    case douserDualiesFF = "Maneuver_Long_00"
    case customDouserDualiesFF = "Maneuver_Long_01"
    case douserDualiesFFCoop = "Maneuver_Long_Coop"
    
    case splatDualies = "Maneuver_Normal_00"
    case enperrySplatDualies = "Maneuver_Normal_01"
    case orderDualiesReplica = "Maneuver_Normal_O"
    case splatDualiesCoop = "Maneuver_Normal_Coop"
    case splatDualiesMsn = "Maneuver_Normal_Msn"
    
    case maneuverRivalLv1 = "Maneuver_RivalLv1_00"
    case maneuverRivalLv2 = "Maneuver_RivalLv2_00"
    
    case dappleDualies = "Maneuver_Short_00"
    case dappleDualiesNouveau = "Maneuver_Short_01"
    case dappleDualiesCoop = "Maneuver_Short_Coop"
    case dappleDualiesMsn = "Maneuver_Short_Msn"
    
    case darkTetraDualies = "Maneuver_Stepper_00"
    case lightTetraDualies = "Maneuver_Stepper_01"
    case darkTetraDualiesCoop = "Maneuver_Stepper_Coop"
    case darkTetraDualiesMsn = "Maneuver_Stepper_Msn"
    
    case dualiesSdodr = "Maneuver_Sdodr"
    
    // MARK: Rollers
    case grizzcoRoller = "Roller_Bear_Coop"
    
    case carbonRoller = "Roller_Compact_00"
    case carbonRollerDeco = "Roller_Compact_01"
    case carbonRollerCoop = "Roller_Compact_Coop"
    case carbonRollerMsn = "Roller_Compact_Msn"
    
    case dynamoRoller = "Roller_Heavy_00"
    case goldDynamoRoller = "Roller_Heavy_01"
    case dynamoRollerCoop = "Roller_Heavy_Coop"
    case dynamoRollerMsn = "Roller_Heavy_Msn"
    
    case flingzaRoller = "Roller_Hunter_00"
    case foilFlingzaRoller = "Roller_Hunter_01"
    case flingzaRollerCoop = "Roller_Hunter_Coop"
    case flingzaRollerMsn = "Roller_Hunter_Msn"
    
    case splatRoller = "Roller_Normal_00"
    case krakOnSplatRoller = "Roller_Normal_01"
    case orderRollerReplica = "Roller_Normal_O"
    case splatRollerCoop = "Roller_Normal_Coop"
    case splatRollerMsn = "Roller_Normal_Msn"
    
    case rollerRivalLv1 = "Roller_RivalLv1_00"
    case rollerRivalLv2 = "Roller_RivalLv2_00"
    
    case bigSwigRoller = "Roller_Wide_00"
    case bigSwigRollerExpress = "Roller_Wide_01"
    case bigSwigRollerCoop = "Roller_Wide_Coop"
    
    case rollerSdodr = "Roller_Sdodr"
    
    // MARK: Splatanas
    case grizzcoSplatana = "Saber_Bear_Coop"
    
    case splatanaWiper = "Saber_Lite_00"
    case splatanaWiperDeco = "Saber_Lite_01"
    case splatanaWiperCoop = "Saber_Lite_Coop"
    case splatanaWiperMsn = "Saber_Lite_Msn"
    
    case splatanaStamper = "Saber_Normal_00"
    case splatanaStamperNouveau = "Saber_Normal_01"
    case orderSplatanaReplica = "Saber_Normal_O"
    case splatanaStamperCoop = "Saber_Normal_Coop"
    case splatanaStamperMsn = "Saber_Normal_Msn"
    
    case mintDecavitator = "Saber_Heavy_00"
    case charcoalDecavitator = "Saber_Heavy_01"
    case mintDecavitatorCoop = "Saber_Heavy_Coop"
    
    case splatanaSdodr = "Saber_Sdodr"
    
    // MARK: Brellas
    case grizzcoBrella = "Shelter_Bear_Coop"
    
    case undercoverBrella = "Shelter_Compact_00"
    case undercoverSorellaBrella = "Shelter_Compact_01"
    case undercoverBrellaCoop = "Shelter_Compact_Coop"
    case undercoverBrellaMsn = "Shelter_Compact_Msn"
    
    case recycledBrella24MkI = "Shelter_Focus_00"
    case recycledBrella24MkII = "Shelter_Focus_01"
    case recycledBrella24MkICoop = "Shelter_Focus_Coop"
    
    case splatBrella = "Shelter_Normal_00"
    case sorellaBrella = "Shelter_Normal_01"
    case orderBrellaReplica = "Shelter_Normal_O"
    case splatBrellaCoop = "Shelter_Normal_Coop"
    case splatBrellaMsn = "Shelter_Normal_Msn"
    
    case shelterRivalLv1 = "Shelter_RivalLv1_00"
    case shelterRivalLv2 = "Shelter_RivalLv2_00"
    
    case tentaBrella = "Shelter_Wide_00"
    case tentaSorellaBrella = "Shelter_Wide_01"
    case tentaBrellaCoop = "Shelter_Wide_Coop"
    case tentaBrellaMsn = "Shelter_Wide_Msn"
    
    case brellaSdodr = "Shelter_Sdodr"
    
    // MARK: Shooters
    case aerosprayMG = "Shooter_Blaze_00"
    case aerosprayRG = "Shooter_Blaze_01"
    case aerosprayMGCoop = "Shooter_Blaze_Coop"
    case aerosprayMGMsn = "Shooter_Blaze_Msn"
    
    case splattershotPro = "Shooter_Expert_00"
    case forgeSplattershotPro = "Shooter_Expert_01"
    case splattershotProCoop = "Shooter_Expert_Coop"
    case splattershotProMsn = "Shooter_Expert_Msn"
    
    case splattershotJr = "Shooter_First_00"
    case customSplattershotJr = "Shooter_First_01"
    case splattershotJrCoop = "Shooter_First_Coop"
    case splattershotJrMsn = "Shooter_First_Msn"
    
    case squeezer = "Shooter_Flash_00"
    case foilSqueezer = "Shooter_Flash_01"
    case squeezerCoop = "Shooter_Flash_Coop"
    case squeezerMsn = "Shooter_Flash_Msn"
    
    case _52Gal = "Shooter_Gravity_00"
    case _52GalDeco = "Shooter_Gravity_01"
    case _52GalCoop = "Shooter_Gravity_Coop"
    case _52GalMsn = "Shooter_Gravity_Msn"
    
    case _96Gal = "Shooter_Heavy_00"
    case _96GalDeco = "Shooter_Heavy_01"
    case _96GalCoop = "Shooter_Heavy_Coop"
    case _96GalMsn = "Shooter_Heavy_Msn"
    
    case jetSquelcher = "Shooter_Long_00"
    case customJetSquelcher = "Shooter_Long_01"
    case jetSquelcherCoop = "Shooter_Long_Coop"
    case jetSquelcherMsn = "Shooter_Long_Msn"
    
    case heroShotMsnLv1 = "Shooter_MissionLv1_00"
    case heroShotMsnLv2 = "Shooter_MissionLv2_00"
    case heroShotMsnLv3 = "Shooter_MissionLv3_00"
    
    case splattershot = "Shooter_Normal_00"
    case splattershotAMB1 = "Shooter_Normal_00_AMB_1"
    case splattershotAMB2 = "Shooter_Normal_00_AMB_2"
    case tentatekSplattershot = "Shooter_Normal_01"
    case tentatekSplattershotAMB1 = "Shooter_Normal_01_AMB_1"
    case orderShotReplica = "Shooter_Normal_O"
    case octoShotReplica = "Shooter_Normal_Oct"
    case splattershotCoop = "Shooter_Normal_Coop"
    case heroShot = "Shooter_Normal_H"
    case splattershotMsn = "Shooter_Normal_Msn"
    
    case splashomatic = "Shooter_Precision_00"
    case neoSplashomatic = "Shooter_Precision_01"
    case splashomaticCoop = "Shooter_Precision_Coop"
    case splashomaticMsn = "Shooter_Precision_Msn"
    
    case splattershotNova = "Shooter_QuickLong_00"
    case annakiSplattershotNova = "Shooter_QuickLong_01"
    case splattershotNovaCoop = "Shooter_QuickLong_Coop"
    
    case nzap85 = "Shooter_QuickMiddle_00"
    case nzap89 = "Shooter_QuickMiddle_01"
    case nzap85Coop = "Shooter_QuickMiddle_Coop"
    case nzap85Msn = "Shooter_QuickMiddle_Msn"
    
    case shooterRivalLv1 = "Shooter_RivalLv1_00"
    case shooterRivalLv2 = "Shooter_RivalLv2_00"
    
    case splooshomatic = "Shooter_Short_00"
    case neoSplooshomatic = "Shooter_Short_01"
    case splooshomaticCoop = "Shooter_Short_Coop"
    case splooshomaticMsn = "Shooter_Short_Msn"
    
    case h3Nozzlenose = "Shooter_TripleMiddle_00"
    case h3NozzlenoseD = "Shooter_TripleMiddle_01"
    case h3NozzlenoseCoop = "Shooter_TripleMiddle_Coop"
    case h3NozzlenoseMsn = "Shooter_TripleMiddle_Msn"
    
    case l3Nozzlenose = "Shooter_TripleQuick_00"
    case l3NozzlenoseD = "Shooter_TripleQuick_01"
    case l3NozzlenoseCoop = "Shooter_TripleQuick_Coop"
    case l3NozzlenoseMsn = "Shooter_TripleQuick_Msn"
    
    case shooterSdodr1 = "Shooter_ExtraOne_Sdodr"
    case shooterSdodr2 = "Shooter_ExtraTwo_Sdodr"
    
    // MARK: Slosher
    case bloblobber = "Slosher_Bathtub_00"
    case bloblobberDeco = "Slosher_Bathtub_01"
    case bloblobberCoop = "Slosher_Bathtub_Coop"
    case bloblobberMsn = "Slosher_Bathtub_Msn"
    
    case grizzcoSlosher = "Slosher_Bear_Coop"
    
    case triSlosher = "Slosher_Diffusion_00"
    case triSlosherNouveau = "Slosher_Diffusion_01"
    case triSlosherCoop = "Slosher_Diffusion_Coop"
    case triSlosherMsn = "Slosher_Diffusion_Msn"
    
    case dreadWringer = "Slosher_Double_00"
    case dreadWringerD = "Slosher_Double_01"
    case dreadWringerCoop = "Slosher_Double_Coop"
    
    case sloshingMachine = "Slosher_Launcher_00"
    case sloshingMachineNeo = "Slosher_Launcher_01"
    case sloshingMachineCoop = "Slosher_Launcher_Coop"
    case sloshingMachineMsn = "Slosher_Launcher_Msn"
    
    case slosherRivalLv1 = "Slosher_RivalLv1_00"
    case slosherRivalLv2 = "Slosher_RivalLv2_00"
    
    case slosher = "Slosher_Strong_00"
    case slosherDeco = "Slosher_Strong_01"
    case orderSlosherReplica = "Slosher_Strong_O"
    case slosherCoop = "Slosher_Strong_Coop"
    case slosherMsn = "Slosher_Strong_Msn"
    
    case explosher = "Slosher_Washtub_00"
    case customExplosher = "Slosher_Washtub_01"
    case explosherCoop = "Slosher_Washtub_Coop"
    case explosherMsn = "Slosher_Washtub_Msn"
    
    case slosherSdodr = "Slosher_Sdodr"
    
    // MARK: Splatlings
    case ballpointSplatling = "Spinner_Downpour_00"
    case ballpointSplatlingNouveau = "Spinner_Downpour_01"
    case ballpointSplatlingCoop = "Spinner_Downpour_Coop"
    case ballpointSplatlingMsn = "Spinner_Downpour_Msn"
    
    case heavyEditSplatling = "Spinner_HyperShort_00"
    case heavyEditSplatlingNouveau = "Spinner_HyperShort_01"
    case heavyEditSplatlingCoop = "Spinner_HyperShort_Coop"
    
    case hydraSplatling = "Spinner_Hyper_00"
    case customHydraSplatling = "Spinner_Hyper_01"
    case hydraSplatlingCoop = "Spinner_Hyper_Coop"
    case hydraSplatlingMsn = "Spinner_Hyper_Msn"
    
    case miniSplatling = "Spinner_Quick_00"
    case zinkMiniSplatling = "Spinner_Quick_01"
    case miniSplatlingCoop = "Spinner_Quick_Coop"
    case miniSplatlingMsn = "Spinner_Quick_Msn"
    
    case nautilus47 = "Spinner_Serein_00"
    case nautilus79 = "Spinner_Serein_01"
    case nautilus47Coop = "Spinner_Serein_Coop"
    case nautilus47Msn = "Spinner_Serein_Msn"
    
    case heavySplatling = "Spinner_Standard_00"
    case heavySplatlingDeco = "Spinner_Standard_01"
    case orderSplatlingReplica = "Spinner_Standard_O"
    case heavySplatlingCoop = "Spinner_Standard_Coop"
    case heavySplatlingMsn = "Spinner_Standard_Msn"
    
    case splatlingSdodr = "Spinner_Sdodr"
    
    // MARK: Stringer
    case grizzcoStringer = "Stringer_Bear_Coop"
    
    case triStringer = "Stringer_Normal_00"
    case inklineTriStringer = "Stringer_Normal_01"
    case orderStringerReplica = "Stringer_Normal_O"
    case triStringerCoop = "Stringer_Normal_Coop"
    case triStringerMsn = "Stringer_Normal_Msn"
    
    case reeflux450 = "Stringer_Short_00"
    case reeflux450Deco = "Stringer_Short_01"
    case reeflux450Coop = "Stringer_Short_Coop"
    
    case wellspringV = "Stringer_Explosion_00"
    case customWellspringV = "Stringer_Explosion_01"
    case wellspringVCoop = "Stringer_Explosion_Coop"
    
    case stringerSdodr = "Stringer_Sdodr"
}

extension MainRowId {
    static public func versusIds() -> [MainRowId] {
        return MainRowId.allCases.filter {
            !$0.rawValue.contains("Coop") && !$0.rawValue.contains("Msn") && !$0.rawValue.contains("AMB") && !$0.rawValue.contains("Rival")
        }
    }
}
