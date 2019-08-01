//: [Previous](@previous)

import Foundation

var numArr = [1,8,7,8,6]
var startIndex : Int = 0
var endIndex : Int = 0
var key : Int = 8
var first = false

for i in 0..<numArr.count{
    if (numArr[i]==key) && (!first){
        startIndex = i
        first = true
    }
    else if(numArr[i] == key) && first{
        if(endIndex < i){
            endIndex = i
        }
    }
}
if(!first){
    
    print("Not in array")
}
else if(first && endIndex == 0){
    
    print("Only oonce")
}
else{
    print("\(startIndex)   \(endIndex)")
}
