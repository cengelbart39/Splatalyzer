//
//  SubDefenseDamageList.swift
//  
//
//  Created by Christopher Engelbart on 1/19/24.
//

import SwiftUI

struct SubDefenseDamageList: View {
    @Environment(\.colorScheme) var colorScheme
    
    @State var isCollapsed = true
    
    var defenseDamage: [SubWeapon : [DamageEffectStat]]
    
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {
                withAnimation {
                    self.isCollapsed.toggle()
                }
            }, label: {
                HStack {
                    Text("Sub Weapon Damage Defense")
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
                ForEach(Array(defenseDamage.keys).sorted(by: { $0.rawValue < $1.rawValue }), id: \.self) { key in
                    if !defenseDamage[key]!.isEmpty {
                        SubDefenseDamageItem(key: key, values: defenseDamage[key]!)
                            .padding(.horizontal)
                    }
                }
            }
        }
    }
}

struct SubDefenseDamageItem: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var key: SubWeapon
    var values: [DamageEffectStat]
    
    @State var isCollapsed = true
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation {
                    self.isCollapsed.toggle()
                }
            }, label: {
                HStack {
                    Label {
                        Text(key.rawValue)
                            .font(.title3)
                        
                    } icon: {
                        #if os(macOS)
                        Image(nsImage: key.image ?? NSImage())
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25)
                        #else
                        Image(uiImage: key.image ?? UIImage())
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25)
                        #endif
                    }
                    
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
                    ForEach(values, id: \.self) { stat in
                        DamageEffectStatCard(stat: stat)
                    }
                }
            }
        }
    }
}
