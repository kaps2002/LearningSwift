import Foundation

// Extensions -- Increases the fucntionality of the existing classes, protocols and enums.

extension Int {
    func isEvenOrOdd() -> String {
        if self % 2 == 0 {
            return "It is even"
        }
        return "It is odd"
    }

    mutating func cube() -> Int {
        return self * self * self
    }

    var str: String {
        return "\(self) is string now !!!"
    }
}

print(4.isEvenOrOdd())
print(4.str)
var num: Int = 4
print(num.cube())

// Typecasting -- it helps to check thr instance of the class or structure or treat that instance as a different superclass or subclass.

class Employee {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Manager: Employee {
    var salary: Int
    init(name: String, salary: Int) {
        self.salary = salary
        super.init(name: name)
    }
}

class Developer: Employee {
    var team: String
    init(name: String, team: String) {
        self.team = team
        super.init(name: name)
    }
}

let employees: [Employee] = [
    Developer(name: "Karan", team: "iOS"),
    Developer(name: "Naman", team: "Web"),
    Manager(name: "Vamika", salary: 200000),
]

for employee in employees {
    if let dev = employee as? Developer {
        print("It is a developer and name is \(dev.name)")
    } else if employee is Manager {
        print("It is a manager and name is \(employee.name)")
    }
}

// Protocols -- it defines the a blueprint or the skeleton of the methods, properties that suit a particular task.

protocol WorkProtocol {
    func doWork()
    func takeMeeting()
}

protocol OfficeProtocol: WorkProtocol {
    func punchIn()
    func lunchBreak()
    func coffeeBreak()
    func punchOut()
}

class Office: OfficeProtocol {
    var name: String
    var location: String
    init(name: String, location: String) {
        self.name = name
        self.location = location
    }

    func punchIn() {
        print("I have entered the office")
    }

    func doWork() {
        print("I am busy with my work")
    }

    func lunchBreak() {
        print("I am having lunch")
    }

    func takeMeeting() {
        print("I am taking a meeting with my team")
    }

    func coffeeBreak() {
        print("I am at the cafe")
    }

    func punchOut() {
        print("I am punching out")
    }
}

let Roro = Office(name: "Roro Solutions", location:"Noida")
Roro.lunchBreak()
Roro.takeMeeting()
