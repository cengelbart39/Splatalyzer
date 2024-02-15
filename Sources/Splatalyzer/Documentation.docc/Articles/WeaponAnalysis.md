# Weapon Analysis

Get familar with build analysis and related structures.

## Overview

Now that the data is processed, we can start analyzing it. The object that represents the results of the analysis is ``BuildStats``.

## BuildStats & StatHelper

``BuildStats`` is simply an initializer and doesn't do the analysis directly.

Analysis is outsourced to ``StatHelper``. Every statistic is calculated by a corresponding `static` method of `StatHelper`.

The file as a whole is short of 2,000 lines of code.

## Structures

### AbilityStat

<doc:AbilityStat> is the primary type returned by `StatHelper`.

It contains the base value (``AbilityStat/baseValue``) and after-ability value (``AbilityStat/value``) of the statistic. It also tells us which abilities can modify `value` with ``AbilityStat/modifiedBy``.

There are also properties focused on display, like the unit of the statistic (``AbilityStat/unit``) and and display name of the statistic (``AbilityStat/title``).

### APEffect

<doc:APEffect> is an intermediate structure used commonly throughout `StatHelper` that calculates the default value before accounting for AP and the effect accounting for AP.

The initializer relies on `StatHelper`'s ``StatHelper/abilityValues(for:in:weapon:)``. It pulls the necessary value from ``AbilityValues``, or the appropriate overwrite, into ``HighMidLow``.

This values are used to then calculate the base and effect values.

### DamageStat & DamageEffectStat

These structures contain information about the damage done by a particular weapon.

``DamageStat`` are for damage values that are uneffected by AP.

``DamageEffectStat`` does account for AP concerning damage (primarily concerning Sub Weapons due to Sub Defense).

Both use ``DamageType``, which determines what type of damage is done and is used to in suppied views.

### InkTankOption

Another statistic of note, is how many shots you can take after using a sub weapon (assuming full ink tank initially).

<doc:InkTankOption> represents this supplying the number of subs used and the remaining "shots" a player can take.

It introduces ``InkConsumeType``. It is also used display. Sloshers slosh, Dualies "roll", and Brellas launch their shield.

### SubWeaponConsume

<doc:SubWeaponConsume> calculates how much of the ink tank consumption of the sub weapon.

It is also used alongside statistics involving <doc:InkTankOption>.

## Statistic Categories

`BuildStat`'s properties uses categories where it can.

It uses the following:
- ``MainWeaponStats``
- ``SubWeaponStats``
- ``SpecialWeaponStats``
- ``SubDefenseStats``
- ``MovementStats``
- ``MiscStats``

There are a few properties that don't fall into one of these categories:
- ``BuildStats/multiShots``
- ``BuildStats/fullInkTankOptions``
- ``BuildStats/mainDamages``
- ``BuildStats/subDefenseStats``
- ``BuildStats/specialDamages``

They are mostly used for organization and can be helpful for displaying such information.
