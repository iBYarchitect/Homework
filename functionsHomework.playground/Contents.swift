import XCTest

// MARK: - Choose min between 2 Int
func minimumOfTwo(_ number1: Int, _ number2: Int) -> Int {
    (number1 < number2) ? number1 : number2
}

assert(minimumOfTwo(1, 2) == 1)
assert(minimumOfTwo(-2, 2) == -2)
assert(minimumOfTwo(0, 0) == 0)
assert(minimumOfTwo(Int.min, Int.min) == Int.min)

// MARK: - Choose max between 2 Int

/**
    This function chooses maximum value between two Int.
 
    You can find maximum value of Int from input two Int values by calling this function.
 
    - Parameter number1: Int value.
    - Parameter number2: Int value.
 
    - Returns: Returns maximum Int value from input of two Int values. In case when function have same values on the input, number2 is returned.
 
    */
func maximumOfTwo(_ number1: Int, _ number2: Int) -> Int {
    (number1 > number2) ? number1 : number2
}

maximumOfTwo(2, 3)

class MaximumOfTwoTests: XCTestCase {
    /// Test case for situation with input of two positive Int values.
    func testFindMaxValueReturnsMaxValueWhenGivenTwoPositiveNumbers() {
        XCTAssertEqual(maximumOfTwo(1, 2), 2)
    }

    /// Test case for situation with input of one positive and one negative Int value.
    func testFindMaxValueReturnsMaxValueWhenGivenOneNegavtiveAndOnePositiveNumber() {
        XCTAssertEqual(maximumOfTwo(-2, 2), 2)
    }

    /// Test case for situation with input of two zero values.
    func testFindMaxValueReturnsMaxValueWhenGivenTwoZeros() {
        XCTAssertEqual(maximumOfTwo(0, 0), 0)
    }

    /// Test case for situation with input of two minimum representable integer values.
    func testFindMaxValueReturnsMaxValueWhenGivenTwoIntMaxNumbers() {
        XCTAssertEqual(maximumOfTwo(Int.max, Int.max), Int.max)
    }
}

MaximumOfTwoTests.defaultTestSuite.run()

// MARK: - Choose min between 3 Int

/**
    This function chooses minimum value between three Int.
 
    You can find minimum value of Int from input three Int values by calling this function.
 
    You can find minimum
    - Parameter number1: Int value.
    - Parameter number2: Int value.
    - Parameter number3: Int value.
 
    - Returns: Returns minimum Int value from input of three Int values. In case when function have same values on the input, number2 is returned.
 
    */
func minimumOfThree(_ number1: Int, _ number2: Int, _ number3: Int) -> Int {
    minimumOfTwo(number3, minimumOfTwo(number1, number2))
}

class MinimumOfThreeTests: XCTestCase {
    /// Test case for situation with input of three positive Int values.
    func testFindMinValueReturnsMinValueWhenGivenThreePositiveNumbers() {
        XCTAssertEqual(minimumOfThree(1, 2, 3), 1)
    }

    /// Test case for situation with input of one positive and one negative and one zero Int value.
    func testFindMinValueReturnsMinValueWhenGivenThreeDiffernetNumbers() {
        XCTAssertEqual(minimumOfThree(-6, 6, 0), -6)
    }

    /// Test case for situation with input of two zero values and one positive Int value.
    func testFindMinValueReturnsMinValueWhenGivenTwoZerosAndOnePositiveNumbers() {
        XCTAssertEqual(minimumOfThree(0, 0, 1), 0)
    }

    /// Test case for situation with input of three zero values.
    func testFindMinValueReturnsMinValueWhenGivenThreeZeros() {
        XCTAssertEqual(minimumOfThree(0, 0, 0), 0)
    }
}

MinimumOfThreeTests.defaultTestSuite.run()

// MARK: - Choose max between 3 Int

/**
    This function chooses maximum value between three Int.
 
    You can find maximum value of Int from input three Int values by calling this function.
 
    - Parameter number1: Int value.
    - Parameter number2: Int value.
    - Parameter number3: Int value.
 
    - Returns: Returns maximum Int value from input of three Int values. In case when function have same values on the input, number2 is returned.
 
    */
func maximumOfThree(_ number1: Int, _ number2: Int, _ number3: Int) -> Int {
    maximumOfTwo(number3, maximumOfTwo(number1, number2))
}

class MaximumOfThreeTests: XCTestCase {
    /// Test case for situation with input of three positive Int values.
    func testFindMinValueReturnsMinValueWhenGivenThreePositiveNumbers() {
        XCTAssertEqual(maximumOfThree(1, 2, 3), 3)
    }

    /// Test case for situation with input of one positive and one negative and one zero Int value.
    func testFindMinValueReturnsMinValueWhenGivenThreeDiffernetNumbers() {
        XCTAssertEqual(maximumOfThree(-6, 6, 0), 6)
    }

    /// Test case for situation with input of two zero values and one positive Int value.
    func testFindMinValueReturnsMinValueWhenGivenTwoZerosAndOnePositiveNumbers() {
        XCTAssertEqual(maximumOfThree(0, 0, 1), 1)
    }

    /// Test case for situation with input of three zero values.
    func testFindMinValueReturnsMinValueWhenGivenThreeZeros() {
        XCTAssertEqual(maximumOfThree(0, 0, 0), 0)
    }
}

MaximumOfThreeTests.defaultTestSuite.run()

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
