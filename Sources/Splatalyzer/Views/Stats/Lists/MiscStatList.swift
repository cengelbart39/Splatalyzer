//
//  MiscStatList.swift
//
//
//  Created by Christopher Engelbart on 1/19/24.
//

import SwiftUI

struct MiscStatList: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var isCollapsed = true
    
    var miscStats: MiscStats
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation {
                    self.isCollapsed.toggle()
                }
            }, label: {
                HStack {
                    Text("Miscellaneous")
                        .font(.title3)
                    
                    Spacer()
                    
                    Image(systemName: isCollapsed ? "chevron.right" : "chevron.down")
                        .font(.title3)
                }
                .bold()
            })
            .contentTransition(.symbolEffect(.replace))
            .cardBackground(for: colorScheme)
            
            if !self.isCollapsed {
                LazyVStack(spacing: 10) {
                    AbilityStatCard(stat: miscStats.squidInkRecovery)
                    
                    AbilityStatCard(stat: miscStats.humanoidInkRecovery)
                    
                    AbilityStatCard(stat: miscStats.quickRespawnTime)
                    
                    AbilityStatCard(stat: miscStats.quickRespawnTimeRP)
                    
                    AbilityStatCard(stat: miscStats.superJumpGroundFrames)
                    
                    AbilityStatCard(stat: miscStats.superJumpTimeTotal)
                }
            }
        }
    }
}
