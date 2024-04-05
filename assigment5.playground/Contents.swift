import UIKit

var greeting = "Hello, playground"

//Challenges
//Before moving on, here are some challenges to test your knowledge of arrays, dictionaries and sets. It is best if you try to solve them yourself, but solutions are available if you get stuck. These came with the download or are available at the printed book's source code link listed in the introduction.

//Challenge 1: Which is valid
//Which of the following are valid statements?
//1. let
//array1 =
//[Int]()
//2. let array2 = []
//3. let array3: [String] = []
//For the next five statements, array4 has been declared as:
//let array4 = [1, 2, 3]
//4. print (array4 [0])
//5. print (arrav4[51)
//6. array4[1...2]
//7. array4[0]|
//= 4
//8. array4. append (4)
//For the final five statements, array5 has been declared as:
//var array5 = [1, 2, 3]
//9. array5[0] = array5 [1]
//10. array5 [0...1] = [4, 5]
//11. array5 [0] = "Six"
//12. array5 += 6
//13. for item in array5 { print(item) }


let array1 = [Int]() // :  This statement is valid. It declares a constant array array1 of type [Int] and initializes it as an empty array of integers.

let array3: [String] = [] // : This statement is valid. It declares a constant array array3 of type [String] and initializes it as an empty array of strings.

var array4 = [1, 2, 3]


print(array4[0]) // This statement is valid. It prints the value at index 0 of array4, which is 1.

//print(array4[51]) // This statement is invalid. It attempts to access an index (51) that is out of bounds for array4, which contains only three elements.
// error: Execution was interrupted, reason: EXC_BREAKPOINT (code=1, subcode=0x105e72794).
//The process has been left at the point where it was interrupted, use "thread return -x" to return to the state before expression evaluation.

array4[1...2] // This statement is valid. It creates a sub-array containing elements at indices 1 and 2 of array4, which is [2, 3].

array4[0] = 4 // This statement is invalid due to the syntax error. It seems to be attempting to assign the value 4 to the element at index 0 of array4, but the syntax | is incorrect.

array4.append(4) // This statement is valid. It appends the value 4 to the end of array4, resulting in [1, 2, 3, 4].


//For the final five statements, array5 has been declared as:
var array5 = [1, 2, 3]
//9. array5[0] = array5 [1]
//10. array5 [0...1] = [4, 5]
//11. array5 [0] = "Six"
//12. array5 += 6
//13. for item in array5 { print(item) }

array5[0] = array5[1] // This statement is valid. It assigns the value at index 1 of array5 (which is 2) to the element at index 0, resulting in [2, 2, 3]
array5[0...1] = [4, 5] // This statement is valid. It replaces the elements at indices 0 and 1 of array5 with the values 4 and 5, respectively, resulting in [4, 5, 3].
for item in array5 { print(item) } // This statement is valid. It iterates over each element in array5 and prints it.




//Challenge 2: Remove the first number
//Write a function that removes the first occurrence of a given integer from an array of integers. This is the signature of the function:
//func removingOnce_ item: Int, from array: [Int]) → [Int]

func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
    var newArray = array
    
    if let index = newArray.firstIndex(of: item) {
        newArray.remove(at: index)
    }
    
    return newArray
}


func removing(_ item: Int, from array: [Int]) -> [Int] {
    // Create a new array to store the filtered elements
    var newArray = [Int]()
    
    // Iterate through each element in the original array
    for element in array {
        // Check if the current element is not equal to the item we want to remove
        if element != item {
            // If it's not equal, add it to the new array
            newArray.append(element)
        }
    }
    
    // Return the new array with the item removed
    return newArray
}

let numbers = [5, 2, 7, 3, 2, 8, 2]
let removedNumbers = removing(2, from: numbers)
print(removedNumbers)

// Challenge 4: Reverse an array
func reversed(_ array: [Int]) -> [Int] {
    var reversedArray = [Int]()
    for element in array {
        reversedArray.insert(element, at: 0)
    }
    return reversedArray
}

let array = [1, 2, 3, 4, 5]
let reversedArray = reversed(array)
print(reversedArray)


// Challenge 5: Return the middle
func middle(_ array: [Int]) -> Int? {
    if array.isEmpty {
        return nil
    }
    
    let middleIndex = array.count / 2
    return array.count % 2 == 0 ? array[middleIndex - 1] : array[middleIndex]
}

let arrayone = [1, 2, 3, 4, 5]
let arraytwo = [1, 2, 3, 4, 5, 6]
print(middle(arrayone))
print(middle(arraytwo))

