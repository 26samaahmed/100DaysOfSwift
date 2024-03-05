// Type Annotations
let name : String = "Sama" // explicitely specify the data type
print(name)

var albums:[String] = ["Proof", "Wave 0.01"]
var users:[String: String] = ["username": "26samaahmed"]

var numbers : Set<Int> = Set([1, 2, 3, 4])

// Checkpoint 2
let values = ["Math", "English", "English", "English", "French", "French"]
print(values.count)
print((Set(values)).count) // set will get the unique values then i get the length of the set