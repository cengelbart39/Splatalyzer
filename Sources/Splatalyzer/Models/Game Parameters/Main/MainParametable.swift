//
//  MainParametable.swift
//
//
//  Created by Christopher Engelbart on 7/4/24.
//

import Foundation

public protocol MainParametable: Parametable {
    var mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter? { get }
    
    var mainWeaponSetting: MainWeaponSettings { get }
}
