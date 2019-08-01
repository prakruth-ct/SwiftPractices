//: [Previous](@previous)

import Foundation

class PI{
    
    let PI = "3.14"
    var inputString : String
    
    init(str : String){
        self.inputString = str
    }
    
    func makeCharArray(str : String) -> [Character] {
        
        var charArr = [Character]()
        for char in str{
            charArr.append(char)
        }
        return charArr
    }
    
    func replaceWithPI() -> String{
        
        let copyOfInput = self.inputString
        let charArr = makeCharArray(str: copyOfInput)
        var newStr : String = ""
        print(charArr)
        
        var i = 0
        while(i < charArr.count){
            if(i == charArr.count-1){
                newStr += String(charArr[i])
                break
            }
            if charArr[i] == "p"{
                if(charArr[i+1] == "i"){
                    newStr += "3.14"
                    i += 2
                }
                else{
                    newStr += String(charArr[i])
                    i += 1
                }
            }
            else{
                newStr += String(charArr[i])
                i += 1
            }
        }
        print(newStr)
        return "PI"
    }
}

var obj = PI(str : "pip")
obj.replaceWithPI()
