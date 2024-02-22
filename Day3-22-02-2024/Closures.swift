import Foundation

//Closures

struct Student {
  let name : String
  let testscore : Int
}

let students = [Student(name:"Karan", testscore:89), Student(name:"Aakash", testscore:78), Student(name:"Vaibhav", testscore:65), Student(name:"Jatin", testscore:85), Student(name:"Louis", testscore:75), Student(name:"Sunil", testscore:62)]

var topstudentsfilter: (Student) -> Bool = {student in
  return student.testscore >= 75
}

let topstudents = students.filter(topstudentsfilter)

for i in topstudents { 
  print(i.name)
}


//Example2

var comparetwonum: (Int,Int) -> String = {num1,num2 in
  if(num1>num2) {
    return "\(num1) is great"
  }
  else {
    return "\(num2) is great"
  }
}
print(comparetwonum(2,4))