// Challenge 6: Find the minimum and maximum
func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
    if numbers.isEmpty {
        return nil
    }
    
    var minVal = numbers[0]
    var maxVal = numbers[0]
    for number in numbers {
        if number < minVal {
            minVal = number
        } else if number > maxVal {
            maxVal = number
        }
    }
    return (minVal, maxVal)
}

let num = [2, 8, 1, 6, 5, 4]
if let result = minMax(of: num) {
    print("Minimum: \(result.min), Maximum: \(result.max)")
} else {
    print("The array is empty.")
}


// Challenge 7: Which is valid

//Which of the following are valid statements?
//1.let dicti: (Int, Int] = [:]
//2.let dict2 = [:]
//3. let dict3: [Int: Int] = [:] //Valid. It correctly declares an empty dictionary of type [Int: Int].

// Challenge 8: Long names
func printLongStateNames(_ stateDictionary: [String: String]) {
    for (code, name) in stateDictionary where name.count > 8 {
        print(name)
    }
}

let stateDictionary = ["NY": "New York", "CA": "California", "TX": "Texas"]
printLongStateNames(stateDictionary)


// Challenge 9: Merge dictionaries
func merging(_ dict1: [String: String], with dict2: [String: String]) -> [String: String] {
    var mergedDict = dict2
    for (key, value) in dict1 {
        if mergedDict[key] == nil {
            mergedDict[key] = value
        }
    }
    return mergedDict
}

let dict1 = ["NY": "New York", "CA": "California"]
let dict2 = ["TX": "Texas", "FL": "Florida"]
print(merging(dict1, with: dict2))

// Challenge 10: Count the characters

func occurrencesOfCharacters(in text: String) -> [Character: Int] {
    var charCount: [Character: Int] = [:]
    for char in text {
        charCount[char, default: 0] += 1
    }
    return charCount
}

let text = "ghilman"
print(occurrencesOfCharacters(in: text)) // Output: ["h": 1, "e": 1, "l": 2, "o": 1]


// Challenge 11: Unique values
func isInvertible(_ dictionary: [String: Int]) -> Bool {
    var valueSet = Set<Int>()
    for value in dictionary.values {
        if valueSet.contains(value) {
            return false
        } else {
            valueSet.insert(value)
        }
    }
    return true
}

let dictionary1 = ["a": 1, "b": 2, "c": 3]
let dictionary2 = ["a": 1, "b": 2, "c": 2]
print(isInvertible(dictionary1))
print(isInvertible(dictionary2))

// Challenge 12: Removing keys and setting values to nil
var nameDictionary = ["Mary": "Engineer", "Ray": "Hacker"]
nameDictionary["Patrick"] = nil
nameDictionary.removeValue(forKey: "Ray")

print(nameDictionary)


// Challenge A: Repeating yourself
func repeatTask(times: Int, task: () -> Void) {
    for _ in 1...times {
        task()
    }
}

repeatTask(times: 10) {
    print("Swift Apprentice is a great book!")
}

// Challenge B: Closure sums
func mathSum(length: Int, series: (Int) -> Int) -> Int {
    var sum = 0
    for i in 1...length {
        sum += series(i)
    }
    return sum
}

let squareSum = mathSum(length: 10) { $0 * $0 }
print("Sum of the first 10 square numbers:", squareSum) // Output: 385

// Fibonacci number function (from functions chapter)
func fibonacci(_ number: Int) -> Int {
    var a = 0
    var b = 1

    guard number > 1 else {
        return number
    }

    for _ in 2...number {
        let temp = b
        b = a + b
        a = temp
    }

    return b
}

// Sum of the first 10 Fibonacci numbers
let fibonacciSum = mathSum(length: 10, series: fibonacci)
print("Sum of the first 10 Fibonacci numbers:", fibonacciSum) // Output: 143

// Challenge C: Functional ratings
let appRatings = [
    "Calendar Pro": [4, 5, 5, 4, 3, 5],
    "The Messenger": [2, 2, 1, 2, 3, 2, 1, 2],
    "Socialise": [5, 5, 5, 5, 4, 5, 4, 5]
]

var averageRatings: [String: Double] = [:]

appRatings.forEach { (app, ratings) in
    let averageRating = Double(ratings.reduce(0, +)) / Double(ratings.count)
    averageRatings[app] = averageRating
}

let highRatedApps = averageRatings.filter { $0.value > 3 }.map { $0.key }
print("High rated apps:", highRatedApps) 

