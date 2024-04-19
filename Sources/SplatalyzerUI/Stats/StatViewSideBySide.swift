//
//  StatViewSideBySide.swift
//
//
//  Created by Christopher Engelbart on 1/17/24.
//

import SwiftUI

/// A side-by-side display of of ``BuildSelector`` and Build Stats
public struct StatViewSideBySide: View {
    
    @StateObject public var analyzer = SplatalyzerViewModel()
    
    public init() { }
    
    public var body: some View {
        GeometryReader { geo in
            HStack(spacing: 0) {
                ScrollView {
                    BuildSelector()
                        .frame(width: geo.size.width / 2, height: geo.size.height, alignment: .center)
                }
                
                if let stats = analyzer.stats {
                    ScrollView {
                        BuildStatsView(stats: stats)
                            .padding()
                    }
                    .frame(maxWidth: geo.size.width / 2, alignment: .center)
                }
                
            }
        }
        .foregroundStyle(.primary)
        .padding(.trailing, 10)
        .environmentObject(analyzer)
    }
}

#Preview {
    StatViewSideBySide()
}
