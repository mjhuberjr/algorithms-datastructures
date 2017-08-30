import Foundation

public class LinkedList<T> {
    
    public var head: Node<T>?
    public var tail: Node<T>?
    
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
    
}
