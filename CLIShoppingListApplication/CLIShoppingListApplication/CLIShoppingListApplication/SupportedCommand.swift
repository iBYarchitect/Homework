/// Representing the supported commands by shopping list application.
enum SupportedCommand: String, CaseIterable {
    /// A command to add an item to the shopping list.
    case addItem = "1"

    /// A command to remove an item from the shopping list by name.
    case removeByName = "2"

    /// A command to remove an item from the shopping list by index.
    case removeByIndex = "3"

    /// A command to show all items in the shopping list.
    case showAllItems = "4"

    /// A command to show help information to the user.
    case help = "h"

    /// A command to exit from the submenu.
    case exit = "e"

    /// A command to quit the application.
    case quit = "q"
}

/// Representing the supported commands by shopping list application.
extension SupportedCommand {
    /// A computed property that returns a string describing the purpose of each available command.
    var help: String {
        switch self {
        case .addItem:
            return "Add an item to the shopping list."
        case .removeByName:
            return "Remove an item from the shopping list by name."
        case .removeByIndex:
            return "Remove an item from the shopping list by index."
        case .showAllItems:
            return "Show all items in the shopping list."
        case .help:
            return "Show the help page."
        case .exit:
            return "Exit from the submenu."
        case .quit:
            return "Quit the application."
        }
    }
}
