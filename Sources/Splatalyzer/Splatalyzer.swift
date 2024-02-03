// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import Observation

/// Class that enables the analysis of gear builds into statistics
public final class Splatalyzer: ObservableObject {
    
    /// The stats produced by the class
    @Published public var stats: BuildStats? = nil
    
    /// The user's gear build
    @Published public var gearBuild = GearBuild()
    
    /// The selected main weapon
    @Published public var mainWeapon = MainWeapon.allCases.first!
    
    /// The selected Last-Ditch Effort Intensity
    @Published public var ldeIntensity = 0
    
    /// Whether Tacticooler effects should be considered in statistics
    @Published public var usingTacticooler = false
    
    private var weaponInfoMain: WeaponInfoMain? = nil
    private var playerParams: Player? = nil
    private var subData = [SubWeapon : SubWeaponData]()
    
    public init() { }
    
    /// Update statstics after a change in ``MainWeapon``
    public func updateStats(for weapon: MainWeapon) throws {
        DispatchQueue.main.async {
            self.mainWeapon = weapon
        }
        
        try self.analyze()
    }
    
    /// Update statstics after a change in ``GearBuild``
    public func updateStats(for gearBuild: GearBuild) throws {
        DispatchQueue.main.async {
            self.gearBuild = gearBuild
        }
        
        try self.analyze()
    }
    
    /// Update statstics after a change in LDE intensity
    public func updateStats(for ldeIntensity: Int) throws {
        DispatchQueue.main.async {
            self.ldeIntensity = ldeIntensity
        }
        
        try self.analyze()
    }
    
    /// Update statstics after a change in Tacticooler statis
    public func updateStats(for tacticooler: Bool) throws {
        DispatchQueue.main.async {
            self.usingTacticooler = tacticooler
        }
        
        try self.analyze()
    }
    
    /// Convenience analysis function using class properties
    /// - SeeAlso: This function is a convenience version of ``analyze(mainWeapon:gearBuild:ldeIntensity:usingTacticooler:)``
    /// - Throws: Can throw ``SplatalyzerError`` or ``JSONError``
    public func analyze() throws {
        try self.analyze(
            mainWeapon: self.mainWeapon,
            gearBuild: self.gearBuild,
            ldeIntensity: self.ldeIntensity,
            usingTacticooler: self.usingTacticooler)
    }
    
    /// Analyzes the main weapon and gear build to produce build statistics.
    /// - Parameters:
    ///   - mainWeapon: The current main weapon
    ///   - gearBuild: The current gear build
    ///   - ldeIntensity: The current LDE intensity
    ///   - usingTacticooler: Whether to consider Tacticooler effects in statistics
    /// - Throws: Can throw ``SplatalyzerError`` or ``JSONError``
    public func analyze(
        mainWeapon: MainWeapon,
        gearBuild: GearBuild,
        ldeIntensity: Int,
        usingTacticooler: Bool
    ) throws {
        guard gearBuild.isValid() else {
            throw SplatalyzerError.invalidGearConfig
        }
        
        guard ldeIntensity >= 0 && ldeIntensity <= 21 else {
            throw SplatalyzerError.invalidLDEIntensity
        }
        
        let service = JSONService()
        
        if weaponInfoMain == nil {
            let weaponInfoMain = try service.decode(WeaponInfoMain.self, from: "WeaponInfoMain")
            
            self.weaponInfoMain = weaponInfoMain
        }
        
        if playerParams == nil {
            let playerParams = try service.decode(Player.self, from: "SplPlayer.game__GameParameterTable")
            
            self.playerParams = playerParams
        }
        
        let mainData = try self.getMainWeaponData(
            weapon: mainWeapon,
            service: service,
            mainInfo: self.weaponInfoMain!)
        
        
        if subData.isEmpty {
            var allSubData = [SubWeapon : SubWeaponData]()
            
            for sub in SubWeapon.allCases {
                let subData = try self.getSubWeaponData(
                    weapon: sub,
                    service: service,
                    playerInfo: playerParams!)
                
                allSubData[sub] = subData
            }
            
            self.subData = allSubData
        }
        
        let specialData = try self.getSpecialData(
            weapon: mainData.specialWeapon,
            service: service)
        
        let abilityValues = try service.decode(AbilityValues.self, from: "ability-values")
        
        let stats = BuildStats(
            mainInfo: mainData,
            allSubInfo: self.subData,
            specialInfo: specialData,
            gearBuild: gearBuild,
            abilityValues: abilityValues,
            ldeIntensity: ldeIntensity,
            usingTacticooler: usingTacticooler)
        
        DispatchQueue.main.async {
            self.stats = stats
        }
    }
    
