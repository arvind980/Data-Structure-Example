import UIKit

class CirculerNode<T> {
    var value: T
    var next : CirculerNode<T>?
    
    init(value: T, next: CirculerNode<T>? = nil) {
        self.value = value
        self.next = next
    }
}

class CirculerLinkedList<T> {
    var head : CirculerNode<T>?
    var tail : CirculerNode<T>?
    
    func enQueue(_ value: T){
        let newNode = CirculerNode(value: value)
        if head == nil{
            head = newNode
            tail = newNode
            tail?.next = head
        }else{
            tail?.next = newNode
            tail = newNode
            tail?.next = head
        }
    }
    
    func deQueue() -> T?{
        if head == nil { return nil }
        let value = head?.value
        
        if head === tail{
            head = nil
            tail = nil
        }else{
            head = head?.next
            tail?.next = head
        }
        
        return value
    }
    
    func printQueue(){
        if head == nil {
            print("Queue is empty")
            return
        }
        var currentNode = head
        while let node = currentNode{
            print(node.value, terminator: " ")
            currentNode = currentNode?.next
            if currentNode === head{
                break
            }
        }
    }
}


var queaue = CirculerLinkedList<Any>()

print(queaue.deQueue() ?? "Queue empty")

queaue.enQueue(8)
queaue.enQueue(12)
queaue.enQueue(20)
queaue.enQueue(21)
queaue.enQueue(22)

print(queaue.deQueue() ?? "Queue empty")
print(queaue.deQueue() ?? "Queue empty")

queaue.enQueue(30)
queaue.printQueue()
