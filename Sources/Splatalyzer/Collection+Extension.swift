//
//  Collection+Extension.swift
//
//
//  Created by Christopher Engelbart on 1/9/24.
//

import Foundation

extension Collection {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
