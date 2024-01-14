//
//  AbilityView.swift
//  
//
//  Created by Christopher Engelbart on 1/14/24.
//

import SwiftUI

struct AbilityView: View {
    
    @Binding var ability: Ability
    
    var isMain: Bool
    
    var restriction: AbilityRestriction
    
    @State var showCover = false
    
    var body: some View {
        let frame: CGFloat = isMain ? 100 : 80
        
        Button(action: {
            showCover = true
        }, label: {
            Image(uiImage: ability.image ?? UIImage())
                .resizable()
                .scaledToFit()
                .padding(5)
                .background(.regularMaterial, in: Circle())
                .frame(width: frame, height: frame)
        })
        .buttonStyle(.plain)
        .fullScreenCover(isPresented: $showCover, onDismiss: {
            self.showCover = false
        }, content: {
            AbilityKeyboardView(currentAbility: $ability, restriction: restriction)
        })
    }
}

#Preview {
    AbilityView(ability: .constant(.ninjaSquid), isMain: true, restriction: .clothesOnly)
}
