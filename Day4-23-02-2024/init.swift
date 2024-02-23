import Foundation

// Initialization

class Celsius {
    var temperature: Int

    init(fromKelvin kelvin: Int) {
        temperature = kelvin - 273
    }

    // Initialize the parameters without argument labels
    init(_ temperature: Int) {
        self.temperature = temperature
    }
}

let absoluteZero = Celsius(-273)
print(absoluteZero.temperature)

let roomTemp = Celsius(fromKelvin: 298)
print(roomTemp.temperature)

// Overriding the init

class Vehicle {
    var wheels: Int = 0
    var describe: String {
        return "\(wheels) wheels"
    }
}

class Bicycle: Vehicle {
    override init() {
        super.init()
        wheels = 2
    }
}

let firefox = Bicycle()
print(firefox.describe)
