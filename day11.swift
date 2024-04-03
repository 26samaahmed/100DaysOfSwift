// Access Control -> controlling how properties and methods are accessed outisde of a struct
// Having private variables will prevent the vars from being accessed outside of the struct/modifying them

struct Song {
  private var price = 0

  mutating func add(amount: Int) {
    price += amount
  }

  mutating func sub(amount: Int) -> Bool {
    if price >= amount {
      price -= amount
      return true
    } else {
      return false
    }
  }
}

var roma = Song()
roma.add(amount: 40)
let success = roma.sub(amount: 20)
if success {
  print("Successful")
} else {
  print("Failed")
}

// private: can't be accessed outside of the struct
// fileprivate: can't be used outside of the current file
// public: can be used anywhere
// private(set) allows us to read the property but we can't modify it. Only the methods inside the struct can moddify it

// Static Properties and Methods: add them to the struct itself rather than to 1 particular instance of the struct so u can use them directly

struct School {
  static var studentCount = 0

  static func addStudent(student: String) {
    print("\(student) has joined")
    studentCount += 1
  }
}

School.addStudent(student: "sama")
School.addStudent(student: "salma")
print(School.studentCount)

// Note: self refers to the current value of the struct while Self referse to the current type
// Using static can be more efficient since i dont store seperate copies for each instance

// Checkpoint 6
struct Car {
  let model: String
  let noOfSeats: Int
  private(set) var currentGear = 1 {
    didSet {
      print("The gear has been updated to \(currentGear)")
    }
  }

  mutating func gearUp() {
    if currentGear + 1 <= 10 {
      currentGear += 1
    }
  }

  mutating func gearDown () {
    if currentGear - 1 >= 1 {
      currentGear -= 1
    }
  }

}

var kia = Car(model: "SUV", noOfSeats: 5, currentGear: 7)
kia.gearDown()
kia.gearDown()
kia.gearUp()