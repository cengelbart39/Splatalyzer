//
//  GearBuildView.swift
//  
//
//  Created by Christopher Engelbart on 1/13/24.
//

import SwiftUI

struct GearBuildView: View {
    
    @Binding var gearBuild: GearBuild
    
    var body: some View {
        VStack {
            GearPieceView(gearPiece: $gearBuild.headgear)
            
            GearPieceView(gearPiece: $gearBuild.clothes)
            
            GearPieceView(gearPiece: $gearBuild.shoes)
        }
    }
}

#Preview {
    GearBuildView(gearBuild: .constant(GearBuild()))
}
