import Foundation

// Overriding

class vehicle {
  var currspeed: Int
  var description: String {
    return "Travelling at the speed of the \(currspeed)"
  }
  init(currspeed:Int){
    self.currspeed=currspeed
  }
  func makenoise() {
  }
}

var car = vehicle(currspeed: 10)
print(car.description)

class train: vehicle {
  override func makenoise() {
    print("Choo Choo")
  }
}
let rajdhani = train(currspeed: 200)
rajdhani.makenoise()

class bike:vehicle{
  override func makenoise(){
    print("vroom vroom")
  }
}

let honda=bike(currspeed: 100)
honda.makenoise()