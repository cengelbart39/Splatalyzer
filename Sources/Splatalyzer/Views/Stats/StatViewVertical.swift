//
//  StatViewVertical.swift
//
//
//  Created by Christopher Engelbart on 1/24/24.
//

import SwiftUI

/// A vertical display of of ``BuildSelector`` and Build Stats
public struct StatViewVertical: View {
    
    @StateObject public var analyzer = Splatalyzer()
    
    public init() { }
    
    public var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack {
                    BuildSelector()
                    
                    if let stats = analyzer.stats {
                        BuildStatsView(stats: stats)
                    }
                }
                .padding(.horizontal)
                
            }
        }
        .foregroundStyle(.primary)
        .environmentObject(analyzer)
    }
}

#Preview {
    StatViewVertical()
}
