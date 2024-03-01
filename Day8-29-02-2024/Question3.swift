import Foundation

// Question 3

struct Student {
    let name: String
    let rollNo: Int
    let dob: String
    let bloodGroup: String
    
    func filterBlood(_ tempGroup: String, _ student: Student) -> Bool {
        if tempGroup == "O+" || tempGroup == "A+" {
            return true
        }
        return false
    }
    
    func filterDOB(_ tempDOB: String, _ student: Student) -> Bool {
        if tempDOB.contains("Jan") || tempDOB.contains("Dec") {
            return true
        }
        return false
    }
}

let students = [
    Student(name: "Aon", rollNo: 2, dob: "20-Dec-2003", bloodGroup: "O+"),
    Student(name: "Max", rollNo: 29, dob: "18-Jan-2003", bloodGroup: "A+"),
    Student(name: "Ron", rollNo: 45, dob: "20-Dec-2002", bloodGroup: "A-"),
    Student(name: "Sonny", rollNo: 21, dob: "20-July-2003", bloodGroup: "A+"),
    Student(name: "Kathy", rollNo: 34, dob: "20-June-2003", bloodGroup: "A-")
]

func filterNames(_ students: [Student]) {
    var ans: [Student] = []
    for student in students {
        let firstChar: Character = student.name.first!
        if firstChar == "A" || firstChar == "R" {
            ans.append(student)
        }
    }
    print("The details of students whose name starts with A and R are: ")
    for student in ans {
        print("\(student.name) \(student.rollNo) \(student.dob) \(student.bloodGroup)")
    }
}

var ansBloodGroup: [Student] = []
for student in students {
    let tempGroup: String = student.bloodGroup
    if student.filterBlood(tempGroup, student) {
        ansBloodGroup.append(student)
    }
}
print("The details of students whose BloodGroup equals O+ and A+ are: ")
for student in ansBloodGroup {
    print("\(student.name) \(student.rollNo) \(student.dob) \(student.bloodGroup)")
}
print("\n")

func filterRollNo(_ students: [Student]) {
    var ans: [Student] = []
    for student in students {
        let tempRoll: Int = student.rollNo
        if tempRoll > 20 && tempRoll < 40 {
            ans.append(student)
        }
    }
    print("The details of students whose rollNo is between 20 and 40 are:")
    for student in ans {
        print("\(student.name) \(student.rollNo) \(student.dob) \(student.bloodGroup)")
    }
}

var ansDOB: [Student] = []
for student in students {
    let tempDOB: String = student.dob
    if student.filterDOB(tempDOB, student) {
        ansDOB.append(student)
    }
}
print("The details of students whose DOB equals Jan and Dec are: ")
for student in ansDOB {
    print("\(student.name) \(student.rollNo) \(student.dob) \(student.bloodGroup)")
    
}
print("\n")
filterNames(students)
print("\n")
filterRollNo(students)
