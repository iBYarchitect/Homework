import XCTest

final class InMemoryShoppingListTests: XCTestCase {
    private var sut = InMemoryShoppingList()
    var maxCapacity = 10

    func testAddAddsNewItemToTheShoppingList() {
        // Given
        let item = "Banana"

        // When
        let result = sut.add(item)

        // Then
        let expectedCountOfItemsAfterAddOperation = 1

        XCTAssertTrue(result)
        XCTAssertEqual(sut.shoppingList.count, expectedCountOfItemsAfterAddOperation)
        XCTAssertEqual(sut.shoppingList.last, item)
    }

    func testAddDoesNotAddTheSameItemTwice() {
        // Given
        let item = "Kiwi"

        // When
        sut.add(item)
        let lastAddOperationResult = sut.add(item)

        // Then
        let expectedCountOfItemsAfterAddOperation = 1

        XCTAssertFalse(lastAddOperationResult)
        XCTAssertEqual(sut.shoppingList.count, expectedCountOfItemsAfterAddOperation)
        XCTAssertEqual(sut.shoppingList.last, item)
    }

    func testAddDoesNotAddAnItemWhenTheListIsFull() {
        // Given
        for number in 1...maxCapacity {
            sut.add("Item\(number)")
        }
        let item = "Tomato"

        // When
        let result = sut.add(item)

        // Then
        XCTAssertFalse(result)
        XCTAssertEqual(sut.shoppingList.count, maxCapacity)
    }

    func testAddDoesNotAddExistingItemToTheEndOfTheListWhenTheListIsFull() {
        // Given
        for number in 1...maxCapacity {
            sut.add("Item\(number)")
        }
        let item = "Item1"

        // When
        let result = sut.add(item)

        // Then
        XCTAssertFalse(result)
        XCTAssertEqual(sut.shoppingList.count, maxCapacity)
    }

    func testAddDoesNotAddAnEmptyItem() {
        // Given
        let emptyItem = ""
        let expectedCountOfItemsAfterAddOperation = sut.shoppingList.count

        // When
        let result = sut.add(emptyItem)

        // Then
        XCTAssertFalse(result)
        XCTAssertEqual(sut.shoppingList.count, expectedCountOfItemsAfterAddOperation)
    }
}
