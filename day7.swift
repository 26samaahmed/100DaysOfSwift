// Creating functions
func display() {
  print("My Name is Sama and I am learning the syntax of creating a function in swift!!")
}

func isMultiple(num: Int, num2: Int) {
  if num.isMultiple(of: num2)   {
    print("\(num) is a multiple of \(num2)")
  } else {
    print("\(num) is not a mutliple of \(num2)")
  }
}

func gameOver(gameOver: Bool) -> String {
  if gameOver == false {
    return "Game is over"
  } else {
   return "Game is not over"
  }
}

func isEqual(val1: String, val2: String) -> Bool {
  if val1.sorted() == val2.sorted() {
    return true
  } else {
    return false
  }
} // i could have also just returned val1.sorted() == val2.sorted()

// note: when a function is only 1 line of code an I specify the return value, I can remove the return keyword
/*
func isEqual(val1: String, val2: String) -> Bool { 
    val1.sorted() == val2.sorted()
  }
*/
display()

// when calling a function with paramters, i need to write the parameter along with the value
isMultiple(num: 25, num2: 5)
isMultiple(num: 4, num2: 3)
let result1 = gameOver(gameOver: false)
print(result1)
let result2 = gameOver(gameOver: true)
print(result2)

let result3 = isEqual(val1: "abc", val2: "cba")
print(result3)


// i can also return multiple things in the form of an array
func name() -> [String] {
  ["Sama", "Ahmed"]
}
let n = name()
print("My name is \(n[0])")

// Tuples [fixed size array]

func getUser()->(firstName: String, lastName: String) {
  (firstName: "Sama", lastName: "Ahmed") // i also don't need to explicity specify first name, last name
  // ("Sama", "Ahmed") will work too
}
let user = getUser()
print("This user's name is \(user.firstName) \(user.lastName)")

// What makes tuples different than dictionaries, is that its guaranteed that there will be values for tuple and I won't need
// to provide a default one because of the potential of it not existing

// Note: if there was no name given to each value like firstName/lastName, we can still access using indices
func getUser2() -> (String, String) {
  ("sama", "salma")
}

let user2 = getUser2()
print("This user's name is \(user2.0) or \(user2.1)")

// i can also do this
let (a, b) = getUser() // if u dont need one of the values, replace it with _
print("this is \(a)")

// let's say i want to call a function but dont want to expliciitly define the var name when calling the function, i can add
// underscore before the var name

// Difference like this:
func getNum(string: String) -> String {
  return string.uppercased()
}

// vs.

func getNum2(_ string: String) -> String {
  return string.uppercased()
}

var c = getNum(string: "sama")
var d = getNum2("sama") // for this i didnt need to specify var name before
print("\(c) vs \(d)")

// when creating functions, for readability i can have an internal name and external name
func printTimesTable(for num: Int) {
  for i in 1...12{
    print("\(i) x \(num) is \(i*num)")
    
  }
}

printTimesTable(for: 5)   // for is the external name and number is the internal name

/*
Note 2 things:
1. either specify _ before parameter name if I dont plan on using the external parameter name
2. Add a second name so that I have an internal and external name
*/