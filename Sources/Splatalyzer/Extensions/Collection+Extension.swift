//
//  Collection+Extension.swift
//
//
//  Created by Christopher Engelbart on 1/9/24.
//

import Foundation

extension Collection {
    /// Accesses an element of a `Collection` safely. If `index` doesn't exist, returns `nil`.
    public subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
