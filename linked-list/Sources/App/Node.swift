import Foundation

public class Node<T> {
    
    public var value: T
    public var next: Node?
    
    public init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
    
}
