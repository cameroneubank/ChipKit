//
//  ChipStackTests.swift
//  ChipKit
//
//  Created by Cameron Eubank on 3/13/21.
//

@testable import ChipKit
import Foundation
import XCTest

class ChipTests: XCTestCase {
    
    func test_chipValues_default() {
        XCTAssertEqual(Chip(color: .white).value, 1)
        XCTAssertEqual(Chip(color: .yellow).value, 2)
        XCTAssertEqual(Chip(color: .red).value, 5)
        XCTAssertEqual(Chip(color: .blue).value, 10)
        XCTAssertEqual(Chip(color: .grey).value, 20)
        XCTAssertEqual(Chip(color: .green).value, 25)
        XCTAssertEqual(Chip(color: .orange).value, 50)
        XCTAssertEqual(Chip(color: .black).value, 100)
        XCTAssertEqual(Chip(color: .pink).value, 250)
        XCTAssertEqual(Chip(color: .purple).value, 500)
        XCTAssertEqual(Chip(color: .burgundy).value, 1000)
        XCTAssertEqual(Chip(color: .lightBlue).value, 2000)
        XCTAssertEqual(Chip(color: .brown).value, 5000)
    }
    
    func test_chipValues_usd() {
        XCTAssertEqual(Chip(color: .white, currencyCode: .usd).value, 1)
        XCTAssertEqual(Chip(color: .yellow, currencyCode: .usd).value, 2)
        XCTAssertEqual(Chip(color: .red, currencyCode: .usd).value, 5)
        XCTAssertEqual(Chip(color: .blue, currencyCode: .usd).value, 10)
        XCTAssertEqual(Chip(color: .grey, currencyCode: .usd).value, 20)
        XCTAssertEqual(Chip(color: .green, currencyCode: .usd).value, 25)
        XCTAssertEqual(Chip(color: .orange, currencyCode: .usd).value, 50)
        XCTAssertEqual(Chip(color: .black, currencyCode: .usd).value, 100)
        XCTAssertEqual(Chip(color: .pink, currencyCode: .usd).value, 250)
        XCTAssertEqual(Chip(color: .purple, currencyCode: .usd).value, 500)
        XCTAssertEqual(Chip(color: .burgundy, currencyCode: .usd).value, 1000)
        XCTAssertEqual(Chip(color: .lightBlue, currencyCode: .usd).value, 2000)
        XCTAssertEqual(Chip(color: .brown, currencyCode: .usd).value, 5000)
    }
    
    func test_chipValues_mxn() {
        XCTAssertEqual(Chip(color: .white, currencyCode: .mxn).value, 20)
        XCTAssertEqual(Chip(color: .yellow, currencyCode: .mxn).value, 40)
        XCTAssertEqual(Chip(color: .red, currencyCode: .mxn).value, 100)
        XCTAssertEqual(Chip(color: .blue, currencyCode: .mxn).value, 200)
        XCTAssertEqual(Chip(color: .grey, currencyCode: .mxn).value, 400)
        XCTAssertEqual(Chip(color: .green, currencyCode: .mxn).value, 500)
        XCTAssertEqual(Chip(color: .orange, currencyCode: .mxn).value, 1000)
        XCTAssertEqual(Chip(color: .black, currencyCode: .mxn).value, 2000)
        XCTAssertEqual(Chip(color: .pink, currencyCode: .mxn).value, 5000)
        XCTAssertEqual(Chip(color: .purple, currencyCode: .mxn).value, 10000)
        XCTAssertEqual(Chip(color: .burgundy, currencyCode: .mxn).value, 20000)
        XCTAssertEqual(Chip(color: .lightBlue, currencyCode: .mxn).value, 40000)
        XCTAssertEqual(Chip(color: .brown, currencyCode: .mxn).value, 100000)
    }
    
    func test_chipValues_custom() {
        XCTAssertEqual(Chip(color: .white, value: 1).value, 1)
        XCTAssertEqual(Chip(color: .yellow, value: 1).value, 1)
        XCTAssertEqual(Chip(color: .red, value: 1).value, 1)
        XCTAssertEqual(Chip(color: .blue, value: 1).value, 1)
        XCTAssertEqual(Chip(color: .grey, value: 1).value, 1)
        XCTAssertEqual(Chip(color: .green, value: 1).value, 1)
        XCTAssertEqual(Chip(color: .orange, value: 1).value, 1)
        XCTAssertEqual(Chip(color: .black, value: 1).value, 1)
        XCTAssertEqual(Chip(color: .pink, value: 1).value, 1)
        XCTAssertEqual(Chip(color: .purple, value: 1).value, 1)
        XCTAssertEqual(Chip(color: .burgundy, value: 1).value, 1)
        XCTAssertEqual(Chip(color: .lightBlue, value: 1).value, 1)
        XCTAssertEqual(Chip(color: .brown, value: 1).value, 1)
    }
    
    func test_summedChipValues() {
        let chips: [Chip] = [
            Chip(color: .brown),
            Chip(color: .blue),
            Chip(color: .white)
        ]
        XCTAssertEqual(chips.summedChipValues, 5011)
    }
}
