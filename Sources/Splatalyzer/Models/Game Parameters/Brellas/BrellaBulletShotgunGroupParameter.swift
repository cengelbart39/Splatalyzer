//
//  BrellaBulletShotgunGroupParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct BrellaBulletShotgunGroupParameter: Codable {
    let addDegree: Double?
    let collisionParam: BrellaBulletShotgunGroupCollisionParameter?
    let damageParam: BrellaBulletShotgunGroupDamageParameter
    let drawRadius: Int?
    let horizontalDegree: Double
    let horizontalOffset: Double
    let initVelRandom: Double?
    let moveParam: BrellaBulletShotgunGroupMoveParameter
    let paintParam: BrellaBulletShotgunGroupPaintParameter?
    let totalNum: Int
    let verticalDegree: Double
    let verticalOffset: Double
    
    enum CodingKeys: String, CodingKey {
        case addDegree = "AddDegree"
        case collisionParam = "CollisionParam"
        case damageParam = "DamageParam"
        case drawRadius = "DrawRadius"
        case horizontalDegree = "HorizontalDegree"
        case horizontalOffset = "HorizontalOffset"
        case initVelRandom = "InitVelRandom"
        case moveParam = "MoveParam"
        case paintParam = "PaintParam"
        case totalNum = "TotalNum"
        case verticalDegree = "VerticalDegree"
        case verticalOffset = "VerticalOffset"
    }
}

struct BrellaBulletShotgunGroupCollisionParameter: Codable {
    let endRadiusForField: Double
    let endRadiusForPlayer: Double
    let initRadiusForField: Double
    let initRadiusForPlayer: Double
    
    enum CodingKeys: String, CodingKey {
        case endRadiusForField = "EndRadiusForField"
        case endRadiusForPlayer = "EndRadiusForPlayer"
        case initRadiusForField = "InitRadiusForField"
        case initRadiusForPlayer = "InitRadiusForPlayer"
    }
}

struct BrellaBulletShotgunGroupDamageParameter: Codable {
    let reduceEndFrame: Int?
    let reduceStartFrame: Int?
    let valueMax: Int
    let valueMin: Int
    
    enum CodingKeys: String, CodingKey {
        case reduceEndFrame = "ReduceEndFrame"
        case reduceStartFrame = "ReduceStartFrame"
        case valueMax = "ValueMax"
        case valueMin = "ValueMin"
    }
}

struct BrellaBulletShotgunGroupMoveParameter: Codable {
    let brakeGravity: Double?
    let goStraightStateEndMaxSpeed: Double
    let goStraightToBrakeStateFrame: Int
    let spawnSpeed: Double?
    
    enum CodingKeys: String, CodingKey {
        case brakeGravity = "BrakeGravity"
        case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
        case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
        case spawnSpeed = "SpawnSpeed"
    }
}

struct BrellaBulletShotgunGroupPaintParameter: Codable {
    let distanceNear: Double?
    let widthHalfFar: Double?
    let widthHalfMiddle: Double?
    let widthHalfNear: Double?
    
    enum CodingKeys: String, CodingKey {
        case distanceNear = "DistanceNear"
        case widthHalfFar = "WidthHalfFar"
        case widthHalfMiddle = "WidthHalfMiddle"
        case widthHalfNear = "WidthHalfNear"
    }
}
