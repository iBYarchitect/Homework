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
    This function chooses minimum value on array of Int values.
 
    You can find minimum value of Int from input array of Int values by calling this function.
 
    - Parameter array: input array of Int values.
 
    - Returns: Returns minimum Int value from input array of Int values or nil if the no elements in array.
 
    - Complexity: This function finds the maximum value in array using O(N) algorithm.
 
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
    /// Test case for situation with input of positive array Int with three values.
    func testFindMinValueReturnsMinValueWhenGivenArrayOfPositiveInt() {
        XCTAssertEqual(minimumNumberInArrayOfInt([3, 2, 1]), 1)
    }

    /// Test case for situation with input of nil.
    func testFindMinValueReturnsMinValueWhenGivenNil() {
        XCTAssertEqual(minimumNumberInArrayOfInt([]), nil)
    }

    /// Test case for situation with input of positive array Int with one value.
    func testFindMinValueReturnsMinValueWhenGivenArrayWithOnePositiveNumber() {
        XCTAssertEqual(minimumNumberInArrayOfInt([2]), 2)
    }

    /// Test case for situation with input of array Int with three zeros.
    func testFindMinValueReturnsMinValueWhenGivenArrayWithThreeZeros() {
        XCTAssertEqual(minimumNumberInArrayOfInt([0, 0, 0]), 0)
    }

    /// Test case for situation with input of array Int with one positive and one negative values.
    func testFindMinValueReturnsMinValueWhenGivenArrayWithPositiveAndNegativeValue() {
        XCTAssertEqual(minimumNumberInArrayOfInt([-2, 2]), -2)
    }
}

MinimumNumberInArrayOfIntTests.defaultTestSuite.run()

// MARK: - Find max in array of Ints

/**
    This function chooses maximum value on array of Int values.
 
    You can find maximum value of Int from input array of Int values by calling this function.
 
    - Parameter array: input array of Int values.
 
    - Returns: Returns maximum Int value from input array of Int values or nil if the no elements in array.
 
    - Complexity: This function finds the maximum value in array using O(N) algorithm.
 
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
    /// Test case for situation with input of positive array Int with three values.
    func testFindMaxValueReturnsMinValueWhenGivenArrayOfPositiveInt() {
        XCTAssertEqual(maximumNumberInArrayOfInt([3, 2, 1]), 3)
    }

    /// Test case for situation with input of nil.
    func testFindMaxValueReturnsMinValueWhenGivenNil() {
        XCTAssertEqual(maximumNumberInArrayOfInt([]), nil)
    }

    /// Test case for situation with input of positive array Int with one value.
    func testFindMaxValueReturnsMinValueWhenGivenArrayWithOnePositiveNumber() {
        XCTAssertEqual(maximumNumberInArrayOfInt([2]), 2)
    }

    /// Test case for situation with input of array Int with three zeros.
    func testFindMaxValueReturnsMinValueWhenGivenArrayWithThreeZeros() {
        XCTAssertEqual(maximumNumberInArrayOfInt([0, 0, 0]), 0)
    }

    /// Test case for situation with input of array Int with one positive and one negative values.
    func testFindMaxValueReturnsMinValueWhenGivenArrayWithPositiveAndNegativeValue() {
        XCTAssertEqual(maximumNumberInArrayOfInt([-2, 2]), 2)
    }
}

MaximumNumberInArrayOfIntTests.defaultTestSuite.run()

// MARK: - Find min in array of Doubles

/**
    This function chooses minimum value on array of Double values.
 
    You can find minimum value of Double from input array of Double values by calling this function.
 
    - Parameter array: input array of Double values.
 
    - Returns: Returns minimum Double value from input array of Double values or nil if the no elements in array.
 
    - Complexity: This function finds the maximum value in array using O(N) algorithm.
 
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
    /// Test case for situation with input positive array of Double with two Double and one Int values.
    func testFindMinValueReturnsMinValueWhenGiveArrayOfTwoPositiveDoublesAndOneIntValues() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([3.1, 3.2, 4]), 3.1)
    }

    /// Test case for situation with input positive array of Double with two Double and one Int values.
    func testFindMinValueReturnsMinValueWhenGivenArrayOfThreePositiveDoubleValues() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([3.1, 3.2, 4.4]), 3.1)
    }

    /// Test case for situation with input of nil.
    func testFindMinValueReturnsMinValueWhenGivenNil() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([]), nil)
    }

    /// Test case for situation with input of array Double with three zeros.
    func testFindMinValueReturnsMinValueWhenGivenArrayWithThreeZeroValues() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([0, 0, 0]), 0)
    }

    /// Test case for situation with input of positive array Double with one value.
    func testFindMinValueReturnsMinValueWhenGivenArrayWithOnePositiveDoubleValue() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([2.1]), 2.1)
    }

    /// Test case for situation with input of positive array Double with three positive Int values.
    func testFindMinValueReturnsMinValueWhenGivenArrayOfThreePositiveInt() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([3, 4, 5]), 3)
    }
}

MinimumNumberInArrayOfDoubleTests.defaultTestSuite.run()

// MARK: - Find max in array of Doubles

/**
    This function chooses maximum value on array of Double values.
 
    You can find maximum value of Double from input array of Double values by calling this function.
 
    - Parameter array: input array of Double values.
 
    - Returns: Returns maximum Double value from input array of Double values or nil if the no elements in array.
 
    - Complexity: This function finds the maximum value in array using O(N) algorithm.
 
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
    /// Test case for situation with input positive array of Double with two Double and one Int values.
    func testFindMinValueReturnsMinValueWhenGivenArrayOfTwoPositiveDoublesAndOneIntValues() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([3.1, 3.2, 4]), 3.1)
    }

    /// Test case for situation with input positive array of Double with two Double and one Int values.
    func testFindMinValueReturnsMinValueWhenGivenArrayOfThreePositiveDoubleValues() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([3.1, 3.2, 4.4]), 3.1)
    }

    /// Test case for situation with input of nil.
    func testFindMinValueReturnsMinValueWhenGivenNil() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([]), nil)
    }

    /// Test case for situation with input of array Double with three zeros.
    func testFindMinValueReturnsMinValueWhenGivenArrayWithThreeZeroValues() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([0, 0, 0]), 0)
    }

    /// Test case for situation with input of positive array Double with one value.
    func testFindMinValueReturnsMinValueWhenGivenArrayWithOnePositiveDoubleValue() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([2.1]), 2.1)
    }

    /// Test case for situation with input of positive array Double with three positive Int values.
    func testFindMinValueReturnsMinValueWhenGivenArrayOfThreePositiveInt() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([3, 4, 5]), 3)
    }
}

MaximumNumberInArrayOfDoubleTests.defaultTestSuite.run()
