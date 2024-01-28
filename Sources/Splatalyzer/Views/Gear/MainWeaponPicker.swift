//
//  MainWeaponPicker.swift
//  
//
//  Created by Christopher Engelbart on 1/13/24.
//

import SwiftUI

public struct MainWeaponPicker: View {
    @Binding public var mainWeapon: MainWeapon
    
    public init(mainWeapon: Binding<MainWeapon>) {
        self._mainWeapon = mainWeapon
    }
    
    public var body: some View {
        Menu {
            ForEach(WeaponClass.allCases, id: \.self) { type in
                Menu {
                    ForEach(MainWeapon.getWeapons(of: type), id: \.self) { weapon in
                        Button(action: {
                            self.mainWeapon = weapon
                        }, label: {
                            Label(
                                title: { Text(weapon.localized) },
                                icon: {
                                    #if os(macOS)
                                    Image(nsImage: weapon.image ?? NSImage())
                                    #else
                                    Image(uiImage: weapon.image ?? UIImage())
                                    #endif
                                }
                            )
                        })

                    }
                } label: {
                    Label(
                        title: { Text(type.localized) },
                        icon: {
                            #if os(macOS)
                            Image(nsImage: type.image ?? NSImage())
                            #else
                            Image(uiImage: type.image ?? UIImage())
                            #endif
                        }
                    )
                }
            }
        } label : {
            Label(
                title: { Text(mainWeapon.localized) },
                icon: {
                    #if os(macOS)
                    Image(nsImage: mainWeapon.image ?? NSImage())
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 50, height: 50)
                    #else
                    Image(uiImage: mainWeapon.image ?? UIImage())
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    #endif
                }
                
            )
        }
    }
}

#Preview {
    MainWeaponPicker(mainWeapon: .constant(MainWeapon.allCases.first!))
}
