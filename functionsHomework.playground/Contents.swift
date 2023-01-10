import XCTest

// MARK: - Find min in array of Ints

/// Return the least value from array of Int input.
/// Asymptotic complexity - O(n).
func minimumNumberInArrayOfInt(_ array: [Int]) -> Int? {
    guard var minimumNumber = array.first else {
        return nil
    }

    for item in array {
        minimumNumber = min(item, minimumNumber)
    }

    return minimumNumber
}

/// Tests for minimumNumberInArrayOfInt function.
class MinimumNumberInArrayOfIntTests: XCTestCase {
    /// Test case for situation with input of positive array Int with three values.
    func testFindMinValueReturnsMinValueWhenGiveArrayOfPositiveInt() {
        XCTAssertEqual(minimumNumberInArrayOfInt([3, 2, 1]), 1)
    }

    /// Test case for situation with input of nil.
    func testFindMinValueReturnsMinValueWhenGiveNil() {
        XCTAssertEqual(minimumNumberInArrayOfInt([]), nil)
    }

    /// Test case for situation with input of positive array Int with one value.
    func testFindMinValueReturnsMinValueWhenGiveArrayWithOnePositiveNumber() {
        XCTAssertEqual(minimumNumberInArrayOfInt([2]), 2)
    }

    /// Test case for situation with input of array Int with three zeros.
    func testFindMinValueReturnsMinValueWhenGiveArrayWithThreeZeros() {
        XCTAssertEqual(minimumNumberInArrayOfInt([0, 0, 0]), 0)
    }

    /// Test case for situation with input of array Int with one positive and one negative values.
    func testFindMinValueReturnsMinValueWhenGiveArrayWithPositiveAndNegativeValue() {
        XCTAssertEqual(minimumNumberInArrayOfInt([-2, 2]), -2)
    }
}

MinimumNumberInArrayOfIntTests.defaultTestSuite.run()

// MARK: - Find max in array of Ints

/// Return the greater value from array of Int input.
/// Asymptotic complexity - O(n).
func maximumNumberInArrayOfInt(_ array: [Int]) -> Int? {
    guard var maximumNumber = array.first else {
        return nil
    }

    for item in array {
        maximumNumber = max(item, maximumNumber)
    }

    return maximumNumber
}

/// Tests for maximumNumberInArrayOfInt function.
class MaximumNumberInArrayOfIntTests: XCTestCase {
    /// Test case for situation with input of positive array Int with three values.
    func testFindMaxValueReturnsMinValueWhenGiveArrayOfPositiveInt() {
        XCTAssertEqual(maximumNumberInArrayOfInt([3, 2, 1]), 3)
    }

    /// Test case for situation with input of nil.
    func testFindMaxValueReturnsMinValueWhenGiveNil() {
        XCTAssertEqual(maximumNumberInArrayOfInt([]), nil)
    }

    /// Test case for situation with input of positive array Int with one value.
    func testFindMaxValueReturnsMinValueWhenGiveArrayWithOnePositiveNumber() {
        XCTAssertEqual(maximumNumberInArrayOfInt([2]), 2)
    }

    /// Test case for situation with input of array Int with three zeros.
    func testFindMaxValueReturnsMinValueWhenGiveArrayWithThreeZeros() {
        XCTAssertEqual(maximumNumberInArrayOfInt([0, 0, 0]), 0)
    }

    /// Test case for situation with input of array Int with one positive and one negative values.
    func testFindMaxValueReturnsMinValueWhenGiveArrayWithPositiveAndNegativeValue() {
        XCTAssertEqual(maximumNumberInArrayOfInt([-2, 2]), 2)
    }
}

MaximumNumberInArrayOfIntTests.defaultTestSuite.run()

// MARK: - Find min in array of Doubles

/// Return the least value from array of Double input.
/// Asymptotic complexity - O(n).
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

/// Tests for minimumNumberInArrayOfDouble function.
class MinimumNumberInArrayOfDoubleTests: XCTestCase {
    /// Test case for situation with input positive array of Double with two Double and one Int values.
    func testFindMinValueReturnsMinValueWhenGiveArrayOfTwoPositiveDoublesAndOneIntValues() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([3.1, 3.2, 4]), 3.1)
    }

    /// Test case for situation with input positive array of Double with two Double and one Int values.
    func testFindMinValueReturnsMinValueWhenGiveArrayOfThreePositiveDoubleValues() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([3.1, 3.2, 4.4]), 3.1)
    }

    /// Test case for situation with input of nil.
    func testFindMinValueReturnsMinValueWhenGiveNil() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([]), nil)
    }

    /// Test case for situation with input of array Double with three zeros.
    func testFindMinValueReturnsMinValueWhenGiveArrayWithThreeZeroValues() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([0, 0, 0]), 0)
    }

    /// Test case for situation with input of positive array Double with one value.
    func testFindMinValueReturnsMinValueWhenGiveArrayWithOnePositiveDoubleValue() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([2.1]), 2.1)
    }

    /// Test case for situation with input of positive array Double with three positive Int values.
    func testFindMinValueReturnsMinValueWhenGiveArrayOfThreePositiveInt() {
        XCTAssertEqual(minimumNumberInArrayOfDouble([3, 4, 5]), 3)
    }
}

MinimumNumberInArrayOfDoubleTests.defaultTestSuite.run()

// MARK: - Find max in array of Doubles

/// Return the greater value from array of Double input.
/// Asymptotic complexity - O(n).
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

/// Tests for maximumNumberInArrayOfDouble function.
class MaximumNumberInArrayOfDoubleTests: XCTestCase {
    /// Test case for situation with input positive array of Double with two Double and one Int values.
    func testFindMinValueReturnsMinValueWhenGiveArrayOfTwoPositiveDoublesAndOneIntValues() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([3.1, 3.2, 4]), 3.1)
    }

    /// Test case for situation with input positive array of Double with two Double and one Int values.
    func testFindMinValueReturnsMinValueWhenGiveArrayOfThreePositiveDoubleValues() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([3.1, 3.2, 4.4]), 3.1)
    }

    /// Test case for situation with input of nil.
    func testFindMinValueReturnsMinValueWhenGiveNil() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([]), nil)
    }

    /// Test case for situation with input of array Double with three zeros.
    func testFindMinValueReturnsMinValueWhenGiveArrayWithThreeZeroValues() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([0, 0, 0]), 0)
    }

    /// Test case for situation with input of positive array Double with one value.
    func testFindMinValueReturnsMinValueWhenGiveArrayWithOnePositiveDoubleValue() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([2.1]), 2.1)
    }

    /// Test case for situation with input of positive array Double with three positive Int values.
    func testFindMinValueReturnsMinValueWhenGiveArrayOfThreePositiveInt() {
        XCTAssertEqual(maximumNumberInArrayOfDouble([3, 4, 5]), 3)
    }
}

MaximumNumberInArrayOfDoubleTests.defaultTestSuite.run()
