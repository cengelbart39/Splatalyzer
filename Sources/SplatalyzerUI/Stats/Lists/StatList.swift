//
//  StatList.swift
//
//
//  Created by Christopher Engelbart on 2/3/24.
//

import SwiftUI

/// A view that displays a collapsable list of stats
public struct StatList<Content: View>: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    /// The title of the stats category
    public var title: String
    
    #if os(macOS)
    /// Displays a `NSImage` alongside `title`. If `nil`, only displays `title`.
    /// - Note: OSes other than macOS use `UIImage?` instead.
    public var image: NSImage?
    #else
    /// Displays a `UIImage` alongside `title`. If `nil`, only displays `title`.
    /// - Note: macOS use `NSImage?` instead.
    public var image: UIImage?
    #endif
    
    /// View content displayed within the collapsable list
    public let content: Content
    
    #if os(macOS)
    public init(title: String, image: NSImage?, content: Content) {
        self.title = title
        self.image = image
        self.content = content
    }
    #else
    public init(title: String, image: UIImage?, content: Content) {
        self.title = title
        self.image = image
        self.content = content
    }
    #endif
    
    /// Whether the view is collapsed
    @State public var isCollapsed = true
    
    #if os(macOS)
    /// - Note: OSes other than macOS uses `UIImage` instead.
    public init(title: String, image: NSImage? = nil, @ViewBuilder content: () -> Content) {
        self.title = title
        self.image = image
        self.content = content()
    }
    #else
    /// - Note: macOS uses `NSImage` instead.
    public init(title: String, image: UIImage? = nil, @ViewBuilder content: () -> Content) {
        self.title = title
        self.image = image
        self.content = content()
    }
    #endif
    
    @State var labelHeight = CGFloat.zero
    
    public var body: some View {
        VStack(alignment: .leading) {
            Button(action: {
                withAnimation {
                    self.isCollapsed.toggle()
                }
            }, label: {
                HStack {
                    if let uiImage = image {
                        HStack(alignment: .center) {
                            ImageView(image: image)
                                .frame(maxHeight: labelHeight)
                            
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
                        }
                        
//                        let image = Image(uiImage: uiImage)
//                        
//                        Text("\(image) \(title)")
//                            .font(.title3)
//                        
//                        Label(title: {
//                            Text(title)
//                                .font(.title3)
//                            
//                        }, icon: {
//                            ImageView(image: image)
//                                .frame(width: 25)
//                        })
//                        
                    } else {
                        Text(title)
                            .font(.title3)
                    }
                    
                    Spacer()
                    
                    Image(systemName: isCollapsed ? "chevron.right" : "chevron.down")
                        .font(.title3)
                }
                .bold()
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
