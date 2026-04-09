//
//  Untitled.swift
//  M2Calculator_harrisonV2
//
//  Created by Mesplay, Harrison W. on 4/9/26.
//
import Foundation

/*var a: Any = 123
a = 456
a = 456.789
a = "Hello"
*/
let str = "Hello"
let nsstr: NSString = "Hello" //Foundation string

let nsstrFromStr: NSString = str as NSString
let strFromNsstr: String = nsstr as String

let strFromNSstr1: String = a as! String

if let a = a as? String {
    a.count
}

class A{
    let one = "one"
}
class B{
    let two = "two"
}
class C{
    let three = "three"
}

let aObj = A()
aObj.one

