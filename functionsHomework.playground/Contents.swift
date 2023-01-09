import XCTest

// MARK: - Choose min between 2 Int

/// Return the least value from 2 Int input.
func minimumOfTwo(_ number1: Int, _ number2: Int) -> Int {
    (number1 < number2) ? number1 : number2
}

/// Tests for minimumOfTwo function.
class MinimumOfTwoTests: XCTestCase {
    /// Test case for situation with input of two positive Int values.
    func testFindMinValueReturnsMinValueWhenGiveTwoPositiveNumbers() {
        XCTAssertEqual(minimumOfTwo(1, 2), 1)
    }
    
    /// Test case for situation with input of one positive and one negative Int value.
    func testFindMinValueReturnsMinValueWhenGiveOneNegavtiveAndOnePositiveNumber() {
        XCTAssertEqual(minimumOfTwo(-2, 2), -2)
    }
    
    /// Test case for situation with input of two zero values.
    func testFindMinValueReturnsMinValueWhenGiveTwoZeros() {
        XCTAssertEqual(minimumOfTwo(0, 0), 0)
    }
    
    /// Test case for situation with input of two minimum representable integer values.
    func testFindMinValueReturnsMinValueWhenGiveTwoIntMinNumbers() {
        XCTAssertEqual(minimumOfTwo(Int.min, Int.min), Int.min)
    }
}

MinimumOfTwoTests.defaultTestSuite.run()
