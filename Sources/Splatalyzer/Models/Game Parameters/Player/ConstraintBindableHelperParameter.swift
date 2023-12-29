//
//  ConstraintBindableHelperParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct ConstraintBindableHelperParameter: Parametable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}
