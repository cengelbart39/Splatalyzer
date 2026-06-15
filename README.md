<p align="center">
  <img height="256" alt="Spatalyzer Package Icon" src="https://github.com/cengelbart39/Splatalyzer/assets/67113079/f24f6976-aef9-4e23-8281-9913183f36e7">
  <h1 align="center">Splatalyzer</h1>
</p>

Splatalyzer is a Swift package that enables the analysis of Splatoon 3 builds. It also provides structures representing main weapons, sub weapons, special weapons, gear builds, abilities and more. 

Splatalyzer includes a companion package, SplatalyzerUI, that contains SwiftUI views for displaying weapon kits, gear builds, abilities, and build statistics.

The package works locally, relying on resources included within the package.

The build analysis and functionality of this package is heavily based on [sendou.ink](https://github.com/Sendouc/sendou.ink)'s build analysis.

## Installation

### Xcode Project Dependency

Within a Xcode project, go to File > Add Package Dependecies and search for:

```text
https://github.com/cengelbart39/Splatalyzer.git
```

Then chose Splatalyzer or SplatalyzerUI.

### Swift Package

In your `Package.swift` file, add the following to `dependencies`:

```swift
.package(url: "https://github.com/cengelbart39/Splatalyzer.git"),
```

Then add it as a dependency to your target:

```swift
.target(name: "<target>", dependencies: [
    .product(name: "Splatalyzer", package: "Splatalyzer"),
]),
```

or 

```swift
.target(name: "<target>", dependencies: [
    .product(name: "SplatalyzerUI", package: "Splatalyzer"),
]),
```

## Documention

Find package documentation below:
* [Splatalyzer](https://cengelbart39.github.io/Splatalyzer/documentation/splatalyzer/)
* [SplatalyzerUI](https://cengelbart39.github.io/Splatalyzer/documentation/splatalyzerui/)

## Updater

To keep Splatalyzer update to date with the latest game updates, the `SplatalyzerUpdater` executable target is included. This pulls the latest game data and updates Splatalyzer resources with it.

This can be run via Xcode or by using the command:
```bash
$ swift run SplatalyzerUpdater
```

## Disclaimer

Splatoon is a trademark and copyright of Nintendo 2014-2026. Splatalyzer is not affilated with Nintendo.
