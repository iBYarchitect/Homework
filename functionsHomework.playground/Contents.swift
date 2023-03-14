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
 Returns the greater value of two integer numbers.
 
 You can find maximum value among two integer values by calling this function.
 - Parameters:
    - number1: The first value to compare.
    - number2: The second value to compare.
 - Returns: The greater of two given integer values. If the values are equal, returns the second one.
*/
func maximumOfTwo(_ number1: Int, _ number2: Int) -> Int {
    (number1 > number2) ? number1 : number2
}

class MaximumOfTwoTests: XCTestCase {
    func testMaximumOfTwoReturnsMaxValueWhenGivenTwoPositiveNumbers() {
        XCTAssertEqual(maximumOfTwo(1, 2), 2)
    }

    func testMaximumOfTwoReturnsMaxValueWhenGivenOneNegavtiveAndOnePositiveNumber() {
        XCTAssertEqual(maximumOfTwo(-2, 2), 2)
    }

    func testMaximumOfTwoReturnsMaxValueWhenGivenTwoZeros() {
        XCTAssertEqual(maximumOfTwo(0, 0), 0)
    }

    func testMaximumOfTwoReturnsMaxValueWhenGivenTwoIntMaxNumbers() {
        XCTAssertEqual(maximumOfTwo(Int.max, Int.max), Int.max)
    }
}

MaximumOfTwoTests.defaultTestSuite.run()

// MARK: - Choose min between 3 Int

/**
 Returns the lesser value of three integer numbers.
 
 You can find minimum value among three integer values by calling this function.
 - Parameters:
    - number1: The first value to compare.
    - number2: The second value to compare.
    - number3: The third value to compare.
 - Returns: The lesser of three given integer values. If the values are equal, returns the second one.
*/
func minimumOfThree(_ number1: Int, _ number2: Int, _ number3: Int) -> Int {
    minimumOfTwo(number3, minimumOfTwo(number1, number2))
}

class MinimumOfThreeTests: XCTestCase {
    func testMinimumOfThreeReturnsMinValueWhenGivenThreePositiveNumbers() {
        XCTAssertEqual(minimumOfThree(1, 2, 3), 1)
    }

    func testMinimumOfThreeReturnsMinValueWhenGivenThreeDiffernetNumbers() {
        XCTAssertEqual(minimumOfThree(-6, 6, 0), -6)
    }

    func testMinimumOfThreeReturnsMinValueWhenGivenTwoZerosAndOnePositiveNumbers() {
        XCTAssertEqual(minimumOfThree(0, 0, 1), 0)
    }

    func testMinimumOfThreeReturnsMinValueWhenGivenThreeZeros() {
        XCTAssertEqual(minimumOfThree(0, 0, 0), 0)
    }
}

MinimumOfThreeTests.defaultTestSuite.run()

// MARK: - Choose max between 3 Int

/**
 Returns the greater value of three integer numbers.
 
 You can find maximum value among three integer values by calling this function.
 - Parameters:
    - number1: The first value to compare.
    - number2: The second value to compare.
    - number3: The third value to compare.
 - Returns: The greater of three given integer values. If the values are equal, returns the second one.
*/
func maximumOfThree(_ number1: Int, _ number2: Int, _ number3: Int) -> Int {
    maximumOfTwo(number3, maximumOfTwo(number1, number2))
}

class MaximumOfThreeTests: XCTestCase {
    func testMaximumOfThreeReturnsMinValueWhenGivenThreePositiveNumbers() {
        XCTAssertEqual(maximumOfThree(1, 2, 3), 3)
    }

    func testMaximumOfThreeReturnsMinValueWhenGivenThreeDiffernetNumbers() {
        XCTAssertEqual(maximumOfThree(-6, 6, 0), 6)
    }

    func testMaximumOfThreeReturnsMinValueWhenGivenTwoZerosAndOnePositiveNumbers() {
        XCTAssertEqual(maximumOfThree(0, 0, 1), 1)
    }

    func testMaximumOfThreeReturnsMinValueWhenGivenThreeZeros() {
        XCTAssertEqual(maximumOfThree(0, 0, 0), 0)
    }
}

MaximumOfThreeTests.defaultTestSuite.run()

// MARK: - Find min in array of Ints

/**
 Returns the lesser value from array of Int values.
 
 You can find minimum value among array of integer values by calling this function.
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
    func testMinimumNumberInArrayReturnsMinValueWhenGivenArrayOfPositiveInt() {
        XCTAssertEqual(minimumNumberInArrayOfInt([3, 2, 1]), 1)
    }

    func testMinimumNumberInArrayReturnsMinValueWhenGivenNil() {
        XCTAssertEqual(minimumNumberInArrayOfInt([]), nil)
    }

    func testMinimumNumberInArrayReturnsMinValueWhenGivenArrayWithOnePositiveNumber() {
        XCTAssertEqual(minimumNumberInArrayOfInt([2]), 2)
    }

    func testMinimumNumberInArrayReturnsMinValueWhenGivenArrayWithThreeZeros() {
        XCTAssertEqual(minimumNumberInArrayOfInt([0, 0, 0]), 0)
    }

    func testMinimumNumberInArrayReturnsMinValueWhenGivenArrayWithPositiveAndNegativeValue() {
        XCTAssertEqual(minimumNumberInArrayOfInt([-2, 2]), -2)
    }
}

MinimumNumberInArrayOfIntTests.defaultTestSuite.run()

// MARK: - Find max in array of Ints

/**
 Returns the greater value from array of Int values.
 
 You can find maximum value among array of integer values by calling this function.
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
    func testMaximumNumberInArrayReturnsMinValueWhenGivenArrayOfPositiveInt() {
        XCTAssertEqual(maximumNumberInArrayOfInt([3, 2, 1]), 3)
    }

    func testMaximumNumberInArrayReturnsMinValueWhenGivenNil() {
        XCTAssertEqual(maximumNumberInArrayOfInt([]), nil)
    }

    func testMaximumNumberInArrayReturnsMinValueWhenGivenArrayWithOnePositiveNumber() {
        XCTAssertEqual(maximumNumberInArrayOfInt([2]), 2)
    }

    func testMaximumNumberInArrayReturnsMinValueWhenGivenArrayWithThreeZeros() {
        XCTAssertEqual(maximumNumberInArrayOfInt([0, 0, 0]), 0)
    }

    func testFMaximumNumberInArrayReturnsMinValueWhenGivenArrayWithPositiveAndNegativeValue() {
        XCTAssertEqual(maximumNumberInArrayOfInt([-2, 2]), 2)
    }
}

MaximumNumberInArrayOfIntTests.defaultTestSuite.run()

// MARK: - Find min in array of Doubles

/**
 Returns the lesser value from array of Double values.
 
 You can find minimum value among array of double values by calling this function.
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
    func testMinimumNumberInArrayReturnsMinValueWhenGiveArrayOfTwoPositiveDoublesAndOneIntValues() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([3.1, 3.2, 4]), 3.1)
    }

    func testMinimumNumberInArrayReturnsMinValueWhenGivenArrayOfThreePositiveDoubleValues() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([3.1, 3.2, 4.4]), 3.1)
    }

    func testMinimumNumberInArrayReturnsMinValueWhenGivenNil() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([]), nil)
    }

    func testMinimumNumberInArrayReturnsMinValueWhenGivenArrayWithThreeZeroValues() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([0, 0, 0]), 0)
    }

    func testMinimumNumberInArrayReturnsMinValueWhenGivenArrayWithOnePositiveDoubleValue() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([2.1]), 2.1)
    }

    func testMinimumNumberInArrayMinValueWhenGivenArrayOfThreePositiveInt() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([3, 4, 5]), 3)
    }
}

MinimumNumberInArrayOfDoubleTests.defaultTestSuite.run()

// MARK: - Find max in array of Doubles

/**
 Returns the greater value from array of Double values.
 
 You can find maximum value among array of double values by calling this function.
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
    func testMaximumNumberInArrayReturnsMinValueWhenGivenArrayOfTwoPositiveDoublesAndOneIntValues() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([3.1, 3.2, 4]), 3.1)
    }

    func testMaximumNumberInArrayReturnsMinValueWhenGivenArrayOfThreePositiveDoubleValues() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([3.1, 3.2, 4.4]), 3.1)
    }

    func testMaximumNumberInArrayReturnsMinValueWhenGivenNil() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([]), nil)
    }

    func testMaximumNumberInArrayReturnsMinValueWhenGivenArrayWithThreeZeroValues() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([0, 0, 0]), 0)
    }

    func testMaximumNumberInArrayReturnsMinValueWhenGivenArrayWithOnePositiveDoubleValue() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([2.1]), 2.1)
    }

    func testMaximumNumberInArrayReturnsMinValueWhenGivenArrayOfThreePositiveInt() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([3, 4, 5]), 3)
    }
}

MaximumNumberInArrayOfDoubleTests.defaultTestSuite.run()
