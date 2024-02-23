import Foundation

// Enumerations

enum States: Int {
    case inprogress = 0
    case aborted = -1
    case willdo = 2
    case completed = 1
}

var current = States.inprogress
current = .aborted
print(current.rawValue)


// Example 2

enum SolarSystem: Int, CaseIterable {
    case Mercury = 1
    case Venus = 2
    case Earth = 3
    case Mars = 4
    case Jupiter = 5
    case Saturn = 6
    case Uranus = 7
    case Neptune = 8
    case Pluto = 9
}

var planet = SolarSystem.Venus
planet = .Jupiter
print(planet.rawValue)
planet = .Neptune

switch planet {
    case .Mercury:
        print("I am near to the sun")
    case .Venus:
        print("I am the hottest planet")
    case .Earth:
        print("I am the lively planet")
    case .Mars:
        print("I am the red planet")
    case .Jupiter:
        print("I am the biggest planet")
    case .Saturn:
        print("I am the ring planet")
    case .Uranus:
        print("I am the blue planet")
    case .Neptune:
        print("I am the farthest planet")
    case .Pluto:
        print("I am the dwarf planet")
    default:
        print("Not in our Solar system")
}

// Counting the number of cases in enum
print(SolarSystem.allCases.count)

// Iterating the enum
for i in SolarSystem.allCases {
    print(i)
}
