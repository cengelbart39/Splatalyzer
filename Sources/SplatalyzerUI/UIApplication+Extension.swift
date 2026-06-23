//
//  UIApplication+Extension.swift
//
//
//  Created by Christopher Engelbart on 3/27/24.
//

import Foundation

#if os(iOS)
import UIKit

extension UIApplication {
    private var connectedKeyWindow: UIWindow? {
        return self.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .first { $0.isKeyWindow }
    }
    
    public var isSplitOrSlideOver: Bool {
        guard let window = self.connectedKeyWindow, let screen = window.windowScene?.screen else { return false }
        return !(window.frame.width == screen.bounds.width)
    }
    
    public var isFullScreen: Bool {
        guard let window = self.connectedKeyWindow, let screen = window.windowScene?.screen else { return false }
        
        let appRect = window.frame
        let screenRect = screen.bounds
        return appRect.width == screenRect.width && appRect.height == screenRect.height
    }
    
    public var screenSize: CGSize {
        return connectedKeyWindow?.bounds.size ?? .zero
    }
    
    public var activeInterfaceOrientation: UIInterfaceOrientation {
            let windowScene = self.connectedScenes
                .first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene
            
            return windowScene?.interfaceOrientation ?? .unknown
        }
}
#endif

public enum iPadLayout: String, CaseIterable {
    case fullscreen
    case halfScreen
    case oneThirdScreen
    case twoThirdsScreen
}
