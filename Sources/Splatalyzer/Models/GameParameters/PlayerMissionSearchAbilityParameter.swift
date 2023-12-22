//
//  PlayerMissionSearchAbilityParameter.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct PlayerMissionSearchAbilityParameter: Parametable {
    let type: String
    let markingForgetTime: Double
    let periscopeMarkingMaxNum: [Double]
    let periscopeRadius: [Double]
    let radiusParam: [RadiusParameter]
    let slightParam: SlightParameter
}

struct RadiusParameter: Codable {
    let strongRadius: Double
    let weakRadius: Double
    
    enum CodingKeys: String, CodingKey {
        case strongRadius = "StrongRadius"
        case weakRadius = "WeakRadius"
    }
}

struct SlightParameter: Codable {
    let queryLayerHitMaskEntity: String
    let querySubLayerHitMskEntity: String
    let shapeHolderUnitParam: [ShapeHolderUnitParameter]
    let userDefilade: Bool
    
    enum CodingKeys: String, CodingKey {
        case queryLayerHitMaskEntity = "QueryLayerHitMaskEntity"
        case querySubLayerHitMskEntity = "QuerySubLayerHitMaskEntity"
        case shapeHolderUnitParam = "ShapeHolderUnitParamArray"
        case userDefilade = "UseDefilade"
    }
}

struct ShapeHolderUnitParameter: Codable {
    let name: String
    let shapeHolderUnitParam: [ShapeHolderParameter]
    
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case shapeHolderUnitParam = "ShapeHolderParam"
    }
}

struct ShapeHolderParameter: Codable {
    let sphereArray: [String]
    
    enum CodingKeys: String, CodingKey {
        case sphereArray = "SphereArray"
    }
}
