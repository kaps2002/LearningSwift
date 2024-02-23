// Variables
var x = 15
let y = 12

// String
var hello = """
    Even though there's whitespace to the left,
    the actual lines aren't indented.
        Except for this line.
    Double quotes can appear without being escaped
    I still have \(x + y) pieces of fruit.
    """
print(hello)

var optionalName: String? = "Jay"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)

// List
var l: [Any] = [1, 2, 3, 4, "hello"]
l.append(5)
print(l)
let list = [1, 2, 3, 4, 5, 6, 7, 8]
for i in list {
    if i <= 5 {
        print(i)
    } else {
        print("I am greater than 5")
    }
}

// Dictionaries
var occupationwithname = [
    "Karan": "SDE",
    "Mayank": "Banker",
    "Anni": "Doc",
]
occupation["Shivani"] = "Bio"
print(occupation)

let ratingofemployees = [
    "Karan": 1,
    "Anirudh": 2,
    "Shivani": 4,
    "Mayank": 3,
]
var largest = 0
var top_rated = ""
for (name, number) in rating {
    if number > largest {
        largest = number
        top_rated = name
    }
}
print(top_rated)

// While loop
var n = 2
while n < 100 {
    n = n * 2
}
print(n)

// For loop
var ans = 0
for i in 0..<5 {
    print(i)
}

// Functions
func greet(person: String, age: Int) -> String {
    return "Hello I am \(person) and I am \(age) yrs old."
}
print(greet(person: "karan", age: 21))

// Nested Functions
func add(_ x: Int) -> Int {
    var y = 10
    func addinner(_ y: Int) -> Int {
        var sum = 0
        sum = x + y
        return sum
    }
    return addinner(y)
}
print(add(2))

// Functions as arguments
var numbers1 = [1, 45, 23, 4]

print(greater(numbers1, condition))

func greater(_ numbers1: [Int], _ condition: (Int) -> Bool) -> String {
    for i in numbers1 {
        if condition(i) {
            return "I am greater than 30. I am \(i)"
        }
    }
    return "No one is greater than 30"
}

func condition(_ i: Int) -> Bool {
    if i > 30 {
        return true
    }
    return false
}
