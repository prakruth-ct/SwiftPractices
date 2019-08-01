import UIKit

class Suffix{
    
    var inputString : String
    var suffix : String
    
    init(inputString : String, suffix : String){
        
        self.inputString = inputString
        self.suffix = suffix
    }
    
    func countSuffix() -> Int{
        
        let inpStrCopy = self.inputString
        let suffixCopy = self.suffix
        var suffixCount : Int = 0
        
        print("Input String: \(inpStrCopy)  Suffix: \(suffixCopy)")
        let tokenizedStr = inpStrCopy.components(separatedBy: " ")
        print(tokenizedStr)
        for elem in tokenizedStr{
            if elem.hasSuffix(suffixCopy){
                suffixCount += 1
            }
        }
        
        return suffixCount
    }
}

var obj = Suffix(inputString: "Geeks For Geeks is a computer science portal for geeks", suffix: "ks")
print(obj.countSuffix())
