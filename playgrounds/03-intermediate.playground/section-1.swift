// Playground - noun: a place where people can play

import UIKit

// animal tuple: species, age
var cat1 = ("feline", 9)
var cat2 = ("feline", 1)
var dog1 = ("canine", 8)
var dog2 = ("canine", 1)

dog1.0
dog1.1

typealias Animal = (species: String, age: Int)

//func secondDog() -> (species: String, age: Int) {
func secondDog() -> (Animal) {
    return dog2
}

var aDog = secondDog()
aDog.species
aDog.age

//func description(species: String, age: Int) -> String {
func description(animal: Animal) -> String {
    switch(animal) {
    case let(species, age) where age <= 2:
        return "A \(species) age \(age) is a juvenile"
    case ("feline", let age) where age >= 12:
        return "A feline age \(age) is a senior"
    case ("canine", let age) where age >= 8:
        return "A canine age \(age) is a senior"
    case let(species, age):
        return "A \(species) age \(age) is an adult"
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
var p2 = Pet(animal: ("feline", 4), vaccination: Vaccination.Expired(months: 5))
var p3 = Pet(animal: ("canine", 3), vaccination: .Never)
