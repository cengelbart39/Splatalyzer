//
//  SubParametable.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

protocol SubParametable: Codable {
    associatedtype MoveParameter
    associatedtype WeaponParameter
    
    var moveParam: MoveParameter { get }
    var subWeaponSetting: SubWeaponSetting { get }
    var weaponParam: WeaponParameter { get }
}
