// Dictionaries

import Cocoa

// Dictionaries
var zips = [33701:"St. Petersburg", 33602:"Tampa"]
zips[33701]
zips[33701]!
zips[90210]

var legs = [String: Int]()
legs["Human"] = 2
legs["Dogs"] = 4
legs["Roach"] = 6
legs["Spider"] = 8

var animal = "Centipede"
animal = "Spider"
var result: String
if let numLegs = legs[animal] {
    result = "\(animal) has \(numLegs) legs"
} else {
    result = "\(animal) has an unknown number of legs"
}