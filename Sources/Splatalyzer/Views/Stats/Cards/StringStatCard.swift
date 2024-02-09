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
                    
                    VStack(alignment: .leading, spacing: 0) {
                        
                        Text("Base")
                            .font(.headline.weight(.semibold))
                            .padding(.bottom, -10)
                            .foregroundStyle(.secondary)
                        
                        Text(value)
                            .font(.title)
                            .fontDesign(.rounded)
                        
                    }
                    
                    Spacer()
                    
                }
                
                Spacer()
            }
        }
    }
}
