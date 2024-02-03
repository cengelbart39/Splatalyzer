import XCTest
@testable import Splatalyzer

final class DecodingTests: XCTestCase {
    func test_WeaponInfoMain_decode_noThrows() {
        let service = JSONService()
        XCTAssertNoThrow(try service.decode(WeaponInfoMain.self, from: "WeaponInfoMain"))
    }
    
    func test_AbilityValues_decode_noThrows() {
        let service = JSONService()
        XCTAssertNoThrow(try service.decode(AbilityValues.self, from: "ability-values"))
    }
    
    func test_PlayerParams_decode_noThrows() {
        let service = JSONService()
        XCTAssertNoThrow(try service.decode(Player.self, from: "SplPlayer.game__GameParameterTable"))
    }
}
