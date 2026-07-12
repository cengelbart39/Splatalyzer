//
//  StatEffectedByList.swift
//  Splatalyzer
//
//  Created by Christopher Engelbart on 7/9/26.
//

import Splatalyzer
import SwiftUI

/// Displays the abilities that effect a statistic
public struct StatEffectedByList: View {
    
    @Environment(\.colorScheme) private var colorScheme
    
    @ScaledMetric(relativeTo: .footnote)
    private var imageSize = 20
    
    public var abilities: [Ability]
    
    public init(abilities: [Ability]) {
        self.abilities = abilities
    }
    
    public var body: some View {
        HStack {
            ForEach(abilities, id: \.self) { ability in
                ImageView(image: ability.image, targetSize: imageSize)
                    .padding(5)
                    .abilityBackground(for: colorScheme)
                    .frame(width: 35)
                    .shadow(radius: colorScheme == .dark ? 5 : 0)
            }
        }
    }
}

#Preview {
    StatEffectedByList(abilities: [.swimSpeedUp, .ninjaSquid])
}
