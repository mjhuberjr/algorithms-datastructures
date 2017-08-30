import Foundation
import XCTest
@testable import App

class SomeTests: XCTestCase {
    
    override func setUp() { }
    
    func testHeadWithSingleNodeUsingAddValue() {
        let linkedList = LinkedList<Int>()
        linkedList.addFirst(value: 131)
        XCTAssertEqual(131, linkedList.head?.value, "This test failed because the head is not the correct value.")
        XCTAssertEqual(131, linkedList.tail?.value, "This test failed because the tail is not the correct value.")
    }
    
    func testHeadWithSingleNodeUsingAddNode() {
        let linkedList = LinkedList<Int>()
        let node = Node(value: 131)
        linkedList.addFirst(node: node)
        XCTAssertEqual(131, linkedList.head?.value, "This test failed because the head is not the correct value.")
        XCTAssertEqual(131, linkedList.tail?.value, "This test failed because the tail is not the correct value.")
    }
    
}

/*
extension SomeTests {

    static let allTests = [
        // Tests for Linux implementation.
    ]
    
}
 */
