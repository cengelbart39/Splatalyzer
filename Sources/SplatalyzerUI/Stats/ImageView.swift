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
    
    /// Initializes the view with an optional `NSImage` and a target size.
    /// - Parameters:
    ///   - image: The source `NSImage`. If nil, a blank image is used.
    ///   - targetSize: The maximum width and height to scale the image down to.
    public init(image: NSImage?, targetSize: CGFloat = 16) {
        if let image = image {
            let newSize = NSSize(width: targetSize, height: targetSize)
            
            let scaledImage = NSImage(size: newSize, flipped: false) { dstRect in
                image.draw(
                    in: dstRect,
                    from: NSRect(origin: .zero, size: image.size),
                    operation: .copy,
                    fraction: 1.0
                )
                return true
            }
            
            self.image = scaledImage
            
        } else {
            self.image = nil
        }
    }
    #else
    /// A `UIImage`
    /// - Note: macOS uses `NSImage` instead
    public var image: UIImage?
        
    /// Initializes the view with an optional `UIImage` and a target size.
    /// - Parameters:
    ///   - image: The source `UIImage`. If nil, a blank image is used.
    ///   - targetSize: The maximum width and height to scale the image down to. (Currently unused)
    public init(image: UIImage? = nil, targetSize: CGFloat) {
        if let image = image {
            let newSize = CGSize(width: targetSize, height: targetSize)
            let renderer = UIGraphicsImageRenderer(size: newSize)
            
            let scaledImage = renderer.image { _ in
                image.draw(in: CGRect(origin: .zero, size: newSize))
            }
            
            self.image = scaledImage
            
        } else {
            self.image = nil
        }
    }
    #endif
    
    public var body: some View {
        #if os(macOS)
        Image(nsImage: image ?? NSImage())
            .accessibilityHidden(true)

        #else
        Image(uiImage: image ?? UIImage())
            .accessibilityHidden(true)
        #endif
    }
}
