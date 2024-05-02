# Weapon Game Data

Disccuses data processing following JSON decoding.

## Overview

Once the Game Parameters are decoded into a ``GameParametable`` model, we need to process this data.

Tons of properties within any `GameParametable` weapon model, are unneccesary for analysis.

We process the data by selecting the properties we need and putting them in a new structure.

This is what ``MainWeaponData``, ``SubWeaponData``, and ``SpecialWeaponData`` do.

They contain every property that a Main, Sub, or Special ***could*** have. Every weapon won't exactly the same properties.


## Initializers

`MainWeaponData` has 11 initializers for all 11 weapon classes. This is due to how much any JSON model varries from another.

This also applies to `SubWeaponData` and `SpecialWeaponData`, except one initializer per sub/special weapon.

## Related Protocols

### WeaponDatable

`MainWeaponData`, `SubWeaponData`, and `SpecialWeaponData` conforms to <doc:WeaponDatable>.

This protocol forces conforming objects to have a property of type `any` <doc:Overwritable> and have an implementation of ``WeaponDatable/damage(for:)``.

This particular method returns a damage value for some ``DamageType``.

### Overwritable
All weapons in the game can overwrite the properties within ``AbilityValue``. Of course this varies from weapon-to-weapon. `Overwritable` forces implementation of ``Overwritable/value(for:)``. It gets the weapon's overwrite value for some ``AbilityValue``.

