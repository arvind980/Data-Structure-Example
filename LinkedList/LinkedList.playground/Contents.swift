import UIKit

class Node<T>{
    var value:T
    var next:Node<T>?
    init(value: T, next: Node<T>? = nil) {
        self.value = value
        self.next = next
    }
}

class LinkedList<T> {
    var head: Node<T>?
    
    func append(_ value: T) {
        let newNode = Node(value: value)
        if head == nil{
            head = newNode
            return
        }
        
        var current = head
        
        while current?.next != nil {
            current = current?.next
        }
        
        current?.next = newNode
    }
    
    func printList() {
        var current = head
       
        while current != nil {
            print(current?.value ?? 0)
            current = current?.next
        }
    }
    
    func reverse() {
        var prev: Node<T>? = nil
        var current = head
        
        while current != nil{
           let next  =  current?.next
            current?.next = prev
            prev = current
            current = next
        }
        
        head = prev
    }
}

var list = LinkedList<Int>()
list.append(2)
list.append(3)
list.append(5)
list.append(8)

list.printList()

list.reverse()

list.printList()

