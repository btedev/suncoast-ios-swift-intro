// Playground - noun: a place where people can play

import UIKit

class FirstClass {
    var a: String
    let b: String
    var c: String?
    
    init(a: String, b: String) {
        self.a = a
        self.b = b
    }
    
    func greet() -> String {
        var aNum = 42
        var greeting = "\(a) \(b) and the number is \(aNum)"
        if let ending = c {
            greeting += " \(ending)"
        } else {
            greeting += ", and that's it"
        }
        return greeting
    }
}

var fc = FirstClass(a: "Hello", b: "World")
fc.a = "What's up"
fc.a
fc.b
fc.c = ", how are you?"
fc.greet()
