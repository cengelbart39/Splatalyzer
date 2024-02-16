//
//  View+Extension.swift
//
//
//  Created by Christopher Engelbart on 1/24/24.
//

import Foundation
import SwiftUI

public extension View {
    func abilityBackground() -> some View {
        #if os(visionOS)
        return self.background(.regularMaterial, in: Circle())
        #else
        return self.background {
            Circle()
                .foregroundStyle(Color(red: 28/255, green: 28/255, blue: 30/255))
                .shadow(radius: 5)
        }
        #endif
    }
    
    func showAbilityKeyboard<Content>(
        isPresented: Binding<Bool>,
        onDismiss: (() -> Void)?,
        @ViewBuilder content: @escaping () -> Content
    ) -> some View where Content : View {
        #if os(visionOS)
        self.fullScreenCover(isPresented: isPresented, onDismiss: onDismiss, content: content)
        #else
        self.sheet(isPresented: isPresented, onDismiss: onDismiss, content: content)
        #endif
    }
    
    func cardBackground(for colorScheme: ColorScheme) -> some View {
        #if os(visionOS)
        return self
        
        #elseif canImport(UIKit)
        self
            .padding(10)
            .background {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(colorScheme == .light ? .white : Color(uiColor: .systemGray6))
                    .shadow(radius: 5)
            }
        #else
        return self
        #endif
    }
}
