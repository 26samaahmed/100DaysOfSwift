var nums = [1, 2, 3, 4, 5] // array of type int -> note: only 1 data type is allowed per array so I can't mix strings and ints
print(nums[0])
nums.append(6)
print(nums[5])

// declaring an empty array
var scores = Array<Int>()
scores.append(32)
scores.append(20)

var grades = [String]() // another way to declare arrays
grades.append("A")
grades.append("B")
grades.append("C")
print(grades.count)

// To remove a value at a certain index, used remove: index
grades.remove(at: 1)
print(grades.count)

// I can also clear the array by using removeAll()
grades.removeAll()
print(grades.count)

// To check if an array has a value, use .contains() and it will return a boolean
print(scores.contains(20))

var cities = ["New York", "Greece", "Italy"]
print(cities.sorted())

cities.reverse()
print(cities) 


// Dictionaries
let dictionary = [
  "name": "Sama",
  "Favorite Color": "Grey"
]

// Use the keys to read the data
print(dictionary["name", default: "Unknown"])
// The reason we add default: "Unknown" is because sometime the key might not exist so we put it as the default value

print(dictionary.count)

// Sets don't allow duplicates and are not sorted
var a_set = Set(["Blue", "Green", "Red"])
print(a_set)
a_set.insert("Yellow")
print(a_set)

// The benefit of using a set over an array is searching is a lot faster. For an array, I have to go through n number of elements
// to find a value but in a set, it runs very fast

enum WeekDay {
  case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}

var day = WeekDay.monday
day = WeekDay.friday
print(day)