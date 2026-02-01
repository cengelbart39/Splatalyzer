# Localization

Learn about the current state of package localization and how to add localizations.

## Supported Languages

At present, the package is fully localized in:
- English

And partially localized in:
- Spanish (Spain, Latin America)
- French (France, Canada)
- German
- Dutch
- Italian
- Russian
- Korean
- Chinese (Simplified, Traditional)
- Japanese

### Partial Localization

Out of the box, this package is able to partially support all languages Splatoon 3 is localized in.

Main Weapon, Sub Weapon, Special Weapon, Main Weapon Class, and Ability localization is pulled from Splatoon 3.

## Localization Files

The localization files for Splatalyzer are contained in `Sources/Splatalyzer/Resources/language`.

They are as follows:
- `MainWeapon.xcstrings`: Localizations for Main Weapon names. Corresponds to ``MainWeapon``.
- `SubWeapon.xcstrings`: Localizations for Sub Weapon names. Corresponds to ``SubWeapon``.
- `SpecialWeapon.xcstrings`: Localizations for Special Weapon names. Corresponds to ``SpecialWeapon``.
- `WeaponClass.xcstrings`: Localizations for Main Weapon Class names. Corresponds to ``WeaponClass``.
- `Ability.xcstrings`: Localizations for Ability names. Corresponds to ``Ability``.
- `DamageType.xcstrings`: Localization of the names of the type of damage done by weapons. Corresponds to ``DamageType``.
- `InkConsumeType.xcstrings`: Localization of the way in which ink is consumed. Corresponds to ``InkConsumeType``.
- `Localizable.xcstrings`: Localizations for Strings that don't fit into the above categories.

- Note: Although, not an ability, the localizations for the Flow Aura mechanic is included within `Ability.xcstrings`. At this time, there are no official Russian or Chinese localizations.


## Updating Localization

If a language is partially supported, it likely has localizations for Main Weapons, Sub Weapons, Special Weapons, Main Weapon Classes, and Abilities.

This information is taken from Splatoon 3's localization into that language.

You will need to update the remaining files.

### Xcode (Recommended)

If you would like to add further supported for any of these languages:

1. Go to `Sources/Splatalyzer/Resources/language`
2. Select a localization fiile
3. Select the language from the sidebar
4. You will see the a table of the following:

| Key | Default Localization (en) | `<Your Language>` | Comment |
| --- | ------------------------- | ----------------- | ------- |

5. You will need to fill out the `<Your Language>` column. Comments might be present to add context to how strings are used and what they refer to.
- Note: You might see `%@`, `(struct.property)`, `%1$@`, and `%lld` throughout the files. These refer to variables. These need to be included. You can assume these are strings that are correctly localized elsewhere or are numbers.

### Alternative Editor

In esence an `.xcstrings` file is a fancy JSON file. If you open one of them, you can see this for yourself.

While it is less straight forward than using Xcode, it is possible to do.

If you open one of the files you'll see something like this:

```json
{
    "sourceLanguage" : "en",
    "strings" : {
        "key1": {
            "comment": "comment1", (may not exist)
            "extractionState": "manual", (may not exist)
            "localizations": {
                "en": {
                    "stringUnit": {
                        "state": "translated",
                        "value": "value1-en"
                    }
                },
                "es-419": {
                    "stringUnit": {
                        "state": "translated",
                        "value": "value1-es419"
                    }
                },
                ...
            }
        },
        "key2": {...},
        ...
    },
    "version" : "1.0"
}
```
You would have to add to localization property for your language for each key. If I was adding Spanish (Latin America), I would add a `es-419` block for every key I was updating.

Here are the corresponding language keys:
- German: `de`
- English: `en`
- Spanish (Latin America): `es-419`
- Spanish (Spain): `es-ES`
- French (Canada): `fr-CA`
- French (France): `fr-FR`
- Italian: `it`
- Japanese: `ja`
- Korean: `ko`
- Dutch: `nl`
- Russian: `ru`
- Chinese (Simplified): `zh-Hans`
- Chinese (Traditional): `zh-Hant`

- Note: Localizations are sorted in alphabetical order in `xcstrings` according to language keys.

### Update This File

If your language is now fully localized across all `xcstrings`, add your language or language variant to the "Fully Localized" list and remove it from "Partially Localized" in the "Supported Languages" section.

