//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
var a : Character = "c"

let asciiA = UInt8(ascii: "a")
print(asciiA)

//var xx = Int(a)

var c : String = String(a)
print(type(of : a))
let singleCharUniScalar = UnicodeScalar(String(a))

a = singleCharUniScalar + 3
print(a)

