//
//  MuzzleLocalPos.swift
//  
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct MuzzleLocalPos: Codable {
    let x: Double
    let y: Double
    let z: Double
    
    enum CodingKeys: String, CodingKey {
        case x = "X"
        case y = "Y"
        case z = "Z"
    }
}
