var num = 20
if num > 40{
  print("This num is bigger than 40")
} else {
  print("This number is not bigger than 40")
}

var arr = [1, 2, 3, 4, 5]
if arr.contains(5) {
  arr.remove(at: 4)
  print(arr)
} else {
  print("This array does not contain 5")
}

var name = "Sama"
var name2 = "Salma"
if name > name2 {
  print("\(name) is older than \(name2)")
} else {
  print("\(name2) is older than \(name)")
}

var gameOver = false
var n = 3
if gameOver == false && n > 3 {
  print("Game over")
} else {
  print("Game is not over")
}

var username = ""
// Using .count is inefficient in swift because it has to go through and count every letter in the string
if username.count == 0 {  // if the user enters an empty string
  print("Please enter a valid username")
}

// Use isEmpty() instead to check if the string length is 0
if username.isEmpty {
    print("Please enter a valid username")
}

enum Weekdays {
  case Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday
}

let day = Weekdays.Sunday

// Note: no need to write Weekdays.Saturday or Weekdays.Sunday since we alrdy know day's data type is Weekday
if day == .Saturday || day == .Sunday {
  print("It's the weekend ;) ")
} else {
  print("It's a weekday :(")
  
}

// Instead of writing a lot of if statements, we can use switch cases
enum month {
  case January, February, March
}

let monthDay = month.January

switch monthDay {
  case .January:
    print(1)
  case .February:
    print(2)
  case .March:
    print(3)
  default: // if none of the above satisfy our condition, then the default case executes
    print("NONE")
}

// If i want swift to execute the following cases, use fallthrough

// Ternary Operators
let age = 18
// s
let canVote = age >= 18 ? "Yes" : "No"
print(canVote)
// REMEMBER WTF -> what true false
// what: age >= 18, true: "Yes", false: "No"