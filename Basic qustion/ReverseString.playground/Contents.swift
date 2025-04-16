import UIKit

func getReverseString(string:String)->String{
    var chars = Array(string)
    var left = 0
    var right = string.count-1
    
    while left < right {
        (chars[left], chars[right]) = (chars[right], chars[left])
        left += 1
        right -= 1
    }
    
    return String(chars)
}

let str = "Hello, World!"
print(getReverseString(string: str))

