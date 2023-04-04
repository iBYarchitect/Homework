/// Implements the `ShoppingList` protocol that stores the groceries list in memory.
class InMemoryShoppingList: ShoppingList {
    /**
     Adds an item to the end of the list. An empty item is not added to the list..
     - Parameter item: Item to add to the `shoppingList`.
     The `shoppingList` won't be modified upon the method's call.
     - Returns: `true` if the `item` was added into a `shoppingList`, otherwise `false`.
     If the `item` is empty, returns `false`.
     */
    @discardableResult func add(_ item: String) -> Bool {
        guard !shoppingList.contains(item) && shoppingList.count < maxValue else { return false }
        guard !item.isEmpty else { return false }
        shoppingList.append(item)
        return true
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

    // MARK: - Private interface

    private(set) var shoppingList: [String] = []
    private let maxValue = 10
}
