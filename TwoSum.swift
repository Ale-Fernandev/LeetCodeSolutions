import UIKit

var outputArray: [Int] = []

let myArray: [Int] = [2, 7, 11, 15]
let target: Int = 9


//I did a nested for loop to get the first indice and second, then I added them up, proceeding forward like a linear search, adding every next number with the first, then every next number with the second, etc..

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for index in 0..<nums.count {
        for values in (index+1)..<nums.count {            // Before I had nums[index+1] which
            if (nums[index] + nums[values]) == target {   // grabs the value, not the index
                outputArray = [index, values]
                break
            }
        }
    }
    return outputArray
}

//twoSum(myArray, target)



