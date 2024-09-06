//
//  SpecialDecodingTests.swift
//  Splatalyzer
//
//  Created by Christopher Engelbart on 9/2/24.
//

import Testing
@testable import Splatalyzer

@Suite(.tags(.decode))
struct SpecialDecodingTests {
    
    let service = JSONService()
    
    @Test("Decode Big Bubbler")
    func decodeBigBubbler() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.bigBubbler),
                into: BigBubbler.self)
        })
    }
    
    @Test("Decode Booyah Bomb")
    func decodeBooyahBomb() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.booyahBomb),
                into: BooyahBomb.self)
        })
    }
    
    @Test("Decode Crab Tank")
    func decodeCrabTank() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.crabTank),
                into: CrabTank.self)
        })
    }
    
    @Test("Decode Inkjet")
    func decodeInkjet() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.inkjet),
                into: Inkjet.self)
        })
    }
    
    @Test("Decode Ink Storm")
    func decodeInkStorm() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.inkStorm),
                into: InkStorm.self)
        })
    }
    
    @Test("Decode Ink Vac")
    func decodeInkVac() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.inkVac),
                into: InkVac.self)
        })
    }
    
    @Test("Decode Killer Wail 5.1")
    func decodeKillerWail51() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.killerWail51),
                into: KillerWail51.self)
        })
    }
    
    @Test("Decode Kraken Royale")
    func decodeKrakenRoyale() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.krakenRoyale),
                into: KrakenRoyale.self)
        })
    }
    
    @Test("Decode Reefslider")
    func decodeReefslider() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.reefslider),
                into: Reefslider.self)
        })
    }
    
    @Test("Decode Splattercolor Screen")
    func decodeSplattercolorScreen() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.splattercolorScreen),
                into: SplattercolorScreen.self)
        })
    }
    
    @Test("Decode Super Chump")
    func decodeSuperChump() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.superChump),
                into: SuperChump.self)
        })
    }
    
    @Test("Decode Tacticooler")
    func decodeTacticooler() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.tacticooler),
                into: Tacticooler.self)
        })
    }
    
    @Test("Decode Tenta Missiles")
    func decodeTentaMissiles() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.tentaMissiles),
                into: TentaMissiles.self)
        })
    }
    
    @Test("Decode Triple Inkstrike")
    func decodeTripleInkstrike() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.tripleInkstrike),
                into: TripleInkstrike.self)
        })
    }
    
    @Test("Decode Triple Splashdown")
    func decodeTripleSplashdown() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.tripleSplashdown),
                into: TripleSplashdown.self)
        })
    }
    
    @Test("Decode Trizooka")
    func decodeTrizooka() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.trizooka),
                into: Trizooka.self)
        })
    }
    
    @Test("Decode Ultra Stamp")
    func decodeUltraStamp() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.ultraStamp),
                into: UltraStamp.self)
        })
    }
    
    @Test("Decode Wave Breaker")
    func decodeWaveBreaker() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.waveBreaker),
                into: WaveBreaker.self)
        })
    }
    
    @Test("Decode Zipcaster")
    func decodeZipcaster() {
        #expect(throws: Never.self, performing: {
            try service.decode(
                .weapon(SpecialWeapon.zipcaster),
                into: Zipcaster.self)
        })
    }
}
