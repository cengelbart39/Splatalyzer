//
//  JSONService.swift
//
//
//  Created by Christopher Engelbart on 12/29/23.
//

import Foundation

public protocol JSONServicable {
    func decode<T: Codable>(_ type: T.Type, from file: String) throws -> T
}

public struct JSONService: JSONServicable {
    
    public init() { }
    
    public func decode<T: Codable>(_ type: T.Type, from file: String) throws -> T {
        guard let url = Bundle.module.url(forResource: file, withExtension: "json") else {
            throw JSONError.invalidUrl(file)
        }
        
        do {
            let data = try Data(contentsOf: url)
            
            do {
                return try JSONDecoder().decode(T.self, from: data)
                
            } catch DecodingError.keyNotFound(let key, let context) {
                throw JSONError.decode("Failed to decode '\(file)' due to missing key '\(key.stringValue)': \(context.debugDescription)")
                
            } catch DecodingError.typeMismatch(_, let context) {
                throw JSONError.decode("Failed to decode '\(file)' due to type mismatch: \(context.debugDescription)")
                
            } catch DecodingError.valueNotFound(let type, let context) {
                throw JSONError.decode("Failed to decode '\(file)' due to missing \(type) value: \(context.debugDescription)")
                
            } catch DecodingError.dataCorrupted(let context) {
                throw JSONError.decode("Failed to decode '\(file)' due to invalid JSON: \(context.debugDescription)")
                
            } catch {
                throw JSONError.decode(error.localizedDescription)
            }
            
        } catch JSONError.decode(let string) {
            throw JSONError.decode(string)
            
        } catch {
            throw JSONError.invalidData(file, error.localizedDescription)
        }
    }
}

public enum JSONError: Error, LocalizedError {
    case invalidUrl(String)
    case invalidData(String, String)
    case decode(String)
    
    public var errorDescription: String? {
        switch self {
        case .invalidUrl(let file):
            return NSLocalizedString("Failed to locate '\(file)' in bundle.", comment: "")
            
        case .invalidData(let file, let descr):
            return NSLocalizedString("Failed to load '\(file)' in bundle: \(descr)", comment: "")
            
        case .decode(let string):
            return string
        }
    }
}
