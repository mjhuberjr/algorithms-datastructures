import Foundation

public class LinkedList<T: Equatable> {
    
    // MARK: - Properties
    
    public var head: Node<T>?
    public var tail: Node<T>?
    
    public var count: Int {
        if var node = head {
            var count = 1
            while let next = node.next {
                node = next
                count += 1
            }
            return count
        } else {
            return 0
        }
    }
    
    public init() { }
    
    // MARK: - Add
    
    public func addFirst(value: T) {
        let node = Node(value: value)
        addFirst(node: node)
    }
    
    public func addFirst(node: Node<T>?) {
        let temp = head
        head = node
        head?.next = temp
        
        if temp == nil {
            tail = head
        }
    }
    
    public func addLast(value: T) {
        let node = Node(value: value)
        addLast(node: node)
    }
    
    public func addLast(node: Node<T>?) {
        if count == 0 {
            head = node
        } else {
            tail?.next = node
        }
        
        tail = node
    }
    
    // MARK: - Remove
    
    public func removeFirst() {
        if count != 0 {
            head = head?.next
            if count - 1 == 0 {
                tail = nil
            }
        }
    }
    
    public func removeLast() {
        if count != 0 {
            if count == 1 {
                head = nil
                tail = nil
            } else {
                var current = head
                var index = 1
                while current?.next != nil {
                    guard index != count-1 else {
                        current?.next = nil
                        tail = current
                        return
                    }
                    current = current?.next
                    index += 1
                }
            }
        }
    }
    
    // MARK: - Contains
    
    public func contains(value: T) -> Bool {
        var current = head
        while current != nil {
            if current?.value == value {
                return true
            }
            current = current?.next
        }
        return false
    }
    
}
