// Optionals
// Adding a question mark after the data type means there might be a value or there might not be one
var name: String? = nil
if let unwrappedName = name {
  print("we have user: \(unwrappedName)")
} else {
  print("the optional was empty")
}

// another way of writing if let is guard let but guard let runs if the optional didnt have a value while if let runs if the optional has a value
func printSquare(of number: Int?) {
  guard let number = number else {
    print("we're missing an output")
    // exit the function if no value is found
    return
  }

  // execute this if there is a velue
  print("\(number) x \(number) is \(number * number)")
}