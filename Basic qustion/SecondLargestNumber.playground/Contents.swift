import UIKit

//func getSecondLargestNumber(arr:[Int])->(Int?,Int?)?{
//    if arr.count<2{
//        return nil
//    }
//    var largestNum:Int = 0
//    var secondLargestNum:Int = 0
//    
//    var largestIndex = 0
//    var secondIndex = 0
//    
//    for (i, num) in arr.enumerated(){
//        if num>largestNum{
//            secondLargestNum = largestNum
//            largestNum = num
//            secondIndex = largestIndex
//            largestIndex = i
//        }else if num > secondLargestNum && num != largestNum{
//            secondLargestNum = num
//            secondIndex = i
//        }
//    }
//    
//    return (secondLargestNum,secondIndex)
//}


func getSecondLargestNumber(arr: [Int]) -> (Int, Int)? {
    if arr.count < 2 { return nil }

    var largest = (value: Int.min, index: -1)
    var second = (value: Int.min, index: -1)

    for (i, num) in arr.enumerated() {
        if num > largest.value {
            second = largest
            largest = (num, i)
        } else if num > second.value && num != largest.value {
            second = (num, i)
        }
    }

    return second.index == -1 ? nil : second
}

let numbers = [-44, -44]

print("secondLargestNum", getSecondLargestNumber(arr: numbers) ?? "No element found")
