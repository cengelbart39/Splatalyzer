# Weapon Game Parameters

Learn more about models decoded from JSON Game Parameters and related structures.

## Overview

The main source of data for Splatalyzer are the Game Parameter Tables JSON files.

These files are suffixed with `.game__GameParameterTable.json` in `Resources/weapon-json`.

This article goes into detail about how these are decoded.

### GameParametable

If you look at couple of these files you see this structure:

```json
{
    "GameParameters": {
        "Param1": {...}
        "Param2": {...}
        ...
    }
}
```

The contents of `"GameParameters"` vary between every file, but this top level structure is consistent.

The <doc:GameParametable> protocol provides this top-level structure and uses an `associatedtype` for the type of `"GameParameters"`.

### The Models

Due to the differing contents of `"GameParameters"`, every weapon has its own model conforming to `GameParametable`.

The only caveat to this, is, for Main Weapons, every weapon class has its own model.

Additionally, every one of these models contains `struct`s due to the complexity of the model. ``Brush`` and ``Roller`` don't follow this competely since they share some structures, but do for their exclusive structures.

The models are as follows:
| Main Weapons  | Sub Weapons       | Special Weapons           |
| ------------- | ----------------- | ------------------------- |
| ``Blaster``   | ``AngleShooter``  | ``BigBubbler``            |
| ``Brella``    | ``Autobomb``      | ``BooyahBomb``            |
| ``Brush``     | ``BurstBomb``     | ``CrabTank``              |
| ``Charger``   | ``CurlingBomb``   | ``Inkjet``                |
| ``Dualie``    | ``FizzyBomb``     | ``InkStorm``              |
| ``Roller``    | ``InkMine``       | ``InkVac``                |
| ``Shooter``   | ``PointSensor``   | ``KillerWail51``          |
| ``Slosher``   | ``SplashWall``    | ``KrakenRoyale``          |
| ``Splatana``  | ``SplatBomb``     | ``Reefslider``            |
| ``Splatling`` | ``Sprinkler``     | ``SplattercolorScreen``   |
| ``Stringer``  | ``SquidBeakon``   | ``SuperChump``            |
|               | ``SuctionBomb``   | ``Tacticooler``           |
|               | ``Torpedo``       | ``TentaMissiles``         |
|               | ``ToxicMist``     | ``TripleInkstrike``       |
|               |                   | ``Trizooka``              |
|               |                   | ``UltraStamp``            |
|               |                   | ``WaveBreaker``           |
|               |                   | ``Zipcaster``             |

Additionally, there are Game Parameters for the Player. The model is called ``Player``.

### Decoding

These models are decoded with `JSONService`.``JSONService/decode(_:into:)``, with their respective type and file.

To decode, it uses a ``DecodeType``. Each case has a respective ``DecodeType/fileName``, containing the file name of the associated JSON file.

In the case of Main, Sub, and Special weapons the ``DecodeType/weapon(_:)`` case is used. It takes an associated property of type ``WeaponRepresentable``, which contains the file name.

For Player parameters, the ``DecodeType/player`` case is used.
