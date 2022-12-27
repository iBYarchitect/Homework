import Foundation

// MARK: - Choose min between 2 Int

func minimumOfTwo(_ number1: Int, _ number2: Int) -> Int {
    (number1 < number2) ? number1 : number2
}

assert(minimumOfTwo(1, 2) == 1)
assert(minimumOfTwo(-2, 2) == -2)
assert(minimumOfTwo(0, 0) == 0)
assert(minimumOfTwo(Int(Int64.min), Int(Int64.min)) == Int(Int64.min))

// MARK: - Choose max between 2 Int

func maximumOfTwo(_ number1: Int, _ number2: Int) -> Int {
    (number1 > number2) ? number1 : number2
}

assert(maximumOfTwo(1, 2) == 2)
assert(maximumOfTwo(-2, 2) == 2)
assert(maximumOfTwo(0, 0) == 0)
assert(maximumOfTwo(Int(Int64.max), Int(Int64.max)) == Int(Int64.max))

// MARK: - Choose min between 3 Int

func minimumOfThree(_ number1: Int, _ number2: Int, _ number3: Int) -> Int {
    minimumOfTwo(number3, minimumOfTwo(number1, number2))
}

assert(minimumOfThree(1, 2, 3) == 1)
assert(minimumOfThree(-6, 6, 0) == -6)
assert(minimumOfThree(0, 0, 1) == 0)
assert(minimumOfThree(0, 0, 0) == 0)

// MARK: - Choose max between 3 Int

func maximumOfThree(_ number1: Int, _ number2: Int, _ number3: Int) -> Int {
    maximumOfTwo(number3, maximumOfTwo(number1, number2))
}

assert(maximumOfThree(1, 2, 3) == 3)
assert(maximumOfThree(-6, 6, 0) == 6)
assert(maximumOfThree(0, 0, 1) == 1)
assert(maximumOfThree(0, 0, 0) == 0)

// MARK: - Find min in array of Ints

func minimumNumberInArrayOfInt(_ array: [Int]) -> Int? {
    guard var minimumNumber = array.first else {
        return nil
    }
    for item in array {
        if item < minimumNumber {
            minimumNumber = item
        }
    }
    
    return minimumNumber
}

assert(minimumNumberInArrayOfInt([3, 2, 1]) == 1)
assert(minimumNumberInArrayOfInt([]) == nil)
assert(minimumNumberInArrayOfInt([2]) == 2)
assert(minimumNumberInArrayOfInt([0, 0, 0]) == 0)
assert(minimumNumberInArrayOfInt([-2, 2]) == -2)

// MARK: - Find max in array of Ints

func maximumNumberInArrayOfInt(_ array: [Int]) -> Int? {
    guard var maximumNumber = array.first else {
        return nil
    }
    for item in array {
        if item > maximumNumber {
            maximumNumber = item
        }
    }
    
    return maximumNumber
}

assert(maximumNumberInArrayOfInt([1, 2, 3]) == 3)
assert(maximumNumberInArrayOfInt([]) == nil)
assert(maximumNumberInArrayOfInt([2]) == 2)
assert(maximumNumberInArrayOfInt([0, 0, 0]) == 0)
assert(maximumNumberInArrayOfInt([-2, 2]) == 2)

// MARK: - Find min in array of Doubles

func minimumNumberInArrayOfDouble(_ array: [Double]) -> Double? {
    guard var minimumNumber = array.first else {
        return nil
    }
    for item in array {
        if item < minimumNumber {
            minimumNumber = item
        }
    }
    
    return minimumNumber
}

assert(minimumNumberInArrayOfDouble([3.1, 3.2, 4]) == 3.1)
assert(minimumNumberInArrayOfDouble([3.1, 3.2, 4.4]) == 3.1)
assert(minimumNumberInArrayOfDouble([3.33, 3.32, 3.31]) == 3.31)
assert(minimumNumberInArrayOfDouble([]) == nil)
assert(minimumNumberInArrayOfDouble([2.1]) == 2.1)
assert(minimumNumberInArrayOfDouble([0, 0, 0]) == 0)
assert(minimumNumberInArrayOfDouble([3, 4, 5]) == 3)

// MARK: - Find max in array of Doubles

func maximumNumberInArrayOfDouble(_ array: [Double]) -> Double? {
    guard var maximumNumber = array.first else {
        return nil
    }
    for item in array {
        if item > maximumNumber {
            maximumNumber = item
        }
    }
    
    return maximumNumber
}

assert(maximumNumberInArrayOfDouble([3.1, 3.2, 4]) == 4)
assert(maximumNumberInArrayOfDouble([3.1, 3.2, 4.4]) == 4.4)
assert(maximumNumberInArrayOfDouble([3.33, 3.32, 3.31]) == 3.33)
assert(maximumNumberInArrayOfDouble([]) == nil)
assert(maximumNumberInArrayOfDouble([2.1]) == 2.1)
assert(maximumNumberInArrayOfDouble([0, 0, 0]) == 0)
assert(maximumNumberInArrayOfDouble([3, 4, 5]) == 5)
