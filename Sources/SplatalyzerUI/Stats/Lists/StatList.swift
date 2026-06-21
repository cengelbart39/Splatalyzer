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
    
    public var imageSize: CGFloat
    
    #if os(macOS)
    public var image: NSImage?
    
    public init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.image = nil
        self.imageSize = .zero
        self.content = content()
    }
    
    public init(title: String, image: NSImage?, imageSize: CGFloat, @ViewBuilder content: () -> Content) {
        self.title = title
        self.image = image
        self.imageSize = imageSize
        self.content = content()
    }
    #else
    public var image: UIImage?
    
    public init(title: String, image: UIImage?, imageSize: CGFloat = .zero, content: Content) {
        self.title = title
        self.image = image
        self.imageSize = imageSize
        self.content = content
    }
    
    public init(title: String, image: UIImage? = nil, imageSize: CGFloat = .zero, @ViewBuilder content: () -> Content) {
        self.title = title
        self.image = image
        self.imageSize = imageSize
        self.content = content()
    }
    #endif
    
    /// Whether the view is collapsed
    @State public var isCollapsed = true
        
    public var body: some View {
        VStack(alignment: .leading) {
            Button(action: {
                withAnimation {
                    self.isCollapsed.toggle()
                }
            }, label: {
                HStack {
                    if image != nil {
                        ImageView(image: image, targetSize: imageSize)
                    }
                    
                    Text(title)
                        .font(.title3)
                    
                    Spacer()
                    
                    Image(systemName: isCollapsed ? "chevron.right" : "chevron.down")
                        .font(.title3)
                }
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
