import UIKit

func findPairsWithSum(arr: [Int], target: Int)->[(Int,Int)]{
    var seen = Set<Int>()
    var pairs:[(Int,Int)] = []
    
    for num in arr{
        let otherNum = target - num
        if seen.contains(otherNum){
           pairs.append((otherNum,num))
        }
        
      seen.insert(num)
    }
    
    return pairs
}


let arr = [1, 4, 45, 6, 3, 2, 6]

print(findPairsWithSum(arr: arr, target: 7))
