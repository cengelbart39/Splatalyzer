//
//  XYZData.swift
//
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct XYZData: Codable {
    let x: Double
    let y: Double
    let z: Double
    
    enum CodingKeys: String, CodingKey {
        case x = "X"
        case y = "Y"
        case z = "Z"
    }
}

