//
//  MainWeaponPicker.swift
//  
//
//  Created by Christopher Engelbart on 1/13/24.
//

import SwiftUI

struct MainWeaponPicker: View {
    @Binding var mainWeapon: MainWeapon
    
    var body: some View {
        Menu {
            ForEach(WeaponClass.allCases, id: \.self) { type in
                Menu {
                    ForEach(MainWeapon.getWeapons(for: type), id: \.self) { weapon in
                        Button(action: {
                            self.mainWeapon = weapon
                        }, label: {
                            Label(
                                title: { Text(weapon.rawValue) },
                                icon: { Image(uiImage: weapon.image ?? UIImage())}
                            )
                        })

                    }
                } label: {
                    Label(
                        title: { Text(type.rawValue) },
                        icon: { Image(uiImage: type.image ?? UIImage())}
                    )
                }
            }
        } label : {
            Label(
                title: { Text(mainWeapon.rawValue) },
                icon: {
                    Image(uiImage: mainWeapon.image ?? UIImage())
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }
                
            )
        }
    }
}

#Preview {
    MainWeaponPicker(mainWeapon: .constant(MainWeapon.allCases.first!))
}
