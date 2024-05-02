//
//  MainWeaponStats.swift
//
//
//  Created by Christopher Engelbart on 1/17/24.
//

import Foundation

/// Represents statistics about the Main Weapon
public struct MainWeaponStats: Codable, Equatable {
    /// The kit's main weapon
    public let weapon: MainWeapon
    
    /// Shot Spread While Jumping
    public let shotSpreadAir: AbilityStat?
    
    /// Shot Spread on the Ground
    public let shotSpreadGround: Double?
    
    /// Secondary Mode Spread While Jumping
    public let shotAutofireSpreadAir: AbilityStat?
    
    /// Secondary Mode Spread on the Ground
    public let shotAutofireSpreadGround: Double?
    
    /// No Ink Recovery Time After Usage
    public let whiteInkSeconds: Double?
    
    /// Brella Shield Durability
    public let brellaCanopyHp: Int?
    
    /// Charge Time To Full
    public let fullChargeSeconds: Double?
    
    /// Max Charge Hold Time
    public let maxChargeSeconds: Double?
    
    public init(weapon: MainWeapon, shotSpreadAir: AbilityStat?, shotSpreadGround: Double?, shotAutofireSpreadAir: AbilityStat?, shotAutofireSpreadGround: Double?, whiteInkSeconds: Double?, brellaCanopyHp: Int?, fullChargeSeconds: Double?, maxChargeSeconds: Double?) {
        self.weapon = weapon
        self.shotSpreadAir = shotSpreadAir
        self.shotSpreadGround = shotSpreadGround
        self.shotAutofireSpreadAir = shotAutofireSpreadAir
        self.shotAutofireSpreadGround = shotAutofireSpreadGround
        self.whiteInkSeconds = whiteInkSeconds
        self.brellaCanopyHp = brellaCanopyHp
        self.fullChargeSeconds = fullChargeSeconds
        self.maxChargeSeconds = maxChargeSeconds
    }
    
    public init(
        weapon: MainWeapon,
        ap: AbilityPoints,
        data: MainWeaponData
    ) {
        self.weapon = weapon
        
        self.shotSpreadAir = StatHelper.shotSpreadAir(ap: ap, mainInfo: data)
        
        self.shotSpreadGround = data.standDegSwerve
        
        self.shotAutofireSpreadAir = StatHelper.shotAutofireSpreadAir(ap: ap, mainInfo: data)
        
        self.shotAutofireSpreadGround = data.variableStandDegSwerve
        
        self.whiteInkSeconds = data.inkRecoverStop?.framesToSeconds()
        
        self.brellaCanopyHp = data.canopyHP != nil ? data.canopyHP! / 10 : nil
        
        self.fullChargeSeconds = data.chargeFrameFullCharge?.framesToSeconds()
        
        self.maxChargeSeconds = data.keepChargeFullFrame?.framesToSeconds()
    }
    
    /// Checks if any property (besides ``weapon`` exists).
    ///
    /// This structure, uniquely, may have all of its properties be `nil`.
    /// If this is the case, there is no need to display this information.
    public func exists() -> Bool {
        return !(self.shotSpreadAir == nil && self.shotSpreadGround == nil && self.shotAutofireSpreadAir == nil && self.shotAutofireSpreadGround == nil && self.whiteInkSeconds == nil && self.brellaCanopyHp == nil && self.fullChargeSeconds == nil && self.maxChargeSeconds == nil)
    }
}
