/**
 Represent a dummy shopping list.
 */
struct DummyGroceryList: ShoppingList {
    var shoppingList: [String]
    
    /**
     A stub method to mock behavior of conforming to the protocol `ShoppingList`.
     - Parameter item: Item to add into a `shoppingList`.
     The `shoppingList` won't be modified upon the method's call.
     - Returns: hardcore `true` value. The returned values does not depend on input data.
     */
    func add(_: String) -> Bool {
        true
    }
    
    /**
    A stub method to mock behavior of conforming to the protocol `ShoppingList`.
    - Parameter item: Item to remove from a `shoppingList`.
    The `shoppingList` won't be modified upon the method's call.
    - Returns: hardcore `true` value. The returned values does not depend on input data.
    */
    func remove(_: String) -> Bool {
        true
    }

    /**
    A stub method to mock behavior of conforming to the protocol `ShoppingList`.
    - Parameter item: The position of the elemenmt in the `shoppingList` to remove.
    The `shoppingList` won't be modified upon the method's call.
    - Returns: hardcore `true` value. The returned values does not depend on input data.
    */
    func remove(at _: Int) -> Bool {
        true
    }
}
