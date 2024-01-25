//
//  StringStatCard.swift
//
//
//  Created by Christopher Engelbart on 1/19/24.
//

import SwiftUI

struct StringStatCard: View {
    var title: String
    var value: String
    
    var body: some View {
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
