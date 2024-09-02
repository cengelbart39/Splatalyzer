//
//  SubDecodingTests.swift
//  Splatalyzer
//
//  Created by Christopher Engelbart on 9/2/24.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.decode))
struct SubDecodingTests {
    
    let service = JSONService()
    
    @Test("Decode Angle Shooter")
    func decodeAngleShooter() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SubWeapon.angleShooter),
                into: AngleShooter.self)
        })
    }
    
    @Test("Decode Autobomb")
    func decodeAutobomb() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SubWeapon.autobomb),
                into: Autobomb.self)
        })
    }
    
    @Test("Decode Burst Bomb")
    func decodeBurstBomb() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SubWeapon.burstBomb),
                into: BurstBomb.self)
        })
    }
    
    @Test("Decode Curling Bomb")
    func decodeCurlingBomb() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SubWeapon.curlingBomb),
                into: CurlingBomb.self)
        })
    }
    
    @Test("Decode Fizzy Bomb")
    func decodeFizzyBomb() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SubWeapon.fizzyBomb),
                into: FizzyBomb.self)
        })
    }
    
    @Test("Decode Ink Mine")
    func decodeInkMine() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SubWeapon.inkMine),
                into: InkMine.self)
        })
    }
    
    @Test("Decode Point Sensor")
    func decodePointSensor() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SubWeapon.pointSensor),
                into: PointSensor.self)
        })
    }
    
    @Test("Decode Splash Wall")
    func decodeSplashWall() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SubWeapon.splashWall),
                into: SplashWall.self)
        })
    }
    
    @Test("Decode Splat Bomb")
    func decodeSplatBomb() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SubWeapon.splatBomb),
                into: SplatBomb.self)
        })
    }
    
    @Test("Decode Squid Beakon")
    func decodeSquidBeakon() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SubWeapon.squidBeakon),
                into: SquidBeakon.self)
        })
    }
    
    @Test("Decode Sprinkler")
    func decodeSprinkler() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SubWeapon.sprinkler),
                into: Sprinkler.self)
        })
    }
    
    @Test("Decode Suction Bomb")
    func decodeSuctionBomb() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SubWeapon.suctionBomb),
                into: SuctionBomb.self)
        })
    }
    
    @Test("Decode Torpedo")
    func decodeTorpedo() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SubWeapon.torpedo),
                into: Torpedo.self)
        })
    }
    
    @Test("Decode Toxic Mist")
    func decodeToxicMist() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SubWeapon.toxicMist),
                into: ToxicMist.self)
        })
    }
}
