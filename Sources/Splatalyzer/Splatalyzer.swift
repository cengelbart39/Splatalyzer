// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import Observation

/// Class that enables the analysis of gear builds into statistics
public final class Splatalyzer {

    public init() { }
    
    /// Analyzes the main weapon and gear build to produce build statistics.
    /// - Parameter build: Information about the current build: main weapon, gear, LDE intensity, and whether to consider Tacticooler effects
    /// - Throws: Can throw ``SplatalyzerError`` or ``JSONError``
    public func analyze(_ build: BuildOptions) throws -> BuildStats {
        guard build.isGearValid() else {
            throw SplatalyzerError.invalidGearConfig
        }
        
        guard build.isLDEIntensityValid() else {
            throw SplatalyzerError.invalidLDEIntensity
        }
                
        let mainData = try MainWeaponData(for: build.mainWeapon)
        
        var allSubData = [SubWeapon : SubWeaponData]()
        
        for sub in SubWeapon.allCases {
            let subData = try SubWeaponData(for: sub)
            allSubData[sub] = subData
        }
        
        let specialData = try SpecialWeaponData(for: mainData.specialWeapon)
        
        let stats = BuildStats(
            mainInfo: mainData,
            allSubInfo: allSubData,
            specialInfo: specialData,
            gearBuild: build.gear,
            ldeIntensity: build.ldeIntensity,
            usingTacticooler: build.usingTacticooler,
            usingFlowAura: build.usingFlowAura)
        
        return stats
    }
}

/// Errors that can be thrown by the ``Splatalyzer`` class
public enum SplatalyzerError: Error, LocalizedError {
    
    /// Gear abilities are configured in an invalid way
    case invalidGearConfig
    
    /// LDE intensity is not in `0...21`
    case invalidLDEIntensity
    
    public var errorDescription: String? {
        switch self {
        case .invalidGearConfig:
            return NSLocalizedString("Error: The gear build configuration is invalid.", comment: "")
            
        case .invalidLDEIntensity:
            return NSLocalizedString("Error: A Last-Ditch Effort intensity was passed in that was outside of the 0-21 range.", comment: "")
        }
    }
}
