import Foundation

//Protocol Oriented Programming

protocol Bird {
  var name: String {get}
  var canfly: Bool {get}
}

protocol Flyable {
  var speed: Double {get}
}

struct Sparrow : Bird, Flyable {
  let name: String
  let canfly: Bool
  let speed : Double
}

struct Kiwi: Bird{
  let name: String
  let canfly: Bool
}

class Aeroplane: Flyable {
  var speed: Double

  init(speed: Double){
    if(speed < 1000) {
      self.speed = 1000
    }
    else {
      self.speed = speed
    }
  }
}

var sparrow1 = Sparrow(name: "Sparrow", canfly: true, speed: 10.4)
var kiwi1 = Kiwi(name: "Kiwi", canfly: false)
var airIndia = Aeroplane(speed: 2000)
var spiceJet = Aeroplane(speed: 800)


print(sparrow1.name, sparrow1.canfly, sparrow1.speed)
print(kiwi1.name, kiwi1.canfly)
print(airIndia.speed)
print(spiceJet.speed)
