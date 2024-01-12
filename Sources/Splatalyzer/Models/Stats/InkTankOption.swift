//
//  InkTankOption.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

struct InkTankOption {
    let id = UUID()
    let subsFromFullInkTank: Int
    let type: InkConsumeType
    let value: Double
}
