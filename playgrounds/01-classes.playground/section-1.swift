// Playground - noun: a place where people can play

import UIKit

class FirstClass {
    var a: String
    var b: String
    var c: String?

    init(a: String, b: String) {
        self.a = a
        self.b = b
    }

    func greet() -> String {
        var greeting = ""

        if let ending = c {
            greeting = a + " " + b + " " + ending
        } else {
            greeting = a + " " + b
        }

        return greeting
    }
}

var fc = FirstClass(a: "Hello", b: "World")
fc.greet()
fc.a
fc.b
fc.b = "BarCamp"
fc.greet()
fc.c = "and that's all folks"
fc.greet()

