// Inheritance

class Employee {
    var hours: Int

    init(hours: Int) {
        self.hours = hours
    }

    func summary() {
        print("I have worked \(hours) hours today")
    }
}

class Developer: Employee {
    func work() {
        print("I work here as a developer")
    }
}

class Manager: Employee {
    func work() {
        print("I work here as a manager")
    }
}

var manoj = Developer(hours: 10)
var saroj = Manager(hours: 10)
manoj.summary()
saroj.work()
