//
//  InkTankOptionStatCard.swift
//
//
//  Created by Christopher Engelbart on 1/24/24.
//

import SwiftUI

/// Displays information about an array of ``InkTankOption``
public struct InkTankOptionStatCard: View {
    
    /// The number of uses of a sub weapon
    public var subs: Int
    
    /// The number of shots that can be used after ``subs``
    public var options: [InkTankOption]
    
    public var body: some View {
        GroupBox("\(subs) Sub Used") {
            HStack {
                Spacer()

                ForEach(options) { option in
                    VStack(alignment: .leading, spacing: 0) {
                        Text(option.type.localized)
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
