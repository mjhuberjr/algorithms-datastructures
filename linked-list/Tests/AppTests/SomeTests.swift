import Foundation
import XCTest
@testable import App

class SomeTests: XCTestCase {
    
    override func setUp() { }
    
    func testEmptyList() {
        let linkedList = LinkedList<Int>()
        XCTAssertEqual(0, linkedList.count, "This test failed because the linked list contains a node.")
    }
    
    func testHeadAndTailWithSingleNodeUsingAddFirstValue() {
        let linkedList = LinkedList<Int>()
        linkedList.addFirst(value: 131)
        XCTAssertEqual(131, linkedList.head?.value, "This test failed because the head is not the correct value.")
        XCTAssertEqual(131, linkedList.tail?.value, "This test failed because the tail is not the correct value.")
    }
    
    func testHeadAndTailWithSingleNodeUsingAddFirstNode() {
        let linkedList = LinkedList<Int>()
        let node = Node(value: 131)
        linkedList.addFirst(node: node)
        XCTAssertEqual(131, linkedList.head?.value, "This test failed because the head is not the correct value.")
        XCTAssertEqual(131, linkedList.tail?.value, "This test failed because the tail is not the correct value.")
    }
    
    func testHeadAndTailWithTwoNodesUsingAddFirstValue() {
        let linkedList = LinkedList<Int>()
        linkedList.addFirst(value: 1)
        linkedList.addFirst(value: 13)
        XCTAssertEqual(13, linkedList.head?.value, "This test failed because the head is not the correct value.")
        XCTAssertEqual(1, linkedList.tail?.value, "This test failed because the tail is not the correct value.")
    }
    
    func testHeadAndTailWithTwoNodesUsingAddFirstValueAndAddLastValue() {
        let linkedList = LinkedList<Int>()
        linkedList.addFirst(value: 13)
        linkedList.addLast(value: 1)
        XCTAssertEqual(13, linkedList.head?.value, "This test failed because the head is not the correct value.")
        XCTAssertEqual(1, linkedList.tail?.value, "This test failed because the tail is not the correct value.")
    }
    
    func testHeadAndTailWithTwoNodesAfterRemovingFirst() {
        let linkedList = LinkedList<Int>()
        linkedList.addFirst(value: 13)
        linkedList.addLast(value: 1)
        linkedList.removeFirst()
        XCTAssertEqual(1, linkedList.head?.value, "This test failed because the head is not the correct value.")
        XCTAssertNil(linkedList.tail)
    }
    
    func testHeadAndTailWithTwoNodesAfterRemovingLast() {
        let linkedList = LinkedList<Int>()
        linkedList.addFirst(value: 13)
        linkedList.addLast(value: 1)
        linkedList.removeLast()
        XCTAssertEqual(13, linkedList.head?.value, "This test failed because the head is not the correct value.")
        XCTAssertEqual(13, linkedList.tail?.value, "This test failed because the tail is not the correct value.")
    }
    
}

/*
extension SomeTests {

    static let allTests = [
        // Tests for Linux implementation.
    ]
    
}
 */
