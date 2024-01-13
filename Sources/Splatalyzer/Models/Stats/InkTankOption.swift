//
//  InkTankOption.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

public struct InkTankOption {
    public let id = UUID()
    public let subsFromFullInkTank: Int
    public let type: InkConsumeType
    public let value: Double
}
