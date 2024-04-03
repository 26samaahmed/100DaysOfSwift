// Structs
struct Person {
  let name: String
  let age: Int


  func displayUser() {
    print("\(name) is \(age) years old")
  }
}

let person1 = Person(name: "sama", age: 19)
print(person1.name)
person1.displayUser()

// if i want to change the data in my struct like decrementing inside of a function, must use the mutating keyword

struct Days{
  var daysRemaining: Int

  mutating func countDay(days: Int) {
    if daysRemaining > days {
      daysRemaining -= days
      print("I'm still on vacation")
      print("There are \(daysRemaining) days left")
    } else {
      print("There are no remaining days left")
    }
  }
}

var day1 = Days(daysRemaining: 5)
// or i can use init()
var day2 = Days.init(daysRemaining: 6)
day1.countDay(days: 2)
day2.countDay(days: 4)

// variables and constants that belong to a struct are called properties
// functions that belong to a struct are called methods
// when we create a var out of a struct, thats called an instance

struct Employee {
  let name: String
  var vacationAllocated = 14
  var vacationTaken = 0

  // Computed Property -> don't store a value. They provide a getter and setter to retrieve properties indirectly
  var vacationRemaining: Int {
    get {
      // vacationRemaining = vacationAllocated - vacationTaken
      vacationAllocated - vacationTaken
    }

    set {
      vacationAllocated = vacationTaken + newValue
      // newValue stoeres whatever value the use assigns to the property.
      // In our case, if we set vacationRemaining to any value to get the vacation allocation, then newValue = vacationRemaining
    }
  }
}

var employee1 = Employee(name: "Sama")

print("Employee: \(employee1.name)")
print("Vacation Allocated: \(employee1.vacationAllocated)")
print("Vacation Taken: \(employee1.vacationTaken)")
print("Vacation Remaining: \(employee1.vacationRemaining)")

// Update vacation taken
employee1.vacationTaken = 5

// Accessing properties after updating vacation taken
print("\nAfter taking 5 vacation days:")
print("Vacation Allocated: \(employee1.vacationAllocated)")
print("Vacation Taken: \(employee1.vacationTaken)")
print("Vacation Remaining: \(employee1.vacationRemaining)")

// Update vacation remaining (using the setter)
employee1.vacationRemaining = 10

// Accessing properties after updating vacation remaining
print("\nAfter updating vacation remaining to 10:")
print("Vacation Allocated: \(employee1.vacationAllocated)")
print("Vacation Taken: \(employee1.vacationTaken)")
print("Vacation Remaining: \(employee1.vacationRemaining)")

struct Album {
  let name: String
  let releaseDate : Int
}

// This is called memberwise initialization: accepts each property in the order it was defined
var wings = Album(name: "Wings by BTS", releaseDate: 2016)

struct Track {
  let song: String
  let duration: Int

  init(song: String, duration: Int) {
    // Assign the song parameter to the song property or this song property belongs to the current instance
    self.song = song 
    self.duration = duration
  }
}

// All properties must have a value by the time the initializer ends

struct Game {
  var score = 0 {
    // attached to the property so this print statemnt will get executed whenever the property changes
    didSet {
      print("Score is \(score)")
    }
  }
}

var game = Game()
game.score += 1
game.score += 5
game.score += 6