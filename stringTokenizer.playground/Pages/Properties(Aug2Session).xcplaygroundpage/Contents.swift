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
            
            let temp = str.index(str.startIndex, offsetBy: index)
            return str[temp]
        }
        
        set(newValue){
            let temp = str.index(str.startIndex, offsetBy: index)
            str.remove(at: temp)
            str.insert(newValue, at: temp)
        }
    }
}
var obj6 = Strings()
print(obj6[7])
obj6[1] = "C"
print(obj6.str)


//AUG 05
print("----------------Aug 05---------------------")

enum MathError : Error{
    
    case divideByZero
    case rootNegetive
}

class EH{
    
    func divide(num : Int, denom : Int) throws -> Int{
        
        if(denom == 0){
            throw MathError.divideByZero
        }
        return (num/denom)
    }
    
    func root(num : Int) throws -> Double{
        
        if(num < 0){
            throw MathError.rootNegetive
        }
        return sqrt(Double(num))
    }
}

var obj7 = EH()

do{
    try
        print(obj7.divide(num: 10, denom: 2))
    try print(obj7.root(num: -25))
    
} catch MathError.divideByZero{
    print("Divie By Zero")
} catch MathError.rootNegetive{
    print("Root of negeive")
}

class A {
    
    var a = 10
}
class B {
    
    var b = 20
}

class C{
    
    var c = 30
}

var aObj = A()
var bObj = B()
var cObj = C()

var arr : [Any] =  [aObj, bObj, cObj]

print(type(of : arr))
//print(arr[1].b)

//for x in arr{
//    if x is B{
//        print ("b")
//    }
//}

print("cdsanas")
//for x in arr{
//    if x is B{
//        let y = x as? B
//        if let xx = y?.b{
//            print(xx)
//        }
//    }
//    else{
//        print(x.a)
//    }
//}

for x in arr{
    if let y = x as? B{
        print(y.b)
    }
}


extension String{

    func getCharAt(str : String, index : Int) -> Character{
        
        return str[str.index(str.startIndex, offsetBy: index)]
    }
}

var str2 = "Prakruth"
print(str2.getCharAt(str: str2, index: 0))
print(str2[str2.startIndex])

