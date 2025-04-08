import UIKit

struct CirculerArrQueue<T> {
    private var elemets: [T?] = []
    private var rear: Int = -1
    private var front: Int = -1
    private var capacity: Int = 0
    
    init(size: Int) {
        self.capacity = size
        self.elemets = Array(repeating: nil, count: size)
    }
    
    var isEmpty: Bool {
        return rear == -1 && front == -1
    }
    
    var isFull: Bool {
        return (rear + 1) % capacity == front
    }
    
    mutating func enQueue(_ value: T) {
        if isFull {
            print("Quesue is full")
            return
        }else if isEmpty {
            front = 0
        }
        
        rear = (rear + 1) % capacity
        elemets[rear] = value
    }
    
    mutating func deQueue() -> T? {
        if isEmpty {
            return nil
        }
        let vale = elemets[front]
        elemets[front] = nil
        if front == rear {
            front = -1
            rear = -1
        }else{
            front = (front + 1 ) % capacity
        }
        return vale
    }
}


var queue = CirculerArrQueue<Int>(size: 5)

queue.enQueue(1)
queue.enQueue(2)
queue.enQueue(3)
queue.enQueue(4)
queue.enQueue(5)
queue.enQueue(6)


print(queue.deQueue() ?? "Quesue is empty")
print(queue.deQueue() ?? "Quesue is empty")
print(queue.deQueue() ?? "Quesue is empty")
print(queue.deQueue() ?? "Quesue is empty")
queue.enQueue(6)
print(queue.deQueue() ?? "Quesue is empty")
print(queue.deQueue() ?? "Quesue is empty")
