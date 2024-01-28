//
//  SpecialDamageList.swift
//
//
//  Created by Christopher Engelbart on 1/24/24.
//

import SwiftUI

struct SpecialDamageList: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var isCollapsed = true
    
    var specialWeapon: SpecialWeapon
    var specialDamage: [DamageStat]
    
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {
                withAnimation {
                    self.isCollapsed.toggle()
                }
            }, label: {
                HStack {
                    Text("\(specialWeapon.localized) Damage", comment: "Refers to the damage done by the Special Weapon.")
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
                    ForEach(specialDamage, id: \.self) { stat in
                        DamageStatCard(stat: stat)
                    }
                }
            }
        }
    }
}
