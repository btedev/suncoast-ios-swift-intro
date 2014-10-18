// Playground - noun: a place where people can play

import UIKit

var nums = [1,5,9]
nums.append(11)
nums.removeAtIndex(1)
//nums.append("a string")
//nums = []
//nums.append("try again")

//var arr = []
var arr = [Int]()
arr.append(2)
arr.count

var easyArr = [Any]()
easyArr.append(2)
easyArr.append("two")
easyArr

func sayAnything(words: String...) -> String {
    var s = "\(words.count) words: "
    for word in words {
        s += word + " "
    }
    return s
}

sayAnything("Suncoast", "iOS", "Meetup", "❤️", "Swift")

var sum = 0
for num in nums {
    sum += num
}
sum

var out = ""
for (index, val) in enumerate(nums) {
    out += "Item \(index)=\(val) "
    if (index < nums.count-1) { out += "," }
}
out

// Dictionaries
let squares = [0:0, 1:1, 2:4, 3:9, 4:16]
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
var result: String
if let hasLegs = legs[animal] {
    result = "\(animal) has \(hasLegs) legs"
} else {
    result = "\(animal) has an unknown number of legs"
}
