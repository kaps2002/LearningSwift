import Foundation

//Structure and Classes

class Person{
  var name:String
  var age:Int
  var rollno:Int
  init(name:String, age:Int, rollno:Int){ //constructors
    self.name=name
    self.age=age
    self.rollno=rollno
  }
}

var user1=Person(name:"Karan",age:21,rollno:101)
var user2=Person(name:"Aakash",age:20,rollno:102)
print(user1.name,user2.name)
print(user1.age,user2.age)


// Struct is value type
// Class is reference type
