//
//  Number+Extension.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

extension Int {
    func framesToSeconds() -> Double {
        return Double(self) / 60
    }
}

extension Double {
    func framesToSeconds() -> Double {
        return self / 60
    }
}

extension Optional<Int> {
    func framesToSeconds() -> Double? {
        if self == nil { return nil }
        
        return Double(self!) / 60
    }
    
    func toDouble() -> Double? {
        if let num = self {
            return Double(num)
        }
        
        return nil
    }
}
