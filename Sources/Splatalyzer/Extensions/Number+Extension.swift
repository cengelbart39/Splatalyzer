//
//  Number+Extension.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

extension Int {
    func framesToSeconds() -> Double {
        return (Double(self) / 60).cutToDecimalPlaces(3)
    }
}

extension Double {
    func framesToSeconds() -> Double {
        return (self / 60).cutToDecimalPlaces(3)
    }
    
    func format() -> String {
        if self == Double(Int(self)) {
            // If the value is an integer, just return the integer part
            return String(Int(self))
            
        } else {
            // For non-integer values, format with a maximum of 8 fraction digits
            let formatter = NumberFormatter()
            formatter.minimumFractionDigits = 0
            formatter.maximumFractionDigits = 8
            return formatter.string(from: NSNumber(value: self)) ?? ""
        }
    }
    
    func cutToDecimalPlaces(_ n: Int = 2) -> Double {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = n
        
        let str = formatter.string(from: NSNumber(value: self))!
        return Double(truncating: NumberFormatter().number(from: str)!)
    }
    
    func roundToDecimalPlaces(_ n: Double = 2) -> Double {
        return ((self * pow(10, n)).rounded() / pow(10, n)).cutToDecimalPlaces(Int(n))
    }
}

extension Optional<Int> {
    func framesToSeconds() -> Double? {
        if self == nil { return nil }
        
        return (Double(self!) / 60).cutToDecimalPlaces(3)
    }
    
    func toDouble() -> Double? {
        if let num = self {
            return Double(num)
        }
        
        return nil
    }
}
