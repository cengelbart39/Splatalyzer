//
//  UIApplication+Extension.swift
//
//
//  Created by Christopher Engelbart on 3/27/24.
//

import Foundation

#if canImport(UIKit)
import UIKit

extension UIApplication {
    public var isSplitOrSlideOver: Bool {
        guard let window = self.windows.filter({ $0.isKeyWindow }).first else { return false }
        return !(window.frame.width == window.screen.bounds.width)
    }
    
    public var isFullScreen: Bool {
        let appRect = UIApplication.shared.windows.first?.frame ?? CGRect.infinite
        let screenRect = UIScreen.main.bounds
        return appRect.width == screenRect.width && appRect.height == screenRect.height
    }
    
    public var screenSize: CGSize {
        guard let size = self.windows.filter({ $0.isKeyWindow }).first?.bounds.size else { return .zero }
        return size
    }
}
#endif

public enum iPadLayout: String, CaseIterable {
    case fullscreen
    case halfScreen
    case oneThirdScreen
    case twoThirdsScreen
}
