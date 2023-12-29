//
//  DamageRateInfoConfig.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct DamageRateInfoConfig: Codable {
    let cellList: [String : CellItem]
    let tableType: String
    
    enum CodingKeys: String, CodingKey {
        case cellList = "CellList"
        case tableType = "TableType"
    }
}

struct CellItem: Codable {
    let type: String
    let columnKey: ColumnKey
    let damageRate: Double?
    let rowKey: RowKey
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case columnKey = "ColumnKey"
        case damageRate = "DamageRate"
        case rowKey = "RowKey"
    }
}
