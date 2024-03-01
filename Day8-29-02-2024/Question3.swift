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
        let dobArray = tempDOB.components(separatedBy: "-")
        if dobArray[1] == "Jan" || dobArray[1] == "Dec" {
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

func filterNames(_ students: [Student]) -> [String] {
    var ans: [String] = []
    for student in students {
        let firstChar: Character = student.name.first!
        if firstChar == "A" || firstChar == "R" {
            ans.append(student.name)
        }
    }
    return ans
}

var ansBloodGroup: [String] = []
for student in students {
    let tempGroup: String = student.bloodGroup
    if student.filterBlood(tempGroup, student) {
        ansBloodGroup.append(student.name)
    }
}

func filterRollNo(_ students: [Student]) -> [String] {
    var ans: [String] = []
    for student in students {
        let tempRoll: Int = student.rollNo
        if tempRoll > 20 && tempRoll < 40 {
            ans.append(student.name)
        }
    }
    return ans
}

var ansDOB: [String] = []
for student in students {
    let tempDOB: String = student.dob
    if student.filterDOB(tempDOB, student) {
        ansDOB.append(student.name)
    }
}

print("The name of students whose name starts with A and R are \(filterNames(students))")
print("The name of the students whose blood group O+ and A+ are \(ansBloodGroup)") 
print("The name of students whose roll no between 20 and 40 are \(filterRollNo(students))")
print("The name of students whose DOB comes in Dec and Jan are \(ansDOB)")
