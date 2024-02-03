//
//  InkTankOptionsList.swift
//
//
//  Created by Christopher Engelbart on 1/24/24.
//

import SwiftUI

/// Displays the Acrtions Per Ink Tank
public struct InkTankOptionsList: View {
    
    /// A dictionary containing the number of subs used and the number of shots remaining
    public var options: [Int : [InkTankOption]]
    
    public var body: some View {
        StatList(title: "Actions Per Ink Tank") {
            LazyVStack(spacing: 10) {
                ForEach(Array(options.keys).sorted(by: { $0 < $1 }), id: \.self) { key in
                    InkTankOptionStatCard(subs: key, options: options[key]!)
                }
            }
        }
    }
}
