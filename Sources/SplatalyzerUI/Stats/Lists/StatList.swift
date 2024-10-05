//
//  StatList.swift
//
//
//  Created by Christopher Engelbart on 2/3/24.
//

import SwiftUI
import Splatalyzer

#if os(macOS)
import AppKit
#else
import UIKit
#endif

/// A view that displays a collapsable list of stats
public struct StatList<Content: View>: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    /// The title of the stats category
    public var title: String
    
    public var content: Content
    
    #if os(macOS)
    public var image: NSImage?
    
    public init(title: String, image: NSImage?, content: Content) {
        self.title = title
        self.image = image
        self.content = content
    }
    
    public init(title: String, image: NSImage? = nil, @ViewBuilder content: () -> Content) {
        self.title = title
        self.image = image
        self.content = content()
    }
    #else
    public var image: UIImage?
    
    public init(title: String, image: UIImage?, content: Content) {
        self.title = title
        self.image = image
        self.content = content
    }
    
    public init(title: String, image: UIImage? = nil, @ViewBuilder content: () -> Content) {
        self.title = title
        self.image = image
        self.content = content()
    }
    #endif
    
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
                        ImageView(image: image)
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
