import UIKit

func findPairsWithSum(arr: [Int], target: Int)->[(Int,Int)]{
    var seen = Set<Int>()
    var pairs = Set<IntPair>()
    
    for num in arr{
        let otherNum = target - num
        if seen.contains(otherNum){
            let pair = IntPair(a: min(num, otherNum), b: max(num, otherNum))
            if !pairs.contains(pair) {
                pairs.insert(pair)
            }
        }
        
      seen.insert(num)
    }
    
    return pairs.map { ($0.a, $0.b) }
}


let arr = [1, 4, 45, 6, 3, 2, 6]

print(findPairsWithSum(arr: arr, target: 7))

struct IntPair: Hashable {
    let a: Int
    let b: Int
}
