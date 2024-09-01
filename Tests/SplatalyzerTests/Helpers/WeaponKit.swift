//
//  WeaponKit.swift
//  Splatalyzer
//
//  Created by Christopher Engelbart on 8/31/24.
//

import Testing
@testable import Splatalyzer

struct WeaponKit: CustomTestStringConvertible {
    let main: MainWeapon
    let sub: SubWeapon
    let special: SpecialWeapon
    
    var testDescription: String {
        return main.localized
    }
    
    init(_ main: MainWeapon, _ sub: SubWeapon, _ special: SpecialWeapon) {
        self.main = main
        self.sub = sub
        self.special = special
    }
}
