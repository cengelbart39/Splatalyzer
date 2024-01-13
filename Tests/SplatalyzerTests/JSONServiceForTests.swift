//
//  JSONServiceForTests.swift
//
//
//  Created by Christopher Engelbart on 12/29/23.
//

import XCTest
@testable import Splatalyzer

struct JSONServiceForTests: JSONServicable {
    func decode<T: Codable>(_ type: T.Type, from file: String) throws -> T {
        guard let url = Bundle.module.url(forResource: file, withExtension: "json") else {
            throw JSONError.invalidUrl(file)
        }
        
        do {
            let data = try Data(contentsOf: url)
            
            do {
                let obj = try JSONDecoder().decode(T.self, from: data)
                return obj
                
            } catch DecodingError.keyNotFound(let key, let context) {
                print(context.codingPath)
                throw JSONError.decode("Failed to decode '\(file)' due to missing key '\(key.stringValue)': \(context.debugDescription)")
                
            } catch DecodingError.typeMismatch(_, let context) {
                print(context.codingPath)
                throw JSONError.decode("Failed to decode '\(file)' due to type mismatch: \(context.debugDescription)")
                
            } catch DecodingError.valueNotFound(let type, let context) {
                print(context.codingPath)
                throw JSONError.decode("Failed to decode '\(file)' due to missing \(type) value: \(context.debugDescription)")
                
            } catch DecodingError.dataCorrupted(let context) {
                print(context.codingPath)
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
