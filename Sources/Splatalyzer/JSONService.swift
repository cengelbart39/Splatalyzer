//
//  JSONService.swift
//
//
//  Created by Christopher Engelbart on 12/29/23.
//

import Foundation

/// A service `struct` that decodes JSON resources from the module
public struct JSONService {
    
    public init() { }
    
    /// Decodes a specified JSON file
    /// - Parameters:
    ///   - type: The type to decode into
    ///   - file: The JSON file
    /// - Throws: Can throw a ``JSONError``
    /// - Returns: Decoded JSON as type `T`
    public func decode<T: Decodable>(_ type: T.Type, from file: String) throws -> T {
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

/// Errors that can be thrown by ``JSONService``
public enum JSONError: Error, LocalizedError {
    /// The Bundle url is invalid
    case invalidUrl(String)
    
    /// The data in the url is invalid
    case invalidData(String, String)
    
    /// There is a `DecodingError`
    case decode(String)
    
    public var errorDescription: String? {
        switch self {
        case .invalidUrl(let file):
            return NSLocalizedString("Failed to locate '\(file)' in bundle.", comment: "")
            
        case .invalidData(let file, let descr):
            return NSLocalizedString("Failed to load \(file) in bundle: \(descr)", comment: "")
            
        case .decode(let string):
            return string
        }
    }
}
