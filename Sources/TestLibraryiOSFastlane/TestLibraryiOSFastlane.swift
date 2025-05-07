// The Swift Programming Language
// https://docs.swift.org/swift-book
import XCTest

final class MathUtilsTests: XCTestCase {

    func testSum() {
        let result = 2+3
        XCTAssertEqual(result, 5, "La suma debe ser 5")
    }

    func testSumWithZero() {
        let result = 0+7
        XCTAssertEqual(result, 7, "La suma con cero debe devolver el otro número")
    }
}
