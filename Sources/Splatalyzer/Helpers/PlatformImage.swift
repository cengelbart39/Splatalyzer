//
//  PlatformImage.swift
//  Splatalyzer
//
//  Created by Christopher Engelbart on 9/1/24.
//

import Foundation
import SwiftUI

#if os(macOS)
import AppKit
/// A `typealias` for `UIImage` or `NSImage` depending on platform
public typealias PlatformImage = NSImage
#else
import UIKit
/// A `typealias` for `UIImage` or `NSImage` depending on platform
public typealias PlatformImage = UIImage
#endif

public extension Image {
    init(platformImage: PlatformImage?) {
        #if os(macOS)
        self.init(nsImage: platformImage ?? PlatformImage())
        #else
        self.init(uiImage: platformImage ?? PlatformImage())
        #endif
    }
}
