//
//  XYData.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct XYData: Codable {
    let x: Double
    let y: Double
    
    enum CodingKeys: String, CodingKey {
        case x = "X"
        case y = "Y"
    }
}
