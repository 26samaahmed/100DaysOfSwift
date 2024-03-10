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