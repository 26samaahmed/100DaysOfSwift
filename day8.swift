// Setting default values
// Let's say we have a function that has 2 parameters, one thats asks for a number to do the times table for
// and the other specifies the end value. I can provide a default value for the end when declaring the function
// if i don't want to have a specific value. It would look like liks

func printTimesTables(_ number: Int, _ end: Int = 6) {
  for i in 1...end {
    print("\(i) * \(number) is \(i * number)")
  }
}

printTimesTables(3) // this will keep going unitl 3 * 6
print("\n")
printTimesTables(2, 10) // this will go until 2 * 10

// swift handles allocating and freeing memory. Let's say i use the function removeAll which would empty the array
// and it will free up all the memory that was assigned to the array but I plan on adding more items back later in the array
// If i want to keep the capacity of the array before I cleared it, then user keepCapacity = True as the argument for removeAll


// Error Handling
// If we're prompting the user to enter a password, two ways a problem can occur is that if the password is too short or too obvious
// Note: swift has an Error type

enum PasswordError: Error {
  case short, obvious
}

func checkPassword(_ password: String) throws -> String{
  // if one of the erros were found, it will exit the function
  if password.count == 0 {
    throw PasswordError.short
  }

  if password == "12345" {
    throw PasswordError.obvious
  }

  if password.count < 8 {
    return "OK"
  } else if password.count < 10 {
    return "Good"
  } else {
    return "Perfect"
  }
}

let pass = "samapassword"

// if function operates as expected, it will print the string based on how strong/obvious the user's password is
// if an error occured, it will be caught and the print statement will execute notifying the user with the error
do {
  let result = try checkPassword(pass)
  print("Your password was \(result)")
} catch PasswordError.short{ // catching a specific error
  print("Password is too short")
} catch PasswordError.obvious {
  print("Password is too obvious")
} catch {
  print("An error occured")
}

// Checkpoint 4 :)
// write function that accepts an integer from 1 through 10,000 and returns the integer square root of that number
enum SqrtError: Error {
  case out_of_bounds, no_root
}

func getSquareRootoF(_ num: Int) throws -> String {
    if num < 1 || num > 10_000 {
      throw SqrtError.out_of_bounds
    }

    // loop from 1 to 100 until i find an i where i * i is equal to num
    // The reason i'm looping only up to 100 because 100 * 100 is 1s 10,000 which is the biggest num can be
    for i in 1...100 {
      if i * i == num {
        return "The square root of \(num) is \(i)"
      }

      // how do i handle not finding the square root of a num and throwing an error?
      // if i reached the last number and multiplying it by itself doesnt give the square root of the number
      // then that means no root was found
      if i == 100 && i * i != num { 
        throw SqrtError.no_root
      }
    }
  return "" 

}
print("\n\n")


for j in -1...10 {
  do {
    let result = try getSquareRootoF(j)
    print(result)
  } catch SqrtError.out_of_bounds {
    print("\(j) entered was out of bounds. Please enter a number between 1 and 10,000 only")
  } catch SqrtError.no_root {
    print("There is no root for \(j)")
  } catch {
    print("An error occured.")
  }
}

/*
The following is printed as a result of the loop above:

-1 entered was out of bounds. Please enter a number between 1 and 10,000 only
0 entered was out of bounds. Please enter a number between 1 and 10,000 only
The square root of 1 is 1
There is no root for 2
There is no root for 3
The square root of 4 is 2
There is no root for 5
There is no root for 6
There is no root for 7
There is no root for 8
The square root of 9 is 3
There is no root for 10

*/