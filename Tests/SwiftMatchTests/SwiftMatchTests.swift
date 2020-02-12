import XCTest
@testable import SwiftMatch

final class SwiftMatchTests: XCTestCase {
    func testMatch() {
        let result: Int = match(5) {
            8 => { 5 }
            5 => { 13 }
        }
        XCTAssertEqual(result, 13)
    }

    static var allTests = [
        ("testMatch", testMatch),
    ]
}
