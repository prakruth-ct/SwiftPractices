//: [Previous](@previous)

import Foundation

var numArr = [1,2,3,4,5,6,6,4]
var dict : [Int : Int] = [:]

for elem in numArr{
    if(dict.keys.contains(elem)){
        print(elem)
        break
    }
    else{
        dict[elem] = 1
    }
}

