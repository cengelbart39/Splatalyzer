//
//  MainDamageList.swift
//
//
//  Created by Christopher Engelbart on 1/24/24.
//

import SwiftUI

struct MainDamageList: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var isCollapsed = true
    
    var mainDamages: [DamageStat]
    
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {
                withAnimation {
                    self.isCollapsed.toggle()
                }
            }, label: {
                HStack {
                    Text("Main Weapon Damage")
                        .font(.title3)
                    
                    Spacer()
                    
                    Image(systemName: isCollapsed ? "chevron.right" : "chevron.down")
                        .font(.title3)
                }
                .bold()
            })
            .contentTransition(.symbolEffect(.replace))
            .cardBackground(for: colorScheme)

            if !isCollapsed {
                LazyVStack(spacing: 10) {
                    ForEach(mainDamages, id: \.self) { stat in
                        DamageStatCard(stat: stat)
                    }
                }
            }
        }
    }
}
