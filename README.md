# iOS Engineering Homework

## First Task: Implementing Eight Simple Swift Functions

In this task, I have implemented eight simple Swift functions as follows:

1. `func minMaxBetweenTwoNumbers(_ a: Int, _ b: Int) -> (min: Int, max: Int)`: This function takes two integer numbers as input and returns a tuple containing the minimum and maximum values.

2. `func minMaxBetweenThreeNumbers(_ a: Int, _ b: Int, _ c: Int) -> (min: Int, max: Int)`: This function takes three integer numbers as input and returns a tuple containing the minimum and maximum values.

3. `func findMinMaxInIntArray(_ array: [Int]) -> (min: Int, max: Int)`: This function takes an array of integers as input and returns a tuple containing the minimum and maximum values in the array.

4. `func findMinMaxInDoubleArray(_ array: [Double]) -> (min: Double, max: Double)`: This function takes an array of doubles as input and returns a tuple containing the minimum and maximum values in the array.

## Second Task: Rewriting Functions with XCTest and Generics

In this task, I have rewritten the functions from the first task using the XCTest framework to write unit tests. Additionally, where it makes sense, I have rewritten the functions to use generics for increased flexibility.

## Third Task: Implementing Stack and StackStatistics Classes

In this task, I have created two classes, `Stack` and `StackStatistics`.

### Stack Class

The `Stack` class has the following interfaces:

1. `func push(_ element: T)`: Adds an element of generic type `T` on the top of the stack.
2. `func pop() -> T?`: Removes the top element from the stack and returns it.
3. `func peek() -> T?`: Returns the top element from the stack without removing it.
4. `func isEmpty() -> Bool`: Checks if the stack is empty and returns a boolean value.

### StackStatistics Class

The `StackStatistics` class inherits from the `Stack` class and adds the following additional operation:

1. `func getMinimum() -> T?`: Returns the minimum element from the stack.

## Fourth Task: macOS CLI App for Grocery List

In this task, I have implemented a macOS CLI app to store a grocery list (shopping list). The app supports the following actions:

1. `list`: See the list of items in the shopping list.
2. `add <item>`: Add an item to the shopping list.
3. `remove <item>`: Remove an item from the shopping list.
4. The shopping list should not exceed 10 items, and appropriate error messages are shown if the user tries to add more items or add duplicate items.

Additionally, I have created a model that conforms to the `ShoppingList` protocol, which provides the necessary functions to manage the grocery list.

## Fifth Task: Refactoring Grocery List App to MVC Architecture and SwiftUI

In this task, I have refactored the CLI app for the grocery list to follow the Model-View-Controller (MVC) architecture. This means separating the model, view, and controller components of the app.

I have also explored SwiftUI and completed the tutorials. After that, I decomposed 2 screens from an iOS app of my choice into UI components, describing the UI elements used in the app.

Finally, I have created a one-screen iOS app and implemented a simple interface using SwiftUI.
