import Foundation

public class LinkedList<T> {
    
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
    
}
