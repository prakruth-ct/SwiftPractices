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

protocol X{
//    public var x = 10
    func fun()
}

class Y: X{
     internal func fun(){
        print(x)
    }
}





//var xx = Test2
//xx = nil


print(String(10))


print("Hello", separator: "", terminator: " ")
print("World")

var pi: Double? = 3.499
print(Int(pi?.rounded() ?? 0))
typealias intValue = Int

pi = nil
if let piInIf = pi{
    print(pi ?? 0.0)
    print(intValue(piInIf))
}
else{
    print("NIL")
}

if let piInIf = pi{
    print(piInIf)
}

var str1 = "221"
var x = Int(str1) ?? 0
print(type(of: x))

enum StrError: Error{
    case nullPointerException
}

func fun(_ str1: String, _ offset: Int) throws{
    if offset >= str1.count{
        throw StrError.nullPointerException
    }
    else{
        print(str1[str1.index(str1.startIndex, offsetBy: offset)])
    }
}

do {
    try fun(str1, 25)
}catch StrError.nullPointerException{
    print(StrError.nullPointerException)
}

extension Array{
    func safeGet(){
        
    }
}



func test() -> (x: Int, y: Int?)?{
    
    return (10, nil)
}

if let a = test(){
    print(a.x+(a.y ?? 0))
}
else{
    print(0)
}

func test2(number: Int..., x: Int ) -> Int{
    
    var sum = 0
    for element in number{
        sum += element
    }
    return sum
}

print(test2(number: 1,2,3,4,5,6, x: 10))

func add2Ints(_ a: Int, _ b: Int) -> Int{
    return a+b
}

func printType(someFunc: (Int, Int) -> Int, _ a: Int, _ b: Int ){
    print(someFunc(a, b))
}

printType(someFunc: add2Ints, 100, 20)

