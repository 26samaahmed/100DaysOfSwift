// Protocols: let us define a series of properties/methods that we want to use ( a blue print)
protocol Drink {
  func caloriesCount(calories: Int)
  func displayDrink(drinkType: String)
}

struct Boba: Drink {
  // implement the functions from the protocol Drink
  func caloriesCount(calories: Int) {
    print("Calories are \(calories) mg")
  }

  func displayDrink(drinkType: String) {
    print("\(drinkType) is a very famous drink")
  }
}

var boba = Boba()

func useProtocal(calories: Int, drinkType: String, using drink: Drink) {
  if calories > 100 {
    print("You have exceeded 100 calories for your drink")
  } else {
    print("You have not exceeded 100 calories for your drink")
  }
}

useProtocal(calories: 101, drinkType: "boba", using: boba)

protocol Major {
  var major: String {get}

  func displayMajor()
}

struct Math: Major {
  var major: String = "math"

  func displayMajor() {
    print("wow you are a \(major) major!")
  }
}

var math = Math()
math.displayMajor()

// Opaque Return Types
// if i want to compare 2 diff bolean functions using == , it's good to return some equitable rather than Bool
// Consider 2 functions that return ints and we want to see if they are equal and we have the return types as ints. This
// might work in the moment, however, if we decide later that we want to change from int to double, our code will break because
// we specified that ints need to be returned. That's why using 'some Equitable' is a good option since we don't specify what will
// be returned. That will be up to the compiler to figure out.
func randomBool() -> some Equatable {
  Bool.random()
}

print(randomBool())

// if i'm returning a new value rather than changing it in place, then use word endings like ed or ing
// if we want a struct to have the default memberwise initializer as well as our custom initializer, we can do it using extensions

struct Book {
  let title: String
  let pageCount: Int
  let readingHours: Int
}

extension Book {
  init(title: String, pageCount: Int) {
    self.title = title
    self.pageCount = pageCount
    self.readingHours = pageCount / 50
  }
}

// collection include arrays, sets, dictionaries
extension Collection {
  var isNotEmpty: Bool {
      isEmpty == false
  }
}

var guests = ["Sama", "Salma", "Soma"]
if guests.isNotEmpty {
  print("guest count is  \(guests.count)")
}

// Checkpoint 8
protocol Building {
  var roomCount: Int {get}
  var cost: Int {get}
  var agentName: String {get}

  func displayInfo()
}

extension Building {
  func displayInfo() {
      print("This building has \(roomCount) rooms and it costs around $\(cost). The estate's agent name is \(agentName).")
  }
}

struct House: Building {
  var roomCount: Int = 4
  var cost: Int = 988000
  var agentName: String = "Yolanda Marie"
}

struct Office: Building {
  var roomCount: Int = 16
  var cost: Int = 4000000
  var agentName: String = "Angelina Brown"
}

let house = House()
house.displayInfo()

let office = Office()
office.displayInfo()