let picture = "kitten.png"
// return value is a boolean, true if found. False otherwise
print(picture.hasSuffix(".png"))

var gameOver = false
print(!gameOver)

// Using .toggle() will reverse the boolean
gameOver.toggle()
print(gameOver)

// Use + sign to append to string together
var first = "Hello"
var second = " World"
print(first + second)

let name = "Sama"
let hobby = "coding"
print("I am \(name) and i love \(hobby)") // this is referred to as string interpolation which is more efficient than using + to combine strings
print("5 x 5 is \(5*5)")

// CheckPoint 1: Convert Temperature from Fahrenheit to Celsius
let celsius_temp = 20.0
print("\(celsius_temp)C is \(((celsius_temp * 9) / 5) + 32)F")