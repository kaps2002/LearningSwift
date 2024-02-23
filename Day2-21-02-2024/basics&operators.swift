import Foundation

// Variables and Constants
let x = 1
var z = x
z += 2
print(z)

class Person {
    static let age = 12
    let lastname = "Smith"
}

var john = Person()
print(john.lastname)

let age = Person.age
print(age)

var y = "hello world"
print(type(of: y))

var price: Double = 12.0
var name: String = "Karan"

class Animal {
    let name = "Dog"
    let age = 7
}

var max: Animal = Animal()


// Basic operators

// Assignment operator
var (i, j) = (1, 2)
print(i, j)
let num = 10
var n = num
print(n, num)

// Arithmetic operator

print(21 + 78)   // Addition
print(167 - 24)  // Subtraction
print(134 * 56)  // Multiply
print(156 / 4)   // Division
print(35 % 8)    // Remainder

// Range Operator

for i in 1...10 {
    print(5 * i)
}

for i in 1..<6 {
    print(5 * i)
}

// Comparison operator

print(1 == 1)
print(3 > 1)
print(10 != 10)
print(1 < 6)
print(8 >= 8)
print(4 <= 1)
