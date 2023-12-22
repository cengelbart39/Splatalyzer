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
}

struct CellItem: Codable {
    let type: String
    let columnKey: ColumnKey
    let damageRate: Double?
    let rowKey: RowKey
}
