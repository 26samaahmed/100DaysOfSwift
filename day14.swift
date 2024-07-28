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

// we can also provide a default value if the optional is nil
let captains = [
  "Enterprise": "Picard",
  "Voyager": "Janeway",
  "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A" // NA is the deault value. This ?? is called the nil coalescing operator

// We can also chain optionals
struct Book {
  let title: String
  let author: String? // this is optional because we might know the name of the author or it might be anonymous
}

var book: Book? = nil //There might exist a book and there might not exist one

// if we have a book and the book has an author and the author has a first name, we will uppercase the first letter of the first name. If any of the conditions are not met, we will return "A"
let author = book?.author?.first?.uppercased() ?? "A" 
print(author)

// Checkpoint 9
func getRandom(nums: [Int]?) -> Int {
  return nums?.randomElement() ?? Int.random(in: 1 ... 100)
}

let arr : [Int]? = nil
let res = getRandom(nums: arr)
print(res)