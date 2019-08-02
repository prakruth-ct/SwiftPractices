//: [Previous](@previous)

import Foundation

func sort(numArr : inout [Int]) -> [Int]{
    
    //var numArr = numArr2
    let lengthOfArray = numArr.count
    
    for index in 0..<lengthOfArray{
        
        for jIndex in 0..<lengthOfArray-index-1{
            if(numArr[jIndex] > numArr[jIndex+1]){
                let temp = numArr[jIndex]
                numArr[jIndex] = numArr[jIndex+1]
                numArr[jIndex+1] = temp
            }
        }
    }
    return numArr
    
    //return [1,2,3]
}


var arr = [12,33,1,36,2,1,0,1,1,25,69,63,15,225,1]
print(arr)
print(sort(numArr: &arr))
