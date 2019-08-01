import UIKit


class Testing{
    
    var number : Int
    
    init(number : Int){
    self.number = number
    }
    
    init() {
        self.number = 0
    }
    
    func checkForPalindrome() -> Bool{
        
        var copyOfNumber = self.number
        var reversedNumber = 0
        while copyOfNumber > 0{
            
            let tempVar = copyOfNumber % 10
            reversedNumber = (reversedNumber * 10) + tempVar
            copyOfNumber /= 10
        }
        if reversedNumber == self.number{
            return true
        }
        return false
    }
}

var obj1 = Testing(number : 151)
var obj2 = Testing(number : 1551)
var obj3 = Testing()

print(obj1.checkForPalindrome())
print(obj2.checkForPalindrome())
print(obj3.checkForPalindrome())





var charVar : Character =  "a"
print("CharVar is of type \(type(of : charVar))")

var str = "New String"
print("\(str)")

let strLen = str.count
//let strLen = str.startIndex..<str.endIndex
print(strLen)

//ask this
print(str.startIndex)



var indexTemp = str.index(after: str.startIndex)
print("Index: \(str[indexTemp])")

var indexTemp2 = str.index(str.startIndex, offsetBy: 4)
print("Index 2: \(str[indexTemp2])")

var range = str.startIndex..<indexTemp2
print("\(str[range])")



/*COLLECTIONS*/

//var intArr : [Int] = [1,23,3,4,5,7,8]
var intArr = [Int]()
intArr.append(0)
intArr.insert(25, at: 1)


print("")
for element in intArr{

    print(element, separator: "...", terminator: "")
}

for i in 0..<intArr.count{
    print(intArr[i])
}


intArr.forEach { (elem) in
    print(elem)
}


//Dictionary in a dictionary
var tempDict : [[String : Any]] = [["id" : 201, "name" : "Prakruth"], ["id" : 202, "name" : "bb"], ["id" : 204, "name" : "cc"]]

for value in tempDict{
    for (key, value2) in value{
        
        print("\(key)  \(value2)", separator: " __ ", terminator : "  ")
    }
    print()
}


/*-------------Control Loops------------*/


var num : Int = 1550
var num2 = num
var reversedNum : Int = 0

func reverseNumber(number : Int) -> Int {
    
    var num2 = number
    while(num2 > 0){
        let stage1 = num2 % 10
        //print(stage1)
        reversedNum = (reversedNum * 10) + stage1
        num2 /= 10
        //print(num2)
    }
    return reversedNum
}


print("Reversed: \(reverseNumber(number: 152))")

repeat{
    print("Atleast Once")
}while(false)
