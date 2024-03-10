//
//  SpecialDamagesTests.swift
//  
//
//  Created by Christopher Engelbart on 2/27/24.
//

import XCTest
@testable import Splatalyzer

final class SpecialDamagesTests: XCTestCase {
    
    let service = JSONService()

    func test_StatHelper_specialDamages_bigBubbler() throws {
        
        let data = try TestHelper.getSpecialData(for: .bigBubbler)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertTrue(dmgs.isEmpty)
    }

    func test_StatHelper_specialDamages_booyahBomb() throws {
        
        let data = try TestHelper.getSpecialData(for: .booyahBomb)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .specialTick))
    }
    
    func test_StatHelper_specialDamages_crabTank() throws {

        let data = try TestHelper.getSpecialData(for: .crabTank)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .specialCannon))
        XCTAssertTrue(dmgs.contains(type: .specialBulletMax))
        XCTAssertTrue(dmgs.contains(type: .specialBulletMin))
        XCTAssertTrue(dmgs.contains(type: .specialBump))
    }
    
    func test_StatHelper_specialDamages_inkStorm() throws {
        
        let data = try TestHelper.getSpecialData(for: .inkStorm)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .specialTick))
    }

    func test_StatHelper_specialDamages_inkVac() throws {

        let data =  try TestHelper.getSpecialData(for: .inkVac)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .specialMaxCharge))
        XCTAssertTrue(dmgs.contains(type: .specialMinCharge))
    }
    
    func test_StatHelper_specialDamages_inkjet() throws {

        let data =  try TestHelper.getSpecialData(for: .inkjet)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .bombNormal))
    }
    
    func test_StatHelper_specialDamages_killerWail51() throws {

        let data =  try TestHelper.getSpecialData(for: .killerWail51)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .specialTick))
    }

    func test_StatHelper_specialDamages_krakenRoyale() throws {

        let data =  try TestHelper.getSpecialData(for: .krakenRoyale)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .specialJump))
    }
    
    func test_StatHelper_specialDamages_reefslider() throws {
        
        let data =  try TestHelper.getSpecialData(for: .reefslider)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .bombNormal))
    }

    func test_StatHelper_specialDamages_splattercolorScreen() throws {

        let data =  try TestHelper.getSpecialData(for: .splattercolorScreen)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertTrue(dmgs.isEmpty)
    }
    
    func test_StatHelper_specialDamages_superChump() throws {
        
        let data =  try TestHelper.getSpecialData(for: .superChump)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .bombNormal))
    }
    
    func test_StatHelper_specialDamages_tacticooler() throws {

        let data =  try TestHelper.getSpecialData(for: .tacticooler)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertTrue(dmgs.isEmpty)
    }

    func test_StatHelper_specialDamages_tentaMissiles() throws {

        let data =  try TestHelper.getSpecialData(for: .tentaMissiles)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .bombNormal))
    }
    
    func test_StatHelper_specialDamages_tripleInkstrike() throws {

        let data = try TestHelper.getSpecialData(for: .tripleInkstrike)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertTrue(dmgs.isEmpty)
    }

    func test_StatHelper_specialDamages_tripleSplashdown() throws {

        let data =  try TestHelper.getSpecialData(for: .tripleSplashdown)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .bombNormal))
    }
    
    func test_StatHelper_specialDamages_trizooka() throws {

        let data =  try TestHelper.getSpecialData(for: .trizooka)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .bombNormal))
    }

    func test_StatHelper_specialDamages_ultraStamp() throws {

        let data =  try TestHelper.getSpecialData(for: .ultraStamp)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .specialThrow))
        XCTAssertTrue(dmgs.contains(type: .specialSwing))
    }
    
    func test_StatHelper_specialDamages_waveBreaker() throws {

        let data = try TestHelper.getSpecialData(for: .waveBreaker)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .wave))
    }

    func test_StatHelper_specialDamages_zipcaster() throws {

        let data =  try TestHelper.getSpecialData(for: .zipcaster)
        
        let dmgs = StatHelper.specialDamages(specialInfo: data)
        
        XCTAssertFalse(dmgs.isEmpty)
        XCTAssertTrue(dmgs.contains(type: .bombNormal))
    }
}
