//
//  RollerKnockBackByCanopyParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/25/23.
//

import Foundation

struct RollerKnockBackByCanopyParameter: Codable {
    let type: String
    let knockBackRollerPlayerDamageOff: BRKnockBack
    let knockBackRollerPlayerDamageOn: BRKnockBack
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case knockBackRollerPlayerDamageOff = "KnockBackRollerPlayerDamageOff"
        case knockBackRollerPlayerDamageOn = "KnockBackRollerPlayerDamageOn"
    }
}
