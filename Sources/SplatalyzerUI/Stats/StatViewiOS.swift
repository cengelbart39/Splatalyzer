//
//  SwiftUIView.swift
//  
//
//  Created by Christopher Engelbart on 3/26/24.
//

import SwiftUI

#if os(iOS)
import UIKit

public struct StatViewiOS: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    @StateObject public var analyzer = SplatalyzerViewModel()
    
    @State private var isPortrait = false
    @State private var windowSize = CGSize.zero
    
    public init() { }
    
    public var body: some View {
        Group {
            if UIDevice.current.userInterfaceIdiom == .phone {
                if horizontalSizeClass == .compact && verticalSizeClass == .regular {
                    StatViewPortrait()
                    
                } else if verticalSizeClass == .compact {
                    StatViewLandscape()
                }
                
            } else {
                if (horizontalSizeClass == .compact && verticalSizeClass == .regular) || isPortrait {
                    StatViewPortrait()
                    
                } else if UIApplication.shared.isSplitOrSlideOver  {
                    StatViewLandscape()
                    
                } else {
                    StatViewSideBySide()
                }
            }
        }
        .overlay(content: {
            GeometryReader { geo in
                Color.clear
                    .onAppear {
                        self.windowSize = geo.frame(in: .local).size
                        print(windowSize)
                    }
                    .onChange(of: geo.frame(in: .local).size) { oldValue, newValue in
                        if oldValue != newValue {
                            self.windowSize = newValue
                            print(windowSize)
                        }
                    }
            }
        })
        .environmentObject(analyzer)
        .onAppear {
            self.isPortrait = UIDevice.current.orientation.isPortrait
        }
        .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
            guard let scene = UIApplication.shared.windows.first?.windowScene else { return }
            print(scene.interfaceOrientation.isPortrait)
            self.isPortrait = scene.interfaceOrientation.isPortrait
        }
    }
}

#Preview {
    StatViewiOS()
}

#endif
