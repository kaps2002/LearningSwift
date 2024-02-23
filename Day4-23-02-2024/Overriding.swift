import Foundation

// Overriding

class Vehicle {
    var currspeed: Int

    var description: String {
        return "Travelling at the speed of \(currspeed)"
    }

    init(currspeed: Int) {
        self.currspeed = currspeed
    }

    func makenoise() {
        // Default implementation does nothing
    }
}

var car = Vehicle(currspeed: 10)
print(car.description)

class Train: Vehicle {
    override func makenoise() {
        print("Choo Choo")
    }
}

let rajdhani = Train(currspeed: 200)
rajdhani.makenoise()

class Bike: Vehicle {
    override func makenoise() {
        print("vroom vroom")
    }
}

let honda = Bike(currspeed: 100)
honda.makenoise()
