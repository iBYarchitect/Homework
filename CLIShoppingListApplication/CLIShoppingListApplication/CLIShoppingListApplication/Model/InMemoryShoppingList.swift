/**
 This protocol defines a simple interface for managing a list of items that represents the groceries to be bought.
 */
protocol ShoppingList {
    /// Stores groceries to shop
    var shoppingList: [String] { get }

    /**
     Adds the item in the end of the list.

     - Parameter: item: Item to add into a `shoppingList`.
     - Returns: `true` if the `item` was added into a `shoppingList`, otherwise `false`.
     */
    func add(_ item: String) -> Bool

    /**
     Removes the item from the list.

     - Parameter item: Item to remove from a `shoppingList`.
     - Returns: `true` if the `item` was removed from a `shoppingList`, otherwise `false`.
     */
    func remove(_ item: String) -> Bool

    /**
     Removes the item at specified index from the list.

     - Parameter index: The position of the elemenmt in the `shoppingList` to remove.
     - Returns: `true` if the item at `index` was removed from a `shoppingList`, otherwise `false`.
     */
    func remove(at index: Int) -> Bool
}

struct InMemory: ShoppingList {
    var shoppingList: [String]

    func add(_: String) -> Bool {
        true
    }

    func remove(_: String) -> Bool {
        true
    }

    func remove(at _: Int) -> Bool {
        true
    }
}
