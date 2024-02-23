import Foundation

// Optional Chaining

func solar_system(_ planetno: Int) -> String? {
    switch planetno {
    case 1:
        return "Mercury"
    case 2:
        return "Venus"
    case 3:
        return "Earth"
    case 4:
        return "Mars"
    default:
        return nil
    }
}

let planet = solar_system(2) ?? "No Planet exist"
print(planet)

// Example 2

struct Parts {
    var name: String?
    var price: Int?
}

class ComputerParts {
    func checkparts(partname: String) -> Parts? {
        if partname == "Mouse" {
            return Parts(name: partname, price: nil)
        } else if partname == "Keyboard" {
            return Parts(name: partname, price: 2000)
        } else {
            return nil
        }
    }
}

// Optional Chaining

let obj1 = ComputerParts()
if let price = obj1.checkparts(partname: "Graphics")?.price {
    print(price)
} else {
    print("No price found")
}

let obj2 = ComputerParts()
if let price = obj2.checkparts(partname: "Keyboard")?.price {
    print(price)
} else {
    print("No price found")
}


// Optional Binding
let obj3 = ComputerParts()
if let Parts = obj3.checkparts(partname: "Mouse") {
    if let price = Parts.price {
        print(price)
    } else {
        print(Parts.name!, "No price exist")
    }
} else {
    print("No parts found")
}
