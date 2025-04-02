import UIKit

struct ArrayStack<T>{
    var elements: [T] = []
    
    mutating func push(_ element: T) {
        elements.append(element)
    }
    
    mutating func pop() -> T? {
        elements.popLast()
    }
    
    func peak() -> T? {
        elements.last
    }
    
    func isEmpty() -> Bool{
        elements.isEmpty
    }

    func size() -> Int{
        elements.count
    }
}

var stack = ArrayStack<Int>()
print("Is stack isEmpty:", stack.isEmpty())
print("Stack size:",stack.size())
stack.push(2)
stack.push(3)
print("Stack peak:",stack.peak() ?? 0)
print("Is stack isEmpty:", stack.isEmpty())
print("Stack size:",stack.size())
print("Stack pop:",stack.pop() ?? 0)
print("Stack size ofter pop:",stack.size())

