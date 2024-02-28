import Foundation

// 7. Closures

var calci: (Int, Int, String) -> String = { num1, num2, opr in
    if opr == "+" {
        return "\(num1 + num2)"
    } else if opr == "-" {
        return "\(num1 - num2)"
    } else if opr == "*" {
        return "\(num1 * num2)"
    } else {
        return "Wrong operator"
    }
}
print(calci(2, 3, "*"))
print(calci(2, 3, "/"))

// 8. Enumerations

enum Week: Int, CaseIterable {
    case Monday = 1
    case Tuesday = 2
    case Wednesday = 3
    case Thursday = 4
    case Friday = 5
    case Saturday = 6
    case Sunday = 7
}

var day = Week.Friday
print(day)

var daysList: [String] = []

for day in Week.allCases {
    print("Today is \(day)")  // Iterating all the cases
}

// Switching between the cases in enum

switch day {
case .Monday, .Tuesday, .Wednesday, .Thursday, .Friday, .Saturday, .Sunday:
    print("Today is \(day.rawValue) day")
}

// 9. Struct & Class

class Student {
    let name: String
    let age: Int
    let department: Department

    init(name: String, age: Int, department: Department) {
        self.name = name
        self.age = age
        self.department = department
    }

    func introduction() {
        print("Hello, I am \(name). My age is \(age) years old. I study in \(department.deptName).")
    }
}

class Department {
    let deptName: String

    init(deptName: String){
        self.deptName = deptName
    }
}

let d1 = Department(deptName: "Electronics")
let s1 = Student(name: "Karan", age: 21, department: d1)
s1.introduction()

// 10. Inheritance

class Employee {
    let empId: Int
    let name: String
    let address: String

    init(name: String, empId: Int, address: String) {
        self.name = name
        self.empId = empId
        self.address = address
    }

    func getDetails() {
        print("Hello, I am \(name), \(address), \(empId)")
    }
}

class Designation: Employee {
    let role: String

    init(name: String, empId: Int, address: String, role: String) {
        self.role = role
        super.init(name: name, empId: empId, address: address)
    }

    override func getDetails() {
        print("Hello, I am \(name) and \(role)")
    }
}

let design1 = Designation(name: "Karan", empId: 101, address: "Delhi", role: "SDE")
let design2 = Designation(name: "Akash", empId: 102, address: "Mumbai", role: "Manager")

design1.getDetails()
design2.getDetails()
