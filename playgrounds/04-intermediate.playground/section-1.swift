// Arrays

import Cocoa

// format = species, age
var cat1 = ("feline", 9)
var cat2 = ("feline", 1)
var dog1 = ("canine", 8)
var dog2 = ("canine", 1)

dog1.0
dog1.1

func someDog() -> (kind: String,  age: Int) {
    return dog2
}

var animal = someDog()
animal.kind
animal.age

typealias Animal = (kind: String, age: Int)

func description(animal: Animal) -> String {
    switch animal {
        case let (kind, age) where age < 2:
            return "A \(kind) age \(age) is a juvenile"
        
        case ("feline", let age) where age >= 12:
            return "A feline age \(age) is a senior"
        
        case ("canine", let age) where age >= 8:
            return "A canine age \(age) is a senior"
        
        case let (kind, age):
                return "A \(kind) age \(age) is an adult"
        
        default:
            return "this will never execute"
    }
}

description(cat1)
description(cat2)
description(dog1)
description(dog2)

enum Vaccination {
    case Never
    case Current
    case Expired(months: Int)
}

struct Pet {
    var animal: Animal
    var vaccination: Vaccination
}

var p1 = Pet(animal: ("canine", 4), vaccination: Vaccination.Current)
var p2 = Pet(animal: ("feline", 5), vaccination:Vaccination.Expired(months: 11))

