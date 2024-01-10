//
//  BuildStats.swift
//
//
//  Created by Christopher Engelbart on 1/9/24.
//

import Foundation

struct WeaponStats {
    private let multiShotDict: [MainRowId : Int] = [
        .l3Nozzlenose : 3,
        .l3NozzlenoseD : 3,
        .h3Nozzlenose : 3,
        .h3NozzlenoseD : 3,
        .reeflux450 : 3,
        .reeflux450Deco : 3,
        .bloblobber : 4,
        .bloblobberDeco : 4,
        .dreadWringer : 2
    ]
    
    let subWeapon: SubWeapon
    let specialWeapon: SpecialWeapon
    let brellaCanopyHp: Int?
    let fullChargeSeconds: Double?
    let maxChargeHoldSeconds: Double?
    let speedType: WeaponSpeedType
    let multiShots: Int?
    
    init(_ mainInfo: MainWeaponData) {
        self.subWeapon = mainInfo.subWeapon
        self.specialWeapon = mainInfo.specialWeapon
        self.brellaCanopyHp = mainInfo.canopyHP != nil ? mainInfo.canopyHP! / 10 : nil
        self.fullChargeSeconds = mainInfo.chargeFrameFullCharge.framesToSeconds()
        self.maxChargeHoldSeconds = mainInfo.keepChargeFullFrame.framesToSeconds()
        self.speedType = mainInfo.weaponSpeedType ?? .mid
        self.multiShots = self.multiShotDict[mainInfo.mainWeaponId]
    }
}



extension Optional<Int> {
    func framesToSeconds() -> Double? {
        if self == nil { return nil }
        
        return Double(self!) / 60
    }
}
