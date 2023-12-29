//
//  SubSpecialSpecUpList.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SubSpecialSpecUpList: Codable {
    let specUpType: String?
    let value: HighMidLow
    
    enum CodingKeys: String, CodingKey {
        case specUpType = "SpecUpType"
        case value = "Value"
    }
}

