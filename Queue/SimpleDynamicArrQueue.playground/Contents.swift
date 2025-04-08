import UIKit

struct QueueArr<T>{
    var queue:[T] = []
    
    mutating func enqueue(_ element:T){
        queue.append(element)
    }
    mutating func dequeue() -> T?{
        queue.isEmpty ? nil : queue.removeFirst()
    }
    
    var peak: T?{
        queue.first
    }
    
    var isEmpty: Bool{
        queue.isEmpty
    }
    
    var size:Int{
        queue.count
    }
}

var queue = QueueArr<Int>()
print(queue.isEmpty)
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)

print(queue.isEmpty)
print(queue.peak!)
print(queue.size) 

queue.dequeue()
print(queue.peak!)
