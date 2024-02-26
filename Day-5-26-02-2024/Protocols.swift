import Foundation

// Protocols -- helps to write and define the functions and data which leads to the cleaner codebase.

protocol Engine {
  func startengine()
  func closeEngine()
}

protocol Speed {
  func increasespeed()
  func decreasespeed()
}

protocol CarProtocol: Engine, Speed { 
  var color: String {get set} 
  var modelnumber: Double { get }
  func applybrakes()

}

class BMW: CarProtocol {
  var color: String
  var modelnumber: Double
  init(color: String, modelnumber: Double){
    self.color = color
    self.modelnumber = modelnumber
  }
  func startengine() {
    print("Engine is started")
  }
  func closeEngine() {
    print("Engine is stopped")
  }
  func increasespeed() {
    print("Speed is increased")
  }
  func decreasespeed(){
    print("Speed is decreased")
  }
  func applybrakes(){
    print("Brakes are applied")
  }
}

var bmw1 = BMW(color: "red", modelnumber: 1.1)
print("The color of car is \(bmw1.color) and the modelnumber is \(bmw1.modelnumber)")
bmw1.increasespeed()
bmw1.decreasespeed()