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