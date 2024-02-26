import Foundation

// Generics

func determineHigherValue<T: Comparable>(_ value1: T, _ value2: T) -> String {
    if value1 > value2 {
        return "\(value1) is greater"
    }
    return "\(value2) is greater"
}

print(determinehighervalue(4, 8))
print(determineHigherValue("karan", "kashish"))
print(determineHigherValue(Date(), Date.distantFuture))

// Example 2

func whatIsIt<T>(_ input: T) -> String {
    return "It is \(type(of: input)) type"
}

print(whatIsIt(input: "Karan"))
print(whatIsIt(input: 4.5))

// Example 3

func appendInList<T>(_ list: inout [T], element: T) -> [T] {
    list.append(element)
    return list
}

var numbers: [Int] = [1, 2, 3, 4]
var alphabets: [String] = ["A", "B", "C", "D"]
print(appendInList(&numbers, element: 5))
print(appendInList(&alphabets, element: "E"))
