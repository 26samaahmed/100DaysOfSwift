var greeting = "Hello, playground"
var name = "Sama"
var age = 19
age = 20    // modify an existing var
// If the variable's value will change then use the keyword var
// If the variable's value is constant then use the keyword let

let major = "Computer Science"
print(major)
let quote = "I am  learning \"Swift\""
print(quote)

// When writing strings that take multiple lines, use 3 double quotes instead of 2
let multiline = """
I
am
testing
multiple lines
"""

// Use .count to get the length of a string
print(major.count)

// prints the string in all caps
print(name.uppercased())

// To check whether a string starts with specific letters, we can use .hasPrefix
print(name.hasPrefix("Sa"))

// Numbers can be broken down using underscores
var num = 100_000_000_0000
num += 2
print(num)

// To check if a number is a multiple of another number, i can use isMultiple(of: )
let n = 20
print(n.isMultiple(of: 5))

let j = 0.1 + 0.2
print(j)

// if i want to add an integer to a double then i have to explicity specify Int(var) or Double(var) or else it will give an error
let c = 1 + Int(5.44) // the 5.4 rounds to 5
print(c)