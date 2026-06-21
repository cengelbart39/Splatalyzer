//
//  StatViewiOSPortrait.swift
//
//
//  Created by Christopher Engelbart on 1/24/24.
//

import SwiftUI

/// A vertical display of of ``BuildSelector`` and Build Stats
public struct StatViewPortrait: View {
    
    @EnvironmentObject var analyzer: SplatalyzerViewModel
    
    public init() { }
    
    public var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack {
                    BuildSelector()
                        .padding(.bottom, 10)
                    
                    if let stats = analyzer.stats {
                        BuildStatsView(stats: stats)
                    }
                }
                .scenePadding(.horizontal)
                
            }
        }
        .foregroundStyle(.primary)
    }
}

#Preview {
    StatViewPortrait()
}
