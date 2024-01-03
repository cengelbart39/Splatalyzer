import XCTest
@testable import Splatalyzer

final class DecodingTests: XCTestCase {
    func test_WeaponInfoSub_decode_noThrows() {
        let service = JSONServiceForTests()
        
        XCTAssertNoThrow(try service.decode(WeaponInfoSub.self, from: "WeaponInfoSub"))
    }
    
    func test_WeaponInfoSpecial_decode_noThrows() {
        let service = JSONServiceForTests()
        XCTAssertNoThrow(try service.decode(WeaponInfoSpecial.self, from: "WeaponInfoSpecial"))
    }
    
    func test_WeaponInfoMain_decode_noThrows() {
        let service = JSONServiceForTests()
        XCTAssertNoThrow(try service.decode(WeaponInfoMain.self, from: "WeaponInfoMain"))
    }
    
    func test_DamageRateInfoConfig_decode_noThrows() {
        let service = JSONServiceForTests()
        XCTAssertNoThrow(try service.decode(DamageRateInfoConfig.self, from: "spl__DamageRateInfoConfig.pp__CombinationDataTableData"))
    }
    
    func test_AbilityValues_decode_noThrows() {
        let service = JSONServiceForTests()
        XCTAssertNoThrow(try service.decode(AbilityValues.self, from: "ability-values"))
    }
}
