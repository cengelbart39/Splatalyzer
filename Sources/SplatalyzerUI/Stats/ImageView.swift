//
//  ImageView.swift
//
//
//  Created by Christopher Engelbart on 2/3/24.
//

import SwiftUI

/// A view that can display a `Image` from a `NSImage` or `UIImage` depending on OS.
public struct ImageView: View {
    
    #if os(macOS)
    /// A `NSImage`
    /// - Note: Other OSes uses `UIImage` instead
    public var image: NSImage?
    
    public init(image: NSImage? = nil) {
        self.image = image
    }
    #else
    /// A `UIImage`
    /// - Note: macOS uses `NSImage` instead
    public var image: UIImage?
    
    public init(image: UIImage? = nil) {
        self.image = image
    }
    #endif
    
    public var body: some View {
        #if os(macOS)
        Image(nsImage: image ?? NSImage())
            .resizable()
            .scaledToFit()
            .accessibilityHidden(true)
        #else
        Image(uiImage: image ?? UIImage())
            .resizable()
            .scaledToFit()
            .accessibilityHidden(true)
        #endif
    }
}
