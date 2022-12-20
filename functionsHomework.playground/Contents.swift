import Foundation

//MARK: - Choose min between 2 Int

func minimumOfTwo(_ number1: Int, _ number2: Int) -> Int {
    return (number1 < number2 ? number1 : number2)
}

assert(minimumOfTwo(1, 2) == 1)

//MARK: - Choose max between 2 Int

func maximumOfTwo(_ number1: Int, _ number2: Int) -> Int {
    return (number1 > number2 ? number1 : number2)
}

assert(maximumOfTwo(1, 2) == 2)

//MARK: - Choose min between 3 Int

func minimumOfThree(_ number1: Int,_ number2: Int,_ number3: Int) -> Int {
    return minimumOfTwo(number3, minimumOfTwo(number1, number2))
}

assert(minimumOfThree(1, 2, 3) == 1)

//MARK: - Choose max between 3 Int

func maximumOfThree(_ number1: Int,_ number2: Int,_ number3: Int) -> Int {
    return maximumOfTwo(number3, maximumOfTwo(number1, number2))
}

assert(maximumOfThree(1, 2, 3) == 3)

//MARK: - Find min in array of Ints

func minimumNumberInArrayOfInt(_ array: [Int]) -> Int? {
    var minimumNumber = array.first
    for item in array {
        if item < minimumNumber! {
            minimumNumber = item
        }
    }
    
    return minimumNumber
}

assert(minimumNumberInArrayOfInt([]) == nil)

//MARK: - Find max in array of Ints

func maximumNumberInArrayOfInt(_ array: [Int]) -> Int? {
    var maximumNumber = array.first
    for item in array {
        if item > maximumNumber! {
            maximumNumber = item
        }
    }
    
    return maximumNumber
}

assert(maximumNumberInArrayOfInt([1,2,3]) == 3)

//MARK: - Find min in array of Doubles

func minimumNumberInArrayOfDouble(_ array: [Double]) -> Double? {
    var minimumNumber = array.first
    for item in array {
        if item < minimumNumber! {
            minimumNumber = item
        }
    }
    
    return minimumNumber
}

assert(minimumNumberInArrayOfDouble([3.1, 3.2, 3.3, 3.4, 4]) == 3.1)

//MARK: - Find max in array of Doubles

func maximumNumberInArrayOfDouble(_ array: [Double]) -> Double? {
    var maximumNumber = array.first
    for item in array {
        if item > maximumNumber! {
            maximumNumber = item
        }
    }
    
    return maximumNumber
}

assert(maximumNumberInArrayOfDouble([]) == nil)
