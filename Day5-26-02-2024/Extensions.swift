import Foundation

// Extensions

extension Double {
    func celsiusToFarhenheit() -> Double {
        return (self * 1.8) + 32
    }

    func farhenheitToCelsius() -> Double {
        return (self - 32) / 1.8
    }
}

var celsius: Double = 23
var farhenheit: Double = 100

print(celsius.celsiusToFarhenheit())
print(farhenheit.farhenheitToCelsius())

// Mutating Instance Methods

extension Int {
    mutating func square() -> Int {
        return self * self
    }
}

var x: Int = 3
print(x.square())
