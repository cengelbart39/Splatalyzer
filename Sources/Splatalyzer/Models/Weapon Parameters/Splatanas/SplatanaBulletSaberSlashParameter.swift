//
//  SplatanaBulletSaberSlashParameter.swift
//
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct SplatanaBulletSaberSlashParameter: Codable {
    let type: String
    let damageParam: SplatanaBulletSlashDamageParameter
    let moveParam: SplatanaBulletSlashMoveParameter
    let shapeParam: SplatanaBulletSlashShapeParameter
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case damageParam = "DamageParam"
        case moveParam = "MoveParam"
        case shapeParam = "ShapeParam"
    }
}

struct SplatanaBulletSlashDamageParameter: Codable {
    let accelForCastle: Double?
    let damageValue: Int
    let isPenetrate: Bool?
    
    enum CodingKeys: String, CodingKey {
        case accelForCastle = "AccelForCastle"
        case damageValue = "DamageValue"
        case isPenetrate = "IsPenetrate"
    }
}

struct SplatanaBulletSlashMoveParameter: Codable {
    let aliveFrame: Int
    
    enum CodingKeys: String, CodingKey {
        case aliveFrame = "AliveFrame"
    }
}

struct SplatanaBulletSlashShapeParameter: Codable {
    let boxCenter: XYZData
    let boxHalfExtents: XYZData
    let cylinderCenterA: XYZData?
    let cylinderCenterB: XYZData?
    let cylinderRadius: Double?
    let hasCylinderShape: Bool?
    
    enum CodingKeys: String, CodingKey {
        case boxCenter = "BoxCenter"
        case boxHalfExtents = "BoxHalfExtents"
        case cylinderCenterA = "CylinderCenterA"
        case cylinderCenterB = "CylinderCenterB"
        case cylinderRadius = "CylinderRadius"
        case hasCylinderShape = "HasCylinderShape"
    }
}
