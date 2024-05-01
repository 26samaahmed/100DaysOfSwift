// Classes
class Game {
  var score = 0 {
    didSet {
      print("Score is now \(score)")
    }
  }
}

var newGame = Game()
newGame.score += 10

// Inheritence: a class that inherits the funactionality from a parent class

class Items {
  var food: String

  init(food: String) {
    self.food = food
  }

  func display() {
    print("Test over ride for items")
  }
}

class Item1: Items {
  func displayChips() {
    print("I got \(food)")
  }

  override func display() {
    print("Test over ride for the inherited class")
  }
}

let chips = Item1(food: "chips")
chips.displayChips()
chips.display()

let fruit = Items(food: "fruit")
fruit.display()

// child class can also override the parent's methods using the override keyword before func

// we can also mark a class as final which means the class itself can inherit from other classes but other classes can't inherit from the class
// If i have a class Employee and then another classe Developer which inherits from Employee. If I mark Developer as final then no other classes can inherit from it. 

// using super allows us to call up methods that belong to the parent class like its initializer

class Person {
  let student: Bool

  init(student: Bool) {
    self.student = student
  }
}

class Student: Person {
  let isInCollege: Bool

  init(isInCollege: Bool, student: Bool) {
    self.isInCollege = isInCollege
    super.init(student: true)
  }
}

let semsem = Student(isInCollege: true, student: true)

// when creating copy of a class instance, changing the copy will change the original instance as well
// This isn't the same for structs though.

// we can also create deinitializers which get called when the object is destroted

class Color {
  let light : String

  init(light: String) {
    self.light = light
    print("this color is \(light)")
  }

  deinit {
    print("\(light) is dead :(")
  }
}

let blue = Color(light: "blue")

// keep this in mind
/*
Constant instance, constant property – a signpost that always points to the same user, who always has the same name.
Constant instance, variable property – a signpost that always points to the same user, but their name can change.
Variable instance, constant property – a signpost that can point to different users, but their names never change.
Variable instance, variable property – a signpost that can point to different users, and those users can also change their names.
*/