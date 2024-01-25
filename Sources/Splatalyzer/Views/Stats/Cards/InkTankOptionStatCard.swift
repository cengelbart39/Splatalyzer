//
//  InkTankOptionStatCard.swift
//
//
//  Created by Christopher Engelbart on 1/24/24.
//

import SwiftUI

struct InkTankOptionStatCard: View {
    
    var subs: Int
    var options: [InkTankOption]
    
    var body: some View {
        let title = subs == 1 ? "Sub Used" : "Sub Used"
        
        GroupBox("\(subs) \(title)") {
            HStack {
                Spacer()

                ForEach(options) { option in
                    VStack(alignment: .leading, spacing: 0) {
                        Text(option.type.rawValue)
                            .font(.headline.weight(.semibold))
                            .padding(.bottom, -10)
                            .foregroundStyle(.secondary)
                        
                        Text(option.value.format())
                            .font(.title)
                            .fontDesign(.rounded)
                    }
                    
                    Spacer()
                }
            }
        }
    }
}
