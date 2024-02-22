import Foundation

//optional and unwrapping
var x:Int? = 12
var y:Int? = 1

print(type(of:x))

if let value = x {
    if let value2 = y {
        print(value+value2)
    }else{
        print("y is nil")
    }
}
else{
    print("x is nil")
}

// Using Guard Statements
var z:Int?

func havevalue() {
    guard let val = z else{return}
    print(val)
}

havevalue()