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
func maximumOfTwo(_ number1: Int, _ number2: Int) -> Int {
    (number1 > number2) ? number1 : number2
}

assert(maximumOfTwo(1, 2) == 2)
assert(maximumOfTwo(-2, 2) == 2)
assert(maximumOfTwo(0, 0) == 0)
assert(maximumOfTwo(Int.max, Int.max) == Int.max)

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

/**
 Returns the lesser value from array of Int values.
 
 You can find minimum value of Int from input array of Int values by calling this function.
 - Parameter array: sequence of values to compare.
 - Returns: The lesser Int value from input array of Int values or nil if the no elements in array.
 - Complexity: O(N) where N is size of input array.
 */
func minimumNumberInArrayOfInt(_ array: [Int]) -> Int? {
    guard var minimumNumber = array.first else {
        return nil
    }

    for item in array {
        minimumNumber = minimumOfTwo(item, minimumNumber)
    }

    return minimumNumber
}

class MinimumNumberInArrayOfIntTests: XCTestCase {
    func testMinimumNumberInArrayOfIntReturnsMinValueWhenGivenArrayOfPositiveInt() {
        XCTAssertEqual(minimumNumberInArrayOfInt([3, 2, 1]), 1)
    }

    func testMinimumNumberInArrayOfIntReturnsMinValueWhenGivenNil() {
        XCTAssertEqual(minimumNumberInArrayOfInt([]), nil)
    }

    func testMinimumNumberInArrayOfIntReturnsMinValueWhenGivenArrayWithOnePositiveNumber() {
        XCTAssertEqual(minimumNumberInArrayOfInt([2]), 2)
    }

    func testMinimumNumberInArrayOfIntReturnsMinValueWhenGivenArrayWithThreeZeros() {
        XCTAssertEqual(minimumNumberInArrayOfInt([0, 0, 0]), 0)
    }

    func testMinimumNumberInArrayOfIntReturnsMinValueWhenGivenArrayWithPositiveAndNegativeValue() {
        XCTAssertEqual(minimumNumberInArrayOfInt([-2, 2]), -2)
    }
}

MinimumNumberInArrayOfIntTests.defaultTestSuite.run()

// MARK: - Find max in array of Ints

/**
 Returns the greater value from array of Int values.
 
 You can find maximum value of Int from input array of Int values by calling this function.
 - Parameter array: sequence of values to compare.
 - Returns: The greater Int value from input array of Int values or nil if the no elements in array.
 - Complexity: O(N) where N is size of input array.
 */
func maximumNumberInArrayOfInt(_ array: [Int]) -> Int? {
    guard var maximumNumber = array.first else {
        return nil
    }

    for item in array {
        maximumNumber = maximumOfTwo(item, maximumNumber)
    }

    return maximumNumber
}

class MaximumNumberInArrayOfIntTests: XCTestCase {
    func testMaximumNumberInArrayOfIntReturnsMinValueWhenGivenArrayOfPositiveInt() {
        XCTAssertEqual(maximumNumberInArrayOfInt([3, 2, 1]), 3)
    }

    func testMaximumNumberInArrayOfIntReturnsMinValueWhenGivenNil() {
        XCTAssertEqual(maximumNumberInArrayOfInt([]), nil)
    }

    func testMaximumNumberInArrayOfIntReturnsMinValueWhenGivenArrayWithOnePositiveNumber() {
        XCTAssertEqual(maximumNumberInArrayOfInt([2]), 2)
    }

    func testMaximumNumberInArrayOfIntReturnsMinValueWhenGivenArrayWithThreeZeros() {
        XCTAssertEqual(maximumNumberInArrayOfInt([0, 0, 0]), 0)
    }

    func testFMaximumNumberInArrayOfIntReturnsMinValueWhenGivenArrayWithPositiveAndNegativeValue() {
        XCTAssertEqual(maximumNumberInArrayOfInt([-2, 2]), 2)
    }
}

MaximumNumberInArrayOfIntTests.defaultTestSuite.run()

// MARK: - Find min in array of Doubles

/**
 Returns the lesser value from array of Double values.
 
 You can find minimum value of Double from input array of Double values by calling this function.
 - Parameter array: sequence of values to compare.
 - Returns: The lesser Double value from input array of Double values or nil if the no elements in array.
 - Complexity: O(N) where N is size of input array.
 */
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

class MinimumNumberInArrayOfDoubleTests: XCTestCase {
    func testMinimumNumberInArrayOfDoubleReturnsMinValueWhenGiveArrayOfTwoPositiveDoublesAndOneIntValues() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([3.1, 3.2, 4]), 3.1)
    }

    func testMinimumNumberInArrayOfDoubleReturnsMinValueWhenGivenArrayOfThreePositiveDoubleValues() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([3.1, 3.2, 4.4]), 3.1)
    }

    func testMinimumNumberInArrayOfDoubleReturnsMinValueWhenGivenNil() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([]), nil)
    }

    func testMinimumNumberInArrayOfDoubleReturnsMinValueWhenGivenArrayWithThreeZeroValues() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([0, 0, 0]), 0)
    }

    func testMinimumNumberInArrayOfDoubleReturnsMinValueWhenGivenArrayWithOnePositiveDoubleValue() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([2.1]), 2.1)
    }

    func testMinimumNumberInArrayOfDoubleMinValueWhenGivenArrayOfThreePositiveInt() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([3, 4, 5]), 3)
    }
}

MinimumNumberInArrayOfDoubleTests.defaultTestSuite.run()

// MARK: - Find max in array of Doubles

/**
 Returns the greater value from array of Double values.
 
 You can find maximum value of Double from input array of Double values by calling this function.
 - Parameter array: sequence of values to compare.
 - Returns: The greater Double value from input array of Double values or nil if the no elements in array.
 - Complexity: O(N) where N is size of input array.
 */
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

class MaximumNumberInArrayOfDoubleTests: XCTestCase {
    func testMaximumNumberInArrayOfDoubleReturnsMinValueWhenGivenArrayOfTwoPositiveDoublesAndOneIntValues() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([3.1, 3.2, 4]), 3.1)
    }

    func testMaximumNumberInArrayOfDoubleReturnsMinValueWhenGivenArrayOfThreePositiveDoubleValues() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([3.1, 3.2, 4.4]), 3.1)
    }

    func testMaximumNumberInArrayOfDoubleReturnsMinValueWhenGivenNil() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([]), nil)
    }

    func testMaximumNumberInArrayOfDoubleReturnsMinValueWhenGivenArrayWithThreeZeroValues() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([0, 0, 0]), 0)
    }

    func testMaximumNumberInArrayOfDoubleReturnsMinValueWhenGivenArrayWithOnePositiveDoubleValue() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([2.1]), 2.1)
    }

    func testMaximumNumberInArrayOfDoubleReturnsMinValueWhenGivenArrayOfThreePositiveInt() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([3, 4, 5]), 3)
    }
}

MaximumNumberInArrayOfDoubleTests.defaultTestSuite.run()
