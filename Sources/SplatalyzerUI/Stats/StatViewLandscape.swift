//
//  SwiftUIView.swift
//  
//
//  Created by Christopher Engelbart on 3/26/24.
//

import SwiftUI

public struct StatViewLandscape: View {
    
    @EnvironmentObject var analyzer: SplatalyzerViewModel
    
    public init() { }
    
    public var body: some View {
        ScrollView {
            VStack {
                BuildSelectorLandscape()
                    .padding(.vertical, 10)
                
                if let stats = analyzer.stats {
                    BuildStatsView(stats: stats)
                }
            }
            .padding(.horizontal)
            
        }
        .foregroundStyle(.primary)
    }
}

#Preview {
    StatViewLandscape()
}
