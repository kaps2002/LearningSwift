import Foundation

// Closures

struct Student {
    let name: String
    let testScore: Int
}

let students = [
    Student(name: "Karan", testScore: 89),
    Student(name: "Aakash", testScore: 78),
    Student(name: "Vaibhav", testScore: 65),
    Student(name: "Jatin", testScore: 85),
    Student(name: "Louis", testScore: 75),
    Student(name: "Sunil", testScore: 62)
]

var topStudentsFilter: (Student) -> Bool = { student in
    return student.testScore >= 75
}

let topStudents = students.filter(topStudentsFilter)

for student in topStudents {
    print(student.name)
}

// Example 2

var compareTwoNum: (Int, Int) -> String = { num1, num2 in
    if num1 > num2 {
        return "\(num1) is greater"
    } else {
        return "\(num2) is greater"
    }
}
print(compareTwoNum(2, 4))
