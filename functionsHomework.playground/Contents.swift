import XCTest

// MARK: - Choose max between 2 Int

/// Return the greater value from 2 Int input.
func maximumOfTwo(_ number1: Int, _ number2: Int) -> Int {
    (number1 > number2) ? number1 : number2
}

/// Tests for maximumOfTwo function.
class MaximumOfTwoTests: XCTestCase {
    /// Test case for situation with input of two positive Int values.
    func testFindMaxValueReturnsMaxValueWhenGiveTwoPositiveNumbers() {
        XCTAssertEqual(maximumOfTwo(1, 2), 2)
    }

    /// Test case for situation with input of one positive and one negative Int value.
    func testFindMaxValueReturnsMaxValueWhenGiveOneNegavtiveAndOnePositiveNumber() {
        XCTAssertEqual(maximumOfTwo(-2, 2), 2)
    }

    /// Test case for situation with input of two zero values.
    func testFindMaxValueReturnsMaxValueWhenGiveTwoZeros() {
        XCTAssertEqual(maximumOfTwo(0, 0), 0)
    }

    /// Test case for situation with input of two minimum representable integer values.
    func testFindMaxValueReturnsMaxValueWhenGiveTwoIntMaxNumbers() {
        XCTAssertEqual(maximumOfTwo(Int.max, Int.max), Int.max)
    }
}

MaximumOfTwoTests.defaultTestSuite.run()

// MARK: - Choose min between 3 Int

/// Return the least value from 3 Int input.
func minimumOfThree(_ number1: Int, _ number2: Int, _ number3: Int) -> Int {
    minimumOfTwo(number3, minimumOfTwo(number1, number2))
}

/// Tests for minimumOfThree function.
class MinimumOfThreeTests: XCTestCase {
    /// Test case for situation with input of three positive Int values.
    func testFindMinValueReturnsMinValueWhenGiveThreePositiveNumbers() {
        XCTAssertEqual(minimumOfThree(1, 2, 3), 1)
    }

    /// Test case for situation with input of one positive and one negative and one zero Int value.
    func testFindMinValueReturnsMinValueWhenGiveThreeDiffernetNumbers() {
        XCTAssertEqual(minimumOfThree(-6, 6, 0), -6)
    }

    /// Test case for situation with input of two zero values and one positive Int value.
    func testFindMinValueReturnsMinValueWhenGiveTwoZerosAndOnePositiveNumbers() {
        XCTAssertEqual(minimumOfThree(0, 0, 1), 0)
    }

    /// Test case for situation with input of three zero values.
    func testFindMinValueReturnsMinValueWhenGiveThreeZeros() {
        XCTAssertEqual(minimumOfThree(0, 0, 0), 0)
    }
}

MinimumOfThreeTests.defaultTestSuite.run()

// MARK: - Choose max between 3 Int

/// Return the greater value from 3 Int input.
func maximumOfThree(_ number1: Int, _ number2: Int, _ number3: Int) -> Int {
    maximumOfTwo(number3, maximumOfTwo(number1, number2))
}

/// Tests for maximumOfThree function.
class MaximumOfThreeTests: XCTestCase {
    /// Test case for situation with input of three positive Int values.
    func testFindMinValueReturnsMinValueWhenGiveThreePositiveNumbers() {
        XCTAssertEqual(maximumOfThree(1, 2, 3), 3)
    }

    /// Test case for situation with input of one positive and one negative and one zero Int value.
    func testFindMinValueReturnsMinValueWhenGiveThreeDiffernetNumbers() {
        XCTAssertEqual(maximumOfThree(-6, 6, 0), 6)
    }

    /// Test case for situation with input of two zero values and one positive Int value.
    func testFindMinValueReturnsMinValueWhenGiveTwoZerosAndOnePositiveNumbers() {
        XCTAssertEqual(maximumOfThree(0, 0, 1), 1)
    }

    /// Test case for situation with input of three zero values.
    func testFindMinValueReturnsMinValueWhenGiveThreeZeros() {
        XCTAssertEqual(maximumOfThree(0, 0, 0), 0)
    }
}

MaximumOfThreeTests.defaultTestSuite.run()
