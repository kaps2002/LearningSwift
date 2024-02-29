import Foundation

// Revision

// 1. Basic Operators
var a: Int = 20
let b: Int = 10

print("Sum of 2 numbers \(a + b)")
print("Difference of 2 numbers \(a - b)")
print("Multiply of 2 numbers \(a * b)")
print("Division of 2 numbers \(a / b)")
print(a > b)
print(a < b)
print(a == b)

// 2. Arrays
var numbers: [Int] = [2, 1, 5, 3, 8]
numbers.append(23)
let length: Int = numbers.count
print(length)

var i: Int = 0
while(i < length) {
  print(numbers[i] * 5)
  i += 1
}

// 3. Dictionaries
var movieRating: [String: Double] = [
  "Singham": 8.5,
  "1920": 7.4,
  "Oppenheimer": 9.1
]

movieRating["Inception"] = 8.8
if let val = movieRating["Singham"] {
  print("The value is \(val)")
} else {
  print("The value is nil")
}

for (key, value) in movieRating {
  print(key, value)
} 

print(movieRating.keys, movieRating.values)

// 4. Strings
var greeting: String = "Hello! Karan"
let multilineGreet = """
I am Karan training at Roro Solutions LLP.
Currently in final year at USICT.
"""

var newGreeting: String = greeting + " I live in Delhi NCR."
print(newGreeting)
newGreeting.insert(contentsOf: " Good", at: newGreeting.index(before: newGreeting.endIndex))
print(newGreeting)

for char in "Karan" {
  print(char)
}

// 5. Sets
var country: Set<String> = ["India", "USA", "Canada", "UK"]

country.insert("China")
country.remove("UK")
print(country)

let oddDigits: Set<Int> = [1, 3, 5, 7, 9]
let evenDigits: Set<Int> = [2, 4, 6, 8]
let primeDigits: Set<Int> = [2, 3, 5, 7, 11]

print(oddDigits.union(evenDigits).sorted())
print(oddDigits.intersection(primeDigits))
print(evenDigits.subtracting(primeDigits))

// 6. Functions

func isPrime(_ element: Int) -> Bool {
  if (element == 1 || element == 2 || element == 3) {
    return true
  }
  for i in 2...element/2 {
    if(element % i == 0) {
      return false
    }
  }
  return true
}

print(isPrime(9))