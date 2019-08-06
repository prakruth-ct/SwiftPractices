//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

enum Test: Int{
    /*case func fun(){
        print("In ENUM")
    }*/
    
    case one
    case two
    case three
    
    var switching: Int{
        switch self{
            case .one: return(1)
            case .two: return(2)
        default: return 0
        }
    }
    
    func test(){
        print("1")
    }
}
var aa = Test.one
print(aa.switching)
print(aa.test())
print(Test.one.rawValue)

class Class1{
    
    var annualSalary = 5200
    var weekSalary: Int{
        get{
            return annualSalary/52
        }
        set(newValue){
            annualSalary = newValue * 52
        }
    }
}

var obj8 = Class1()
print(obj8.annualSalary)
print(obj8.weekSalary)
obj8.weekSalary = 250
print(obj8.annualSalary)
print(obj8.weekSalary)

print("")
class ARC{
    
    var x: Int
    var y: Int
    var arc2Obj: ARC2?
    
    init(_ x: Int, _ y: Int){
        print("\(x) initialized")
        self.x = x
        self.y = y
    }
    
    deinit{
        print("\(x) deinitialized")
    }
}

class ARC2{
    
    var x: Int
    var y: Int
    weak var arcObj: ARC?
    
    init(_ x: Int, _ y: Int){
        print("\(x) initialized in ARC2")
        self.x = x
        self.y = y
    }
    
    deinit{
        print("\(x) deinitialized in ARC2")
    }
}

var obj: ARC? = ARC(10,20)
var obj2 : ARC2? = ARC2(30, 40)
//print(obj?.x ?? "ad")
//obj = nil
//obj2 = nil

obj?.arc2Obj = obj2
obj2?.arcObj = obj
//print(obj?.arc2Obj?.x ?? "nil")

obj = nil
print(obj2?.arcObj?.x ?? "nil")
obj2 = nil

print(obj?.arc2Obj?.x ?? "nil")

obj2?.arcObj = nil
obj?.arc2Obj = nil


print(obj ?? "nil")
print(obj ?? "nil")

class Person {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    weak var apartment: Apartment?
    
    deinit {
        print("Person: \(name) is being deinitialized")
    }
}

class Apartment {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    var tenant: Person?
    
    deinit {
        print("Apartment: \(name) is being deinitialized")
        
    }
}

var john: Person?
var unit4A: Apartment?

john = Person(name: "John Specter")
unit4A = Apartment(name: "4A")

//john = nil
//unit4A = nil

john?.apartment = unit4A
unit4A?.tenant = john

john = nil

print(unit4A?.tenant?.name ?? "nil")
unit4A = nil

class D{
    var s : Int { get{
        return 10
        } }
    
    public func fun(){
        print(s)
    }
}


class E: D{
    
    override var s : Int{
        get{
            return 100
        }
    }
    
    override internal func fun(){
        print(s)
    }
}

var obj9 = E()
obj9.fun()

enum Test2{
    
    case one
}

//var xx = Test2
//xx = nil


print(String(10))
