import Foundation

// Properties and Methods

struct Person {
    var name: String
    var age: Int
    var address: String

    func describe() -> String {
        return "I am \(name). I live in \(address) and \(age) yrs old"
    }
}

var user1 = Person(name: "Karan", age: 21, address: "Delhi")
print(user1.name, user1.address)  // Properties
print(user1.describe()) // Methods

var user2 = Person(name: "Aakash", age: 23, address: "Noida")
print(user2.name, user2.address)
print(user2.describe())

// Property Observers

class CountSteps {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            print("\(totalSteps + oldValue) is total steps")
        }
    }
}

var steps = CountSteps()
steps.totalSteps = 200
steps.totalSteps = 200

// Methods

struct Cuboid {
    var a: Int
    var b: Int
    var c: Int

    func area() -> Int {
        return self.a * self.b * self.c  // Uses self keyword
    }
}

var cube1 = Cuboid(a: 23, b: 23, c: 23)
var cuboid1 = Cuboid(a: 10, b: 12, c: 14)
print(cube1.area())
print(cuboid1.area())
