/*
 # Homework#2
 Pedro Orellana
 08/31/26
*/


import UIKit

//The For In Loop
let names = ["Anna", "Alex", "Brian", "Jack"]
let greetings = ["Good morning", "Good afternoon", "Good evening", "Good night", "Good day"]

for name in names {
    let index = Int.random(in: 0...(greetings.count - 1))
    let greeting = greetings[index]
    print("\(greeting), \(name)!")
}

print()
print()


//The Dictionary
let nameDictionary = ["Anna" : 20, "Alex": 45, "Brian" : 5, "Jack" : 99]

for (name, age) in nameDictionary {
    let index = Int.random(in: 0...(greetings.count - 1))
    let greeting  = greetings[index]
    print("\(greeting), \(name)! Happy \(age)th birthday!")
}

print()
print()

//Interval Binding
for (name, age) in nameDictionary {
    let index = Int.random(in: 0...(greetings.count - 1))
    let greeting  = greetings[index]
    print("\(greeting), \(name)! Happy \(age)th birthday!")
    switch (age) {
    case 0..<18:
        print("You are a child")
    case 18..<26:
        print("You are a young adult")
    case 26..<65:
        print("You are an adult")
    default:
        print("You are a senior")
    }
    print()
}
