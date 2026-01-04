//
//  Number+Extension.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

public extension Int {
    /// Converts a number of frames to seconds
    func framesToSeconds(round: NumberFormatter.RoundingMode = .up) -> Double {
        return Double(self).framesToSeconds(round: round)
    }
}

public extension Double {
    /// Converts a number of frames to seconds
    func framesToSeconds(round: NumberFormatter.RoundingMode = .up) -> Double {
        return (ceil(self) / 60)
            .cutToDecimalPlaces(3, round: round)
    }
    
    /// Formats Doubles to displayed in `View`s
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
    
    /// Removes decimal places after the nth place.
    func cutToDecimalPlaces(_ n: Int = 2, round: NumberFormatter.RoundingMode) -> Double {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = n
        formatter.roundingMode = round
        
        let str = formatter.string(from: NSNumber(value: self))!
        return Double(truncating: NumberFormatter().number(from: str)!)
    }
    
    /// Rounds a double and then removes decimal places after the nth place
    /// - SeeAlso: ``cutToDecimalPlaces(_:round:)``
    func roundToDecimalPlaces(_ n: Double = 2, round: NumberFormatter.RoundingMode) -> Double {
        return ((self * pow(10, n)).rounded() / pow(10, n))
            .cutToDecimalPlaces(Int(n), round: round)
    }
}

public extension Optional<Int> {
    /// Converts a number of frames to seconds if non-`nil`.
    func framesToSeconds(round: NumberFormatter.RoundingMode) -> Double? {
        if self == nil { return nil }
        
        return (Double(self!) / 60)
            .cutToDecimalPlaces(3, round: round)
    }
    
    /// Converts to `Optional<Double>`
    func toDouble() -> Double? {
        if let num = self {
            return Double(num)
        }
        
        return nil
    }
}
