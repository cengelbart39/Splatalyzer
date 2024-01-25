// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import Observation

public final class Splatalyzer: ObservableObject {
    @Published public var stats: BuildStats? = nil
    @Published public var gearBuild = GearBuild()
    @Published public var mainWeapon = MainWeapon.allCases.first!
    @Published public var ldeIntensity = 0
    @Published public var usingTacticooler = false
    
    private var weaponInfoMain: WeaponInfoMain? = nil
    private var weaponInfoSub: WeaponInfoSub? = nil
    private var weaponInfoSpecial: WeaponInfoSpecial? = nil
    private var playerParams: PlayerParameters? = nil
    private var subData = [SubWeapon : SubWeaponData]()
    
    public init() { }
    
    public func updateStats(for weapon: MainWeapon) throws {
        DispatchQueue.main.async {
            self.mainWeapon = weapon
        }
        
        try self.analyze()
    }
    
    public func updateStats(for gearBuild: GearBuild) throws {
        DispatchQueue.main.async {
            self.gearBuild = gearBuild
        }
        
        try self.analyze()
    }
    
    public func updateStats(for ldeIntensity: Int) throws {
        DispatchQueue.main.async {
            self.ldeIntensity = ldeIntensity
        }
        
        try self.analyze()
    }
    
    public func updateStats(for tacticooler: Bool) throws {
        DispatchQueue.main.async {
            self.usingTacticooler = tacticooler
        }
        
        try self.analyze()
    }
    
    public func analyze() throws {
        try self.analyze(
            mainWeapon: self.mainWeapon,
            gearBuild: self.gearBuild,
            ldeIntensity: self.ldeIntensity,
            usingTacticooler: self.usingTacticooler)
    }
    
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
        
        if weaponInfoSub == nil {
            let weaponInfoSub = try service.decode(WeaponInfoSub.self, from: "WeaponInfoSub")
            
            self.weaponInfoSub = weaponInfoSub
        }
        
        if weaponInfoSpecial == nil {
            let weaponInfoSpecial = try service.decode(WeaponInfoSpecial.self, from: "WeaponInfoSpecial")
            
            self.weaponInfoSpecial = weaponInfoSpecial
        }
        
        if playerParams == nil {
            let playerParams = try service.decode(PlayerGameParameters.self, from: "SplPlayer.game__GameParameterTable")
            
            self.playerParams = playerParams.parameters
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
                    infoSub: weaponInfoSub!,
                    playerInfo: playerParams!)
                
