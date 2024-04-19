//
//  GearPieceView.swift
//  
//
//  Created by Christopher Engelbart on 1/13/24.
//

import Splatalyzer
import SwiftUI

/// A row of abilities, consiting of 1 main and 3 sub abilities.
public struct GearPieceView: View {
    /// The abilities of the gear piece
    @Binding public var gearPiece: GearPiece
        
    public init(gearPiece: Binding<GearPiece>) {
        self._gearPiece = gearPiece
    }
    
    @State var subSize = CGFloat.zero
    
    public var body: some View {
        HStack() {
            AbilityView(ability: $gearPiece.main, isMain: true, restriction: gearPiece.slot)
                .overlay(
                    GeometryReader { geo in
                        Color.clear
                            .onAppear {
                                self.subSize = geo.frame(in: .local).size.height
                            }
                            .onChange(of: geo.frame(in: .local).size.height) { _, newValue in
                                self.subSize = newValue
                            }
                    }
                )

            AbilityView(ability: $gearPiece.sub1, isMain: false, restriction: .none)
                .frame(maxHeight: subSize * 0.8)
            
            AbilityView(ability: $gearPiece.sub2, isMain: false, restriction: .none)
                .frame(maxHeight: subSize * 0.8)
            
            AbilityView(ability: $gearPiece.sub3, isMain: false, restriction: .none)
                .frame(maxHeight: subSize * 0.8)
        }
    }
}
