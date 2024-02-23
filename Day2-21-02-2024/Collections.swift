import Foundation

// Arrays, Sets, and Dictionaries

var arr: [Int] = [1, 2, 3, 4, 5]
print(arr)

var arr1: [Any] = [1, 2, "hello", 13.6]
print(arr1)
print(arr1[2])

// Iterating over array

for i in arr {
    print(i)
}

var cars: [String: Int] = [
    "mercedes": 10,
    "Audi": 19,
    "BMW": 12
]
cars["honda"] = 10

// Iterating over dict

for (key, value) in cars {
    print(key, value)
}

var genre: Set<String> = ["horror", "action", "comedy"]

// Insertion and Removing
genre.insert("Sci-fi")
print(genre)
genre.remove("Sci-fi")
print(genre)
