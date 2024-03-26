// Closures

func displayMessage() -> String {
  return "Hi"
}

var message = displayMessage()
print(displayMessage())

// creating a copy of the function
// Note: don't put () when calling the original function because we want to make a copy not assign the return value to a variable
var copyFunc = displayMessage
print(copyFunc())

// I can skip creating seperate functions by assigned the same functionality to a variable. This is a closure expression
let displayHello = {
  print("helloooo i can do this")
}

displayHello()

// I can pass in parameters like this
let sayHi = { (name: String) -> String in
  "Hi \(name)"
}

var createCopy : () -> Void = displayHello
// create an empty function with no parameters using ()
// return type is void which means nothing needs to be returned


// notice that when i pass the value into my parameters, i don't specify the variable 'name'
print(sayHi("Sama"))

// external parameters matter only when i'm calling the function directly.

func getData(for num: Int) -> String {
  if num % 2 == 0 {
    return "\(num) is even"
  } else {
   return "\(num) is odd"
  }
}

// when creating a copy of the function, we don't include the external paramter name 'for'
let data: (Int) -> String = getData
let number = data(4)
print(number)

func sortFirst(name1: String, name2: String) -> Bool {
  // if name is sama then name1 will be sorted before name2
  if name1 == "sama" {
    return true
  } else {
    return false
  }
}
var team = ["mohamed", "sama", "mostafa", "salma"]
let sortNames = team.sorted(by: sortFirst)

print(sortNames)

// Another way to write this to reduce the amount of code is to pass a close inside the .sorted() parameters

let sortNames2 = team.sorted(by: {name1, name2 in
  if name1 == "sama" {
    return true
  } else {
    return false
  }
})

// Functions can accept multiple functions as parameters. Make sure to specify if the functions accpet paramters and what their return type is
func testMultipleFunctions(first: () -> Void, second : () -> Void, third: () -> Void) {
  print("printing first function")
  first()
  print("printing second function")
  second()
  print("printing third function")
  third()
}

testMultipleFunctions {
  print("first func")
} second: {
  print("second func")
} third: {
  print("third func")
}

// can use a slighly different les cluttered syntax
let sortNames3 = team.sorted {name1, name2 in
  if name1 == "sama" {
    return true
  } else {
    return false
  }
}

// we can make it even simpler by not providing variabe names for the paramaters

let sortNames4 = team.sorted {
  if $0 == "sama" {
    return true
  } else if $1 == "sama" {
    return false
  }
}

// if i want to reverse the array, i can do this
let reverseTeam = team.sorted { $0 > $1 }
