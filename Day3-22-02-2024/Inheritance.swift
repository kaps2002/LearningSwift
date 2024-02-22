//Inheritance

class employee {
  var hours:Int

  init(hours:Int) {
    self.hours = hours
  }
  func summary() { 
    print("I have worked \(hours) hours today")
  }
}

class developer:employee {
  func work() { 
    print("i work here as a developer")
  }
}

class manager:employee {
  func work() {
    print("i work here as a manager")
  }
}

var manoj = developer(hours:10)
var saroj = manager(hours:10)
manoj.summary()
saroj.work()

