import UIKit

class Node<T>{
    var value:T
    var next:Node?
    
    init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

class StackLinkedList<T>{
    var top: Node<T>?
    private var count = 0
    func push(_ value:T){
        let topNode = Node(value: value, next: top)
        count += 1
        top = topNode
    }
    
    func pop() ->T?{
        guard let topNode = top else {return nil}
        top = topNode.next
        count -= 1
        return topNode.value
    }
    
    func peak() ->T? {
        guard let topNode = top else { return nil}
        return topNode.value
    }
    
    func isEmpty() -> Bool{
        return top == nil
    }
    
    func size() -> Int{
        return count
    }
}

var stack = StackLinkedList<Int>()
print("Pop element:",stack.pop() ?? "Stack is empty")
print("Is stack empty:",stack.isEmpty())
print("Stack size:",stack.size())
stack.push(1)
stack.push(2)
stack.push(3)
print("Is stack empty after push elements:",stack.isEmpty())
print("Stack size after push elements::",stack.size())
print("Top element:",stack.peak() ?? "Stack is empty")
print("Pop to element:",stack.pop() ?? "No element")
print("Stack size after pop elements::",stack.size())
