import Foundation

// Automatic Reference Counting

class Person {
    var name: String
    var role: Job?

    init(name: String) {
        print("init is called for person")
        self.name = name
    }

    deinit {
        print("deinit is called for person")
    }
}

class Job {
    var role: String
    unowned var name: Person?
    // Unowned doesn't keep a strong hold but ARC can't set its value nil

    // or

    // weak var name: Person?

    // Weak keyword doesn't keep a strong hold on the instance it refers

    init(role: String) {
        print("init is called for job")
        self.role = role
    }

    deinit {
        print("deinit is called for job")
    }
}

if 1 == 1 {
    let objPerson = Person(name: "Karan")
    let objJob = Job(role: "SDE")
    objPerson.role = objJob
    objJob.name = objPerson
}
