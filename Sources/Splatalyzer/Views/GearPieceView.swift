//
//  GearPieceView.swift
//  
//
//  Created by Christopher Engelbart on 1/13/24.
//

import SwiftUI

struct GearPieceView: View {
    @Binding var gearPiece: GearPiece
    
    @State var presentCover = false
    
    var body: some View {
        HStack() {
            AbilityView(ability: $gearPiece.main, isMain: true, restriction: gearPiece.slot)

            AbilityView(ability: $gearPiece.sub1, isMain: false, restriction: .none)
            
            AbilityView(ability: $gearPiece.sub2, isMain: false, restriction: .none)
            
            AbilityView(ability: $gearPiece.sub3, isMain: false, restriction: .none)
        }
    }
}

#Preview {
    GearPieceView(gearPiece: .constant(GearPiece(for: .headgearOnly)))
}

