/// Provides a set of constants that represent the different prompt messages
/// used throughout the ShoppingList application.
enum PromptMessage {
    /// A prompt message that welcomes the user to the application.
    static let welcome = "Hello from the ShoppingList application."

    /// A prompt message that instructs the user to use any command.
    static let useCommand = "Please use any command:"

    /// A prompt message that instructs the user to add an item to the shopping list.
    static let addingItem = "Please add an item to the shopping list:"

    /// A prompt message that instructs the user to enter the name of an item to remove it from the shopping list.
    static let removingByName = "Please enter the name of the item:"

    /// A prompt message that instructs the user to enter the index of an item to remove it from the shopping list.
    static let removingByIndex = "Please enter the index of the item:"

    /// A prompt message that thanks the user for using the application and bids them farewell.
    static let applicationExit = """
    Thank you for using the ShoppingList application.
    We hope you had a great experience with our app.
    Goodbye for now, and see you soon!
    """

    /// A prompt message that displays the list of possible commands available to the user.
    static let possibleCommands = """
    Choose what you want to do:
    \(SupportedCommand.addItem.rawValue) - \(SupportedCommand.addItem.help)
    \(SupportedCommand.removeByName.rawValue) - \(SupportedCommand.removeByName.help)
    \(SupportedCommand.removeByIndex.rawValue) - \(SupportedCommand.removeByIndex.help)
    \(SupportedCommand.showAllItems.rawValue) - \(SupportedCommand.showAllItems.help)
    \(SupportedCommand.help.rawValue) - \(SupportedCommand.help.help)
    \(SupportedCommand.exit.rawValue) - \(SupportedCommand.exit.help)
    \(SupportedCommand.quit.rawValue) - \(SupportedCommand.quit.help)
    """
}
