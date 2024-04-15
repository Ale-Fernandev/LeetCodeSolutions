import UIKit

func isPalindrome(_ x: Int) -> Bool {
    if x < 0 {
        return false
    }
    var reversedInt: Int = 0
    var temp = x
        
    while temp != 0 {
        var digit = temp % 10
        print("This was the digit at this iteration: \(digit)")
        reversedInt = reversedInt * 10 + digit
        print("This was the reversedInt at this iteration: \(reversedInt)")
        temp = temp / 10
        print("This was the temp at this iteration: \(temp)")
    }
    return (reversedInt == x)
}
var a = 3553
var b = 121 
var c = -121
var d = 1223221

isPalindrome(a)
isPalindrome(b)
isPalindrome(c)
isPalindrome(d)

// First Iteration
// temp != 0 : digit = temp % 10 which is 3
// reversedInt = 3
// temp = 355.3 // the .3 gets ignored because its an int

// Second Iteration
// temp != 0 : digit = temp % 10 which is 5  // the .3 gets ignored
// reversedInt = 35  // the .3 gets ignored
// temp = 35  // the .53 gets ignored

// Third Iteration
// temp != 0 : digit = temp % 10 which is 5
// reversedInt = 355  // .53 gets ignored
// temp = 3  // .5 gets ignored

//Fourth Iteration
// temp !=0 : digit = temp % 10 which is 3
// reversedInt = 3553
// temp = 0 // .3 gets ignored


// What we learned :

// When you divide a number by 10 it removes the last digit
// You can extract the last number of an int by using modulo 10


// Multiplying by 10 makes it so that the next integer that gets added is in the next index
// 3 x 10 = 30 -> then you can turn the 0 into a 1..9 for the next digit that comes in its place.
// 39 x 10 = 390 -> then you can add to turn the 0 into a 1..9 for the next digit that comes in its place.

// dividing temp by 10 makes it lose the digit you just added.