                allSubData[sub] = subData
            }
            
            self.subData = allSubData
        }
        
        let specialData = try self.getSpecialData(
            weapon: mainData.specialWeapon,
            service: service,
            infoSpecial: weaponInfoSpecial!)
        
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
    
    private func getMainWeaponData(
        weapon: MainWeapon,
        service: JSONServicable,
        mainInfo: WeaponInfoMain
    ) throws -> MainWeaponData {
        switch weapon.type {
        case .blaster:
            let blaster = try service.decode(
                BlasterGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: blaster)
            
            return mainData
            
        case .brella:
            let brella = try service.decode(
                BrellaGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: brella)
            
            return mainData
            
        case .brush:
            let brush = try service.decode(
                BrushGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: brush)
            
            return mainData
            
        case .charger:
            let charger = try service.decode(
                ChargerGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: charger)
            
            return mainData
            
        case .dualie:
            let dualie = try service.decode(
                DualieGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: dualie)
            
            return mainData
            
        case .roller:
            let roller = try service.decode(
                RollerGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: roller)
            
            return mainData
            
        case .shooter:
            let shooter = try service.decode(
                ShooterGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: shooter)
            
            return mainData
            
        case .slosher:
            let slosher = try service.decode(
                SlosherGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: slosher)
            
            return mainData
            
        case .splatana:
            let splatana = try service.decode(
                SplatanaGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: splatana)
            
            return mainData
            
        case .splatling:
            let splatling = try service.decode(
                SplatlingGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: splatling)
            
            return mainData
            
        case .stringer:
            let stringer = try service.decode(
                StringerGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let infoItem = mainInfo.getItem(for: weapon)!
            
            let mainData = MainWeaponData(weaponInfo: infoItem, container: stringer)
            
            return mainData
        }
    }
    
    private func getSubWeaponData(
        weapon: SubWeapon,
        service: JSONServicable,
        infoSub: WeaponInfoSub,
        playerInfo: PlayerParameters
    ) throws -> SubWeaponData {
        switch weapon {
        case .angleShooter:
            let angleShooter = try service.decode(
                AngleShooterGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: angleShooter)
            
            return subData
            
        case .autobomb:
            let autobomb = try service.decode(
                AutobombGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: autobomb)
            
            return subData
            
        case .burstBomb:
            let burstBomb = try service.decode(
                BurstBombGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: burstBomb)
            
            return subData
            
        case .curlingBomb:
            let curlingBomb = try service.decode(
                CurlingBombGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: curlingBomb)
            
            return subData
            
        case .fizzyBomb:
            let fizzyBomb = try service.decode(
                FizzyBombGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: fizzyBomb)
            
            return subData
            
        case .inkMine:
            let inkMine = try service.decode(
                InkMineGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: inkMine)
            
            return subData
            
        case .pointSensor:
            let pointSensor = try service.decode(
                PointSensorGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: pointSensor)
            
            return subData
            
        case .splashWall:
            let splashWall = try service.decode(
                SplashWallGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: splashWall)
            
            return subData
            
        case .splatBomb:
            let splatBomb = try service.decode(
                SplatBombGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: splatBomb)
            
            return subData
            
        case .sprinkler:
            let sprinkler = try service.decode(
                SprinklerGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: sprinkler)
            
            return subData
            
        case .squidBeakon:
            let squidBeakon = try service.decode(
                SquidBeakonGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: squidBeakon, playerInfo: playerInfo)
            
            return subData
            
        case .suctionBomb:
            let suctionBomb = try service.decode(
                SuctionBombGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: suctionBomb)
            
            return subData
            
        case .torpedo:
            let torpedo = try service.decode(
                TorpedoGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: torpedo)
            
            return subData
            
        case .toxicMist:
            let toxicMist = try service.decode(
                ToxicMistGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let subData = SubWeaponData(container: toxicMist)
            
            return subData
        }
    }
    
    private func getSpecialData(
        weapon: SpecialWeapon,
        service: JSONServicable,
        infoSpecial: WeaponInfoSpecial
    ) throws -> SpecialWeaponData {
        switch weapon {
        case .bigBubbler:
            let bigBubbler = try service.decode(
                BigBubblerGameParameters.self, from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: bigBubbler)
            
            return specialData
            
        case .booyahBomb:
            let booyahBomb = try service.decode(
                BooyahBombGameParameters.self, from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: booyahBomb)
            
            return specialData
            
        case .crabTank:
            let crabTank = try service.decode(
                CrabTankGameParameters.self, from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: crabTank)
            
            return specialData
            
        case .inkStorm:
            let inkStorm = try service.decode(
                InkStormGameParameters.self, from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: inkStorm)
            
            return specialData
            
        case .inkVac:
            let inkVac = try service.decode(
                InkVacGameParameters.self, from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: inkVac)
            
            return specialData
            
        case .inkjet:
            let inkjet = try service.decode(
                InkjetGameParameters.self, from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: inkjet)
            
            return specialData
            
        case .killerWail51:
            let killerWail51 = try service.decode(
                KillerWail51GameParameters.self, from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: killerWail51)
            
            return specialData
            
        case .krakenRoyale:
            let krakenRoyale = try service.decode(
                KrakenRoyaleGameParameters.self, from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: krakenRoyale)
            
            return specialData
            
        case .reefslider:
            let reefslider = try service.decode(
                ReefsliderGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: reefslider)
            
            return specialData
            
        case .splattercolorScreen:
            let splattercolorScreen = try service.decode(
                SplattercolorScreenGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: splattercolorScreen)
            
            return specialData
            
        case .superChump:
            let superChump = try service.decode(
                SuperChumpGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: superChump)
            
            return specialData
            
        case .tacticooler:
            let tacticooler = try service.decode(
                TacticoolerGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: tacticooler)
            
            return specialData
            
        case .tentaMissiles:
            let tentaMissiles = try service.decode(
                TentaMissilesGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: tentaMissiles)
            
            return specialData
            
        case .tripleInkstrike:
            let tripleInkstrike = try service.decode(
                TripleInkstrikeGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: tripleInkstrike)
            
            return specialData
            
        case .tripleSplashdown:
            let tripleSplashdown = try service.decode(
                TripleSplashdownGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: tripleSplashdown)
            
            return specialData
            
        case .trizooka:
            let trizooka = try service.decode(
                TrizookaGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: trizooka)
            
            return specialData
            
        case .ultraStamp:
            let ultraStamp = try service.decode(
                UltraStampGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: ultraStamp)
            
            return specialData
            
        case .waveBreaker:
            let waveBreaker = try service.decode(
                WaveBreakerGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: waveBreaker)
            
            return specialData
            
        case .zipcaster:
            let zipcaster = try service.decode(
                ZipcasterGameParameters.self,
                from: "Weapon\(weapon.fileName()).game__GameParameterTable")
            
            let specialData = SpecialWeaponData(container: zipcaster)
            
            return specialData
        }
    }
}

public enum SplatalyzerError: Error {
    case invalidGearConfig
    case invalidLDEIntensity
}
