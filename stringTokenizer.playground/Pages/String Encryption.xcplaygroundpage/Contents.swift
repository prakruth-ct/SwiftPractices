//: [Previous](@previous)

import Foundation

class StringEncryption{
    
    var x : Int
    var inpStr : String
    
    init(x : Int, str : String){
        
        self.x = x
        self.inpStr = str
    }
    
    func makeCharArray(str : String) -> [Character] {
        
        var charArr = [Character]()
        for char in str{
            charArr.append(char)
        }
        return charArr
    }
    
    func encryptString(){
        
        var countDictionary : [Character : Int] = [:]
        for char in inpStr{
            
            if countDictionary.keys.contains(char){
                
                let temp = countDictionary[char]! + 1
                countDictionary.updateValue(temp, forKey: char)
            }
            else{
                countDictionary[char] = 1
            }
        }
        
        for char in inpStr{
            
            if(countDictionary[char]!%2 == 0){
                
                //GET ASCII AND CONTINUE
                let temp = String(char)
                let ascii = UnicodeScalar(temp)
                var ch : Character = "a"
                let singleCharUniScalar = UnicodeScalar(String(ch))
                //print(type(of : char))
                print(singleCharUniScalar)
            }
            else{
                
            }
        }
        print(countDictionary)
    }
}

var obj = StringEncryption(x : 3, str: "abcda")
obj.encryptString()

