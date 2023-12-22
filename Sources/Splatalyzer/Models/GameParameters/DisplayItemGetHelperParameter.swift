//
//  DisplayItemGetHelperParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct DisplayItemGetHelperParameter: Parametable {
    let type: String
    let displayOffsetY: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case displayOffsetY = "DisplayOffsetY"
    }
}
