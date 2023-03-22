/**
 Represent a dummy shopping list.
 */
struct DummyGroceryList: ShoppingList {
    var shoppingList: [String]
    // swiftformat:disable unusedArguments
    /**
     A stub method to mock behavior of conforming to the protocol `ShoppingList`.
     - Parameter item: Item to add into a `shoppingList`.
     The `shoppingList` won't be modified upon the method's call.
     - Returns: hardcode `true` value. The returned values does not depend on input data.
     */
    func add(_ item: String) -> Bool {
        true
    }

    /**
     A stub method to mock behavior of conforming to the protocol `ShoppingList`.
     - Parameter item: Item to remove from a `shoppingList`.
     The `shoppingList` won't be modified upon the method's call.
     - Returns: hardcode `true` value. The returned values does not depend on input data.
     */
    func remove(_ item: String) -> Bool {
        true
    }

    /**
     A stub method to mock behavior of conforming to the protocol `ShoppingList`.
     - Parameter index: The position of the element in the `shoppingList` to remove.
     The `shoppingList` won't be modified upon the method's call.
     - Returns: hardcode `true` value. The returned values does not depend on input data.
     */
    func remove(at index: Int) -> Bool {
        true
    }
}
