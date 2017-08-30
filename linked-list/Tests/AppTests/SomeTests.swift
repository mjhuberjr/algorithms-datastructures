import Foundation
import XCTest
@testable import App

class SomeTests: XCTestCase {
    override func setUp() { }
    func testSomething() {
        let person = Person(name: "Mike")
        XCTAssertEqual("Mike", person.name, "This test failed because the values are not equal")
    }
}

extension SomeTests {
    
    static let allTests = [
        ("testSomething", testSomething)
    ]
    
}
