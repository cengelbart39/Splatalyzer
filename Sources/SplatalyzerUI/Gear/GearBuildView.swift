//
//  GearBuildView.swift
//  
//
//  Created by Christopher Engelbart on 1/13/24.
//

import Splatalyzer
import SwiftUI

/// Displays a full gear build; 3 main and 9 sub abilities
public struct GearBuildView: View {
    
    /// The current gear build
    @Binding public var gearBuild: GearBuild
    
    public init(gearBuild: Binding<GearBuild>) {
        self._gearBuild = gearBuild
    }
    
    public var body: some View {
        VStack {
            GearPieceView(gearPiece: $gearBuild.headgear)
            
            GearPieceView(gearPiece: $gearBuild.clothes)
            
            GearPieceView(gearPiece: $gearBuild.shoes)
        }
    }
}
