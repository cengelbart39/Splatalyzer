//
//  InkTankOptionsList.swift
//
//
//  Created by Christopher Engelbart on 1/24/24.
//

import SwiftUI

struct InkTankOptionsList: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var isCollapsed = true
    
    var options: [Int : [InkTankOption]]
    
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {
                withAnimation {
                    self.isCollapsed.toggle()
                }
            }, label: {
                HStack {
                    Text("Actions Per Ink Tank")
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
                    ForEach(Array(options.keys).sorted(by: { $0 < $1 }), id: \.self) { key in
                        InkTankOptionStatCard(subs: key, options: options[key]!)
                    }
                }
            }
        }
    }
}
