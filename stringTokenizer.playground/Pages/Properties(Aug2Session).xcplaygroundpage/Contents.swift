//: [Previous](@previous)

import Foundation

//stored Props
struct Employee{
    let name : String
    var age : Int
    
    init(name : String, age : Int){
        self.name = name
        self.age = age
    }
}

var structObj = Employee(name : "aa", age : 21)
print("\(structObj.name) \(structObj.age)")

class Employee2{
    let name : String
    var age : Int
    
    init(name : String, age : Int){
        self.name = name
        self.age = age
    }
}

var classObj = Employee2(name : "aa", age : 21)
print("\(classObj.name) \(classObj.age)")

class LazyVars{
    
    var name = "AA"
    lazy var message : String = {
        
        return "Hello \(name)"
    }()
}

var obj = LazyVars()
print(obj.message)


//COMPUTED VARS
class Square{
    
    var side : Double = 10.0
    var area : Double {
        
        get{
            return side*side
        }
        set(newValue){
            self.side = sqrt(newValue)
        }
    }
}

var obj3 = Square()
print(obj3.side)
print(obj3.area)
var obj4 = Square()
obj4.area = 12.0
print(obj4.side)

//INHERITANCE
class Fruits{
    
    var size : String
    var seed : String
    
    init(size : String, seed : String){
        self.size = size
        self.seed = seed
    }
    
    func printFunc(){
    
        print("This is a \(self.size) fruit and is \(self.seed)")
    }
}

class Apple : Fruits{
    
    var name : String = "Apple"
    
    init(){
        
        super.init(size : "small", seed : "having seeds")
    }
    
    override func printFunc(){
        print("\(name) is a \(size) fruit and is \(seed)")
    }
}

var obj5 = Apple()
print(obj5.printFunc())
//SUBSCRIPTS
class Strings{
    
    var str = "Prakruth"
    subscript(index : Int) -> Character{
        
        get{
            
            var temp = str.index(str.startIndex, offsetBy: index)
            return str[temp]
        }
        
        set(newValue){
            var temp = str.index(str.startIndex, offsetBy: index)
            str.remove(at: temp)
            str.insert(newValue, at: temp)
        }
    }
}
var obj6 = Strings()
print(obj6[7])
obj6[1] = "C"
print(obj6.str)