    /// Gets ``MainWeaponData`` for a specified ``MainWeapon``
    /// - Parameters:
    ///   - weapon: Current main weapon
    ///   - service: A ``JSONService``
    ///   - mainInfo: Information about all main weapons
    /// - Returns: The associated `MainWeaponData`
    /// - Throws: Can throw ``JSONError``
    private func getMainWeaponData(
        weapon: MainWeapon,
        service: JSONService,
        mainInfo: WeaponInfoMain
    ) throws -> MainWeaponData {
        switch weapon.type {
        case .blaster:
            let blaster = try service.decode(
                Blaster.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: blaster)
            
            return mainData
            
        case .brella:
            let brella = try service.decode(
                Brella.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: brella)
            
            return mainData
            
        case .brush:
            let brush = try service.decode(
                Brush.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: brush)
            
            return mainData
            
        case .charger:
            let charger = try service.decode(
                Charger.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: charger)
            
            return mainData
            
        case .dualie:
            let dualie = try service.decode(
                Dualie.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: dualie)
            
            return mainData
            
        case .roller:
            let roller = try service.decode(
                Roller.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: roller)
            
            return mainData
            
        case .shooter:
            let shooter = try service.decode(
                Shooter.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: shooter)
            
            return mainData
            
        case .slosher:
            let slosher = try service.decode(
                Slosher.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: slosher)
            
            return mainData
            
        case .splatana:
            let splatana = try service.decode(
                Splatana.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: splatana)
            
            return mainData
            
        case .splatling:
            let splatling = try service.decode(
                Splatling.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: splatling)
            
            return mainData
            
        case .stringer:
            let stringer = try service.decode(
                Stringer.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: stringer)
            
            return mainData
        }
    }
    
    /// Get ``SubWeaponData`` for a specified ``SubWeapon``
    /// - Parameters:
    ///   - weapon: Current sub weapon
    ///   - service: A ``JSONService``
    ///   - playerInfo: Player game parameters (only used for Squid Beacon)
    /// - Returns: The associated `SubWeaponData`
    /// - Throws: Can throw ``JSONError``
    private func getSubWeaponData(
        weapon: SubWeapon,
        service: JSONService,
        playerInfo: Player
    ) throws -> SubWeaponData {
        switch weapon {
        case .angleShooter:
            let angleShooter = try service.decode(
                AngleShooter.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: angleShooter)
            
            return subData
            
        case .autobomb:
            let autobomb = try service.decode(
                Autobomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: autobomb)
            
            return subData
            
        case .burstBomb:
            let burstBomb = try service.decode(
                BurstBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: burstBomb)
            
            return subData
            
        case .curlingBomb:
            let curlingBomb = try service.decode(
                CurlingBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: curlingBomb)
            
            return subData
            
        case .fizzyBomb:
            let fizzyBomb = try service.decode(
                FizzyBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: fizzyBomb)
            
            return subData
            
        case .inkMine:
            let inkMine = try service.decode(
                InkMine.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: inkMine)
            
            return subData
            
        case .pointSensor:
            let pointSensor = try service.decode(
                PointSensor.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: pointSensor)
            
            return subData
            
        case .splashWall:
            let splashWall = try service.decode(
                SplashWall.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: splashWall)
            
            return subData
            
        case .splatBomb:
            let splatBomb = try service.decode(
                SplatBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: splatBomb)
            
            return subData
            
        case .sprinkler:
            let sprinkler = try service.decode(
                Sprinkler.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: sprinkler)
            
            return subData
            
        case .squidBeakon:
            let squidBeakon = try service.decode(
                SquidBeakon.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: squidBeakon, playerInfo: playerInfo)
            
            return subData
            
        case .suctionBomb:
            let suctionBomb = try service.decode(
                SuctionBomb.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: suctionBomb)
            
            return subData
            
        case .torpedo:
            let torpedo = try service.decode(
                Torpedo.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: torpedo)
            
            return subData
            
        case .toxicMist:
            let toxicMist = try service.decode(
                ToxicMist.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: toxicMist)
            
            return subData
        }
    }
    
