// Classes

import Cocoa

class FirstClass {
    var a: String
    let b: String
    var c: String?
    
    init(a: String, b: String) {
        self.a = a
        self.b = b
    }
    
    func greet() -> String {
        var greeting = "\(a) \(b)"
        if let ending = c {
            greeting += " \(ending)"
        } else {
            greeting += ", and that's it"
        }
        return greeting
    }
}

var fc = FirstClass(a: "Hello", b: "World")
fc.a
fc.b
fc.c = ", how are you?"
fc.greet()
