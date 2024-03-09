// For Loops
var num_arr = [1, 2, 3, 4, 5]
for i in num_arr{
  print("This num is \(i)")
}
print("\n")

// if i want to loop within a specified range i can do:
for j in 1...12{
  print("2x\(j) is \(2 * j)")
}
print("\n")

// Nested loop
for i in 1...5{
  for j in 1...5 {
    print("\(i) x \(j) = \(i * j)")
  }
}

// if i don't want to include the final number i can do:
for k in 1..<3 {
  print(k)
}

// if the loop variable is not needed, i can do:
var a_string = "My Name is "
for _ in 1...5{
  a_string += "Sama"
}
print(a_string)

// While Loops
var count = 0
while count < 5{
  print("count is \(count)")
  count += 1
}

let rand = Int.random(in: 1...100)
print(rand)

var r = 0
while r != 10{
  r = Int.random(in: 1...10)
  print("I got a \(r)")
  r += 1
}

print("\n\n")

// Checkpoint 3: FizzBuzz Problem
// if the var is divisible by 3, print Fizz. If it's divisible by 5, print Buzz. If divisible by 5 AND 3, print FizzBuzz
for i in 1...100 {
  if i % 15 == 0 {
    print("FizzBuzz")
  } else if i % 5 == 0 {
    print("Buzz")
  } else if i % 3 == 0 {
    print("Fizz")
  } else {
    print(i)
  }
}