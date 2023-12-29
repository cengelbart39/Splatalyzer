//
//  CoopParameters.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct CoopBuildParameter: Parametable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}

struct CoopBuildParameterHumanMoveUp: Parametable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}

struct CoopBuildParameterOpInkEffectReduction: Parametable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}

struct CoopBuildParameterSquidMoveUp: Parametable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}
