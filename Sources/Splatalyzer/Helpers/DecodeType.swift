//
//  DecodeType.swift
//  Splatalyzer
//
//  Created by Christopher Engelbart on 9/2/24.
//

import Foundation

public enum DecodeType: FileRepresentable {
    case weapon(WeaponRepresentable)
    case player
    case weaponInfoMain
    
    public var fileName: String {
        switch self {
        case .weapon(let weaponRepresentable):
            return weaponRepresentable.fileName
        case .player:
            return "SplPlayer.game__GameParameterTable"
        case .weaponInfoMain:
            return "WeaponInfoMain"
        }
    }
}
