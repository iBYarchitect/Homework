/**
 Represent a dummy shopping list.
 */
struct DummyGroceryList: ShoppingList {
    var shoppingList: [String]

    /**
     A stub method to mock behavior of conforming to the protocol `ShoppingList`.
     - Parameter : Item to add into a `shoppingList`.
     The `shoppingList` won't be modified upon the method's call.
     - Returns: hardcode `true` value. The returned values does not depend on input data.
     */
    func add(_: String) -> Bool {
        true
    }

    /**
     A stub method to mock behavior of conforming to the protocol `ShoppingList`.
     - Parameter : Item to remove from a `shoppingList`.
     The `shoppingList` won't be modified upon the method's call.
     - Returns: hardcode `true` value. The returned values does not depend on input data.
     */
    func remove(_: String) -> Bool {
        true
    }

    /**
     A stub method to mock behavior of conforming to the protocol `ShoppingList`.
     - Parameter : The position of the element in the `shoppingList` to remove.
     The `shoppingList` won't be modified upon the method's call.
     - Returns: hardcode `true` value. The returned values does not depend on input data.
     */
    func remove(at _: Int) -> Bool {
        true
    }
}
