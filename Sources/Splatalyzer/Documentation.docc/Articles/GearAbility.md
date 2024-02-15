# Gear Abilities & Builds

Get a familiar with gear abilities and builds.

## What Are Abilities and Gear Builds?

For those familiar with Splatoon 3, feel free to skip the section.

Abilities "are special attributes that are placed on wearable gear" ([Inkpedia](https://splatoonwiki.org/wiki/Gear_ability)). It can be increasing the player movement speed or situational, like providing buffs after the player respawns. 

Abilities can be placed on gear, which a player can wear 3 pieces of: headgear, clothes, and shoes.

Every gear piece can have a max of 4 ability slots; 1 main ability and 3 subs. Main abilities have stronger effects than a single sub ability. In total, a player has 12 ability slots: 3 main and 9 sub.

The player can use *some* abilities in multiple slots, but, there are others restricted to certain gear types and that can only be used as main abilities:

- Comeback, a headgear-exclusive ability, boosts certain player abilities for a short time after respawning.

- Thermal Ink, a clothes-exclusive ability, allows a player to track enemy players that are hit with shots from their  weapon.

- Object Shredder, a shoes-exclusive ability, increases damage dealt to all non-player targets. 
  
Abilities like this, by their vary nature, can't be stacked. However, just because an ability is in a main ability slot, it doesn't mean it can't be stacked.

Gear Builds are simply what abilities are allocated in those 12 ability slots.


Something important to note for later reading are Ability Chunks. You can spend ability chunks to get a specific ability on your gear piece. Otherwise, it's practically random.

For those gear type-exclusive main abilities, they use 3 non-exclusive abilities to apply to a gear piece.

You will also see the term "AP" or Ability Points. This is an internal measurement the game uses for the strength of an ability. In otherwords 5 AP of Swim Speed will have greater effect than 3 AP of it.

## Representing Abilities

### Ability

As the number of abilities are constant, we can use the enum <doc:Ability>. For every ability there is one case, plus a case for no ability.

Every `Ability` has the following properties:
- A raw value representing its internal name
- A retriction on which gear type it can be used (see ``AbilityRestriction``)
- The component Ability Chunks
- The icon of the ability
- The localized name of the ability (see `Ability.xcstrings`)

`Ability` has some `static` properties for getting all abiltiies of a certain type:
- ``Ability/headgearAbilities``
- ``Ability/clothesAbilities``
- ``Ability/shoesAbilities``
- ``Ability/nonRestrictedAbilities``

### Ability Special Effects

``AbilitySpecialEffect`` is an enum listing certain main abilities that provide the effects of multiple abilities.

For instance, the ability Drop Roller, provides AP of Swim Speed Up, Run Speed Up, and Ink Resistance Up. Its effects are made up of other abilities.

Every case has the property ``AbilitySpecialEffect/values``, that returns an array of ``AbilityEffectValue``, listing the ability, AP value, and whether it can exceed the typical 57 AP cap for any ability.

There are two cases of `AbilitySpecialEffect` to note:
1. Last Ditch Effort has a variable AP, in a range of 1 to 18, depending on its intensity. Since we can't just hard-code it, the case for this effect takes an associated value and AP is calculated using ``AbilitySpecialEffect/ldeIntensityToAp(_:)``.

2. Although not an ability, the effects of the Tacticooler special weapon is included here. This special applies AP of certain abilities to players temporarily.

<doc:Ability> has a helper function ``Ability/toSpecialEffect(intensity:)``, that helps convert an `Ability` to an `AbilitySpecialEffect`.

## Representing Gear Builds

### Overview
``GearBuild`` represents a 12-ability gear build; 3 mains and 9 subs.

Likewise `GearBuild` has properties for the set of abilities on the headgear, clothes, and shoes. This is represented by ``GearPiece``, representing 1 main and 3 sub abilities.

### Gear Pieces

`GearPiece` has 5 properties. One representing the main ability, three representing the sub abilities, and one representing the type of gear it is.

As such it has a initializer for all of these proprties: ``GearPiece/init(main:sub1:sub2:sub3:for:)``.

However, if you want an empty `GearPiece`, there is ``GearPiece/init(for:)`` that only requires an ``AbilityRestriction``.

It has 3 notable functions:
- ``GearPiece/isValid()``: Checks if there is a illegal main ability
- ``GearPiece/toAbilityPoints()``: Converts abilities to ``AbilityPoints`` (AP)
- ``GearPiece/hasAbility(_:)``: Determines if a specific ability is applied to the gear piece

### Gear Builds

A ``GearBuild`` is composed of 3 `GearPiece`s. One for the headgear, clothes, and shoes. In many ways it mirrors `GearPiece`.

It has an initializer that takes 3 `GearPiece`s: ``GearBuild/init(headgear:clothes:shoes:)``.

Similarily, it has a default initializer, using `GearPiece`'s ``GearPiece/init(for:)`` for each gear slot.

It builds off of `GearPiece`'s functions as well:
- ``GearBuild/isValid()``: Checks if there are any illegal main abilities across its properties
- ``GearBuild/hasAbility(_:)``: Determines if a specific ability is present across its properties.

As you may expect, `GearBuild` also has ``GearBuild/toAbilityPoints(ldeIntensity:usingTacticooler:)`` that calculates the AP across the whole build. This is also where we account for any ``AbilitySpecialEffect``s, as reflected by its parameters.

## Ability Values

In `Resources/`, there is a file called `ability-values.json`. This file represents ranges of values used throughout the game.

Damage, ink comsumption, ink recovery, tracking time, player movement speed, and more.

Every key in this file has a 3-value `[Double]`. This array contains an upperbound, lowerbound, and a middle value.

These are the values that inform the analysis calculations and can be effected by abilities.

For more info on this, see the `APEffect` section in the <doc:WeaponAnalysis> article.
