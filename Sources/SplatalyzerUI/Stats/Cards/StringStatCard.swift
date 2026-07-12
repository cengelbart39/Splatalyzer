//
//  StringStatCard.swift
//
//
//  Created by Christopher Engelbart on 1/19/24.
//

import SwiftUI

/// Displays statistical information stored as  `String`
public struct StringStatCard: View {
    
    /// The statistic title
    public var title: String
    
    /// The associated value
    public var value: String
    
    public init(title: String, value: String) {
        self.title = title
        self.value = value
    }
    
    public var body: some View {
        GroupBox(title) {
            VStack {
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    StatLabel(
                        label: String(localized: "Base"),
                        value: value,
                        unit: .none
                    )
                    
                    Spacer()
                    
                }
                
                Spacer()
            }
        }
    }
}
