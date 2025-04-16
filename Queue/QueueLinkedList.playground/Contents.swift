import UIKit

var greeting = "Hello, playground"

class QueueNode<T>{
    var value:T
    var next:QueueNode<T>?
    init(value: T, next: QueueNode<T>? = nil) {
        self.value = value
        self.next = next
    }
}

class QueueLinkedList<T>{
    var head:QueueNode<T>?
    var tail:QueueNode<T>?
    
    func enqueue(_ value: T){
        let newNode = QueueNode<T>(value: value)
        if head == nil{
            head = newNode
            tail = newNode
        }else{
            tail?.next = newNode
            tail = newNode
        }
    }
    
    func dequeue() -> T?{
        if head == nil{
            return nil
        }
        let valueToDequeue = head?.value
        head = head?.next
        if head == nil{
            tail = nil
        }
        return valueToDequeue
    }
    
    var isEmpty: Bool {
        return head == nil
    }
    
    var size: Int {
        var currentNode: QueueNode<T>? = head
        var count = 0
        while let node = currentNode {
            count += 1
            currentNode = node.next
        }
        return count
    }
    
    func printQueue(){
        var currentNode = head
        while let node = currentNode{
            print(node.value)
            currentNode = node.next
        }
    }
}


var queue = QueueLinkedList<Int>()
queue.enqueue(1)
queue.enqueue(8)
queue.enqueue(4)
queue.enqueue(12)

//queue.printQueue()

print("Queue size: \(queue.size)")
print("Is queue empty: \(queue.isEmpty)")

print(queue.dequeue() ?? "Queue is empty")
print(queue.dequeue() ?? "Queue is empty")
print(queue.dequeue() ?? "Queue is empty")
print(queue.dequeue() ?? "Queue is empty")
queue.enqueue(13)

queue.printQueue()
print("Queue size: \(queue.size)")

