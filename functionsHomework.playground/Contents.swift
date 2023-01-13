import XCTest

// MARK: - Choose min between 2 Int

/**
    This function chooses minimum value between two Int.
 
    You can find minimum value of Int from input two Int values by calling this function.
 
    - Parameter number1: Int value.
    - Parameter number2: Int value.
 
    - Returns: Returns minimum Int value from input of two Int values. In case when function have same values on the input, number2 is returned.
 
    */
func minimumOfTwo(_ number1: Int, _ number2: Int) -> Int {
    (number1 < number2) ? number1 : number2
   
}

class MinimumOfTwoTests: XCTestCase {
    /// Test case for situation with input of two positive Int values.
    func testFindMinValueReturnsMinValueWhenGivenTwoPositiveNumbers() {
        XCTAssertEqual(minimumOfTwo(1, 2), 1)
    }

    /// Test case for situation with input of one positive and one negative Int value.
    func testFindMinValueReturnsMinValueWhenGivenOneNegavtiveAndOnePositiveNumber() {
        XCTAssertEqual(minimumOfTwo(-2, 2), -2)
    }

    /// Test case for situation with input of two zero values.
    func testFindMinValueReturnsMinValueWhenGivenTwoZeros() {
        XCTAssertEqual(minimumOfTwo(0, 0), 0)
    }

    /// Test case for situation with input of two minimum representable integer values.
    func testFindMinValueReturnsMinValueWhenGivenTwoIntMinNumbers() {
        XCTAssertEqual(minimumOfTwo(Int.min, Int.min), Int.min)
    }
}

MinimumOfTwoTests.defaultTestSuite.run()

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
        minimumNumber = minimumOfTwo(item, minimumNumber)
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
        maximumNumber = maximumOfTwo(item, maximumNumber)
    }
    
    return maximumNumber
}

assert(maximumNumberInArrayOfInt([1, 2, 3]) == 3)
assert(maximumNumberInArrayOfInt([]) == nil)
assert(maximumNumberInArrayOfInt([2]) == 2)
assert(maximumNumberInArrayOfInt([0, 0, 0]) == 0)
assert(maximumNumberInArrayOfInt([-2, 2]) == 2)
