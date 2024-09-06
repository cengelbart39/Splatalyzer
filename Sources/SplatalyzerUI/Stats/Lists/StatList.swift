//
//  StatList.swift
//
//
//  Created by Christopher Engelbart on 2/3/24.
//

import SwiftUI
import Splatalyzer

/// A view that displays a collapsable list of stats
public struct StatList<Content: View>: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    /// The title of the stats category
    public var title: String
    
    public var content: Content
    
    public var image: PlatformImage?
    
    public init(title: String, image: PlatformImage?, content: Content) {
        self.title = title
        self.image = image
        self.content = content
    }
    
    public init(title: String, image: PlatformImage? = nil, @ViewBuilder content: () -> Content) {
        self.title = title
        self.image = image
        self.content = content()
    }
    
    /// Whether the view is collapsed
    @State public var isCollapsed = true
    
    @State var labelHeight = CGFloat.zero
    
    public var body: some View {
        VStack(alignment: .leading) {
            Button(action: {
                withAnimation {
                    self.isCollapsed.toggle()
                }
            }, label: {
                HStack {
                    if image != nil {
                        Image(platformImage: image)
                            .frame(maxHeight: labelHeight)
                    }
                    
                    Text(title)
                        .font(.title3)
                        .overlay(
                            GeometryReader { geo in
                                Color.clear
                                    .onAppear {
                                        self.labelHeight = geo.frame(in: .local).size.height
                                    }
                            }
                        )
                    
                    Spacer()
                    
                    Image(systemName: isCollapsed ? "chevron.right" : "chevron.down")
                        .font(.title3)
                }
//                .bold()
            })
            .contentTransition(.symbolEffect(.replace))
            .cardBackground(for: colorScheme)
            .accessibilityElement(children: .combine)
            
            if !isCollapsed {
                content
            }
        }
    }
}
