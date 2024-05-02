//
//  MainWeaponPicker.swift
//  
//
//  Created by Christopher Engelbart on 1/13/24.
//

import Splatalyzer
import SwiftUI

/// A menu to choose a Main Weapon
///
/// The `Menu` is split into subcategories by `WeaponClass`.
///
/// Then weapons in that class are displayed as `Button`s to update ``mainWeapon``.
public struct MainWeaponPicker: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var subHeaderSize = CGFloat.zero
    
    /// The current main weapon
    @Binding public var mainWeapon: MainWeapon
    
    public init(mainWeapon: Binding<MainWeapon>) {
        self._mainWeapon = mainWeapon
    }
    
    public var body: some View {
        Menu {
            ForEach(WeaponClass.allCases, id: \.self) { type in
                Picker(selection: $mainWeapon) {
                    ForEach(MainWeapon.getWeapons(of: type), id: \.self) { weapon in
                        Label(title: {
                            Text(weapon.localized)
                            
                        }, icon: {
                            ImageView(image: weapon.image)
                        })
                        .tag(weapon)
                    }

                } label: {
                    Label(title: {
                        Text(type.localized)
                        
                    }, icon: {
                        ImageView(image: type.image)
                    })
                }
                .pickerStyle(.menu)
            }
        } label : {
//            Text(mainWeapon.localized)
            Label(
                title: { Text(mainWeapon.localized) },
                icon: {
                    ImageView(image: mainWeapon.image)
                        .frame(width: 50, height: 50)
                }
            )
        }
        .pickerBackground(for: colorScheme)
        .accessibilityElement(children: .combine)
        .accessibilityLabel("Main Weapon")
        .accessibilityValue(mainWeapon.localized)
    }
}

#Preview {
    MainWeaponPicker(mainWeapon: .constant(MainWeapon.allCases.first!))
}