    /// Gets ``SpecialWeaponData`` for a specified ``SpecialWeapon``
    /// - Parameters:
    ///   - weapon: Current special weapon
    ///   - service: A ``JSONService``
    ///   - infoSpecial: Information about all special weapons
    /// - Returns: The associated `SpecialWeaponData`
    /// - Throws: Can throw ``JSONError``
    private func getSpecialData(
        weapon: SpecialWeapon,
        service: JSONService
    ) throws -> SpecialWeaponData {
        switch weapon {
        case .bigBubbler:
            let bigBubbler = try service.decode(
                BigBubbler.self, from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: bigBubbler)
            
            return specialData
            
        case .booyahBomb:
            let booyahBomb = try service.decode(
                BooyahBomb.self, from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: booyahBomb)
            
            return specialData
            
        case .crabTank:
            let crabTank = try service.decode(
                CrabTank.self, from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: crabTank)
            
            return specialData
            
        case .inkStorm:
            let inkStorm = try service.decode(
                InkStorm.self, from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: inkStorm)
            
            return specialData
            
        case .inkVac:
            let inkVac = try service.decode(
                InkVac.self, from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: inkVac)
            
            return specialData
            
        case .inkjet:
            let inkjet = try service.decode(
                Inkjet.self, from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: inkjet)
            
            return specialData
            
        case .killerWail51:
            let killerWail51 = try service.decode(
                KillerWail51.self, from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: killerWail51)
            
            return specialData
            
        case .krakenRoyale:
            let krakenRoyale = try service.decode(
                KrakenRoyale.self, from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: krakenRoyale)
            
            return specialData
            
        case .reefslider:
            let reefslider = try service.decode(
                Reefslider.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: reefslider)
            
            return specialData
            
        case .splattercolorScreen:
            let splattercolorScreen = try service.decode(
                SplattercolorScreen.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: splattercolorScreen)
            
            return specialData
            
        case .superChump:
            let superChump = try service.decode(
                SuperChump.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: superChump)
            
            return specialData
            
        case .tacticooler:
            let tacticooler = try service.decode(
                Tacticooler.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: tacticooler)
            
            return specialData
            
        case .tentaMissiles:
            let tentaMissiles = try service.decode(
                TentaMissiles.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: tentaMissiles)
            
            return specialData
            
        case .tripleInkstrike:
            let tripleInkstrike = try service.decode(
                TripleInkstrike.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: tripleInkstrike)
            
            return specialData
            
        case .tripleSplashdown:
            let tripleSplashdown = try service.decode(
                TripleSplashdown.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: tripleSplashdown)
            
            return specialData
            
        case .trizooka:
            let trizooka = try service.decode(
                Trizooka.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: trizooka)
            
            return specialData
            
        case .ultraStamp:
            let ultraStamp = try service.decode(
                UltraStamp.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: ultraStamp)
            
            return specialData
            
        case .waveBreaker:
            let waveBreaker = try service.decode(
                WaveBreaker.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: waveBreaker)
            
            return specialData
            
        case .zipcaster:
            let zipcaster = try service.decode(
                Zipcaster.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: zipcaster)
            
            return specialData
        }
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
