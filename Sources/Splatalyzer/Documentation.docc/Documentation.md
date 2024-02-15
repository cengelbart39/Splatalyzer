# ``Splatalyzer``

Gear building and analyzing for Splatoon 3.

@Metadata {
    @PageImage(
        purpose: icon,
        source: "splatalyzer",
        alt: "The icon for the Splatalyzer package."
    )
}

## Overview

Splatalyzer is a Swift package that enables the analysis of Splatoon 3 builds. It also provides structures representing main weapons, sub weapons, special weapons, gear builds, abilities and more. 

Along side this are SwiftUI views displaying this information and picking build characteristics.

### Essential

@Links(visualStyle: list) {
    - <doc:GearAbility>
    - <doc:WeaponAnalysis>
    - <doc:Localization>
}

### Behind the Scenes

Learn more about how the package decodes and proccesses data.

@Links(visualStyle: list) {
    - <doc:WeaponGameParams>
    - <doc:WeaponGameData>
}

## Topics

### Analysis
- ``Splatalyzer/Splatalyzer``
- ``SplatalyzerViewModel``
- ``SplatalyzerError``
- ``JSONService``
- ``JSONError``


### Ability & Gear Views
- ``BuildSelector``
- ``MainWeaponPicker``
- ``GearBuildView``
- ``GearPieceView``
- ``AbilityView``
- ``AbilityKeyboardView``
- ``LDEPicker``

### Stat Views
- ``StatViewVertical``
- ``StatViewSideBySide``
- ``BuildStatsView``

### Stat List Views
- ``StatList``
- ``MainStatList``
- ``SubStatList``
- ``SpecialStatList``
- ``SubDefenseStatList``
- ``MovementStatList``
- ``MiscStatList``
- ``InkTankOptionsList``
- ``MainDamageList``
- ``SpecialDamageList``
- ``SubDefenseDamageList``
- ``SubDefenseDamageItem``

### Stat Card Views
- ``AbilityStatCard``
- ``DamageStatCard``
- ``DamageEffectStatCard``
- ``DoubleStatCard``
- ``InkTankOptionStatCard``
- ``StringStatCard``

### Weapons
- ``MainWeapon``
- ``SubWeapon``
- ``SpecialWeapon``
- ``WeaponClass``

### Abilities

- ``Ability``
- ``AbilityRestriction``
- ``AbilityPoints``
- ``AbilitySpecialEffect``
- ``AbilityEffectValue``
- ``AbilityValues``
- ``AbilityValue``

### Gear Pieces
- ``GearBuild``
- ``GearPiece``

### Statistics
- ``BuildOptions``
- ``BuildStats``
- ``StatHelper``
- ``MainWeaponStats``
- ``SubWeaponStats``
- ``SpecialWeaponStats``
- ``SubDefenseStats``
- ``MovementStats``
- ``MiscStats``
- ``AbilityStat``
- ``StatUnit``
- ``DamageStat``
- ``DamageEffectStat``
- ``DamageType``
- ``InkTankOption``
- ``InkConsumeType``
- ``APEffect``
- ``SubWeaponConsume``
- ``ShootingRunSpeedType``

### Weapon Data
- ``WeaponDatable``
- ``MainWeaponData``
- ``SubWeaponData``
- ``SpecialWeaponData``

### Main Weapon Info
- ``WeaponInfoMain``
- ``WeaponInfoMainItem``
- ``DamageRateInfo``
- ``ExtraDamageRateInfo``
- ``ExtraInfo``
- ``HitEffectorType``
- ``ExtraHitEffectorInfo``
- ``MainRowId``
- ``ModeType``

### Weapon Models
- ``GameParametable``
- ``GPCodingKeys``
- ``Overwritable``
- ``WeaponSpeedType``

### Shared Model Parameters
- ``AdditionalMoveParameter``
- ``DistanceDamage``
- ``HighMidLow``
- ``KnockbackParameter``
- ``MainEffectiveRangeUpParameter``
- ``RateData``
- ``SplashAroundParameter``
- ``SubSpecialSpecUpList``
- ``XYData``
- ``XYZData``

### Player Model
- ``Player``
- ``BeaconSubSpecUpParameter``

### Main Weapon Models
- ``MainOverwrites``
- ``MainWeaponSettings``
- ``Blaster``
- ``Brella``
- ``Brush``
- ``Charger``
- ``Dualie``
- ``Roller``
- ``Shooter``
- ``Slosher``
- ``Splatana``
- ``Splatling``
- ``Stringer``

### Sub Weapon Models
- ``SubParametable``
- ``SubOverwrites``
- ``SubWeaponSetting``
- ``AngleShooter``
- ``Autobomb``
- ``BurstBomb``
- ``CurlingBomb``
- ``FizzyBomb``
- ``InkMine``
- ``PointSensor``
- ``SplashWall``
- ``SplatBomb``
- ``Sprinkler``
- ``SquidBeakon``
- ``SuctionBomb``
- ``Torpedo``
- ``ToxicMist``

### Special Weapon Models
- ``SpecialParametable``
- ``SpecialOverwrites``
- ``BigBubbler``
- ``BooyahBomb``
- ``CrabTank``
- ``Inkjet``
- ``InkStorm``
- ``InkVac``
- ``KillerWail51``
- ``KrakenRoyale``
- ``Reefslider``
- ``SplattercolorScreen``
- ``SuperChump``
- ``Tacticooler``
- ``TentaMissiles``
- ``TripleInkstrike``
- ``TripleSplashdown``
- ``Trizooka``
- ``UltraStamp``
- ``WaveBreaker``
- ``Zipcaster``
