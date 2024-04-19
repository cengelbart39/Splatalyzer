//
//  CleanWeaponJSON.swift
//
//
//  Created by Christopher Engelbart on 3/5/24.
//

/**
 The package uses JSON files containing game parameters for all weapons in the game, which the package accesses from `Resources/weapon-json`.
 
 These files are sourced from Leany's GitHub repository and contains files for Versus, Single-Player, Salmon Run, and others.
 
 The package doesn't need the files that don't pertain to Versus, so this script deletes these unneeded ones.
 
 To run this file do the following (assuming within `scripts` directory):
 `swiftc CleanWeaponJSON.swift` (compile)
 `./CleanWeaponJSON` (run)
 
 It can return an error when accessing `weapon-json` or deleting files.
 */

import Foundation

let fileManager = FileManager.default

let folderUrl = URL(fileURLWithPath: "../Sources/Splatalyzer/Resources/weapon-json")

let watchWords = ["Mission", "Hero", "Coop", "Rival", "BigCoop", "coop"]

var deleteItems = [URL]()
var cleanedItems = 0

do {
    // Access weapon-json/
    let urls = try fileManager.contentsOfDirectory(at: folderUrl, includingPropertiesForKeys: nil, options: .includesDirectoriesPostOrder)
        
    // Determine which ones we need to delete
    for url in urls {
        let name = url.lastPathComponent
        
        if watchWords.contains(where: name.contains) {
            deleteItems.append(url)
        }
    }
    
    // Delete unneeded files
    for item in deleteItems {
        try fileManager.removeItem(at: item)
        cleanedItems += 1
        print("Deleted: \(item.lastPathComponent)")
    }
    
    print("\nSuccessfully Cleaned \(cleanedItems)/\(deleteItems.count)")
    
} catch {
    print("\nSuccessfully Cleaned \(cleanedItems)/\(deleteItems.count)")
    print("An Error Occured: \(error.localizedDescription)")
}
