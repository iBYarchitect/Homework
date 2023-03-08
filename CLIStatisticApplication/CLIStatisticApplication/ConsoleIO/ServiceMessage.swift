/**
 Contains different types of messages which uses in console output.
 */
struct ServiceMessage {
    static let help = """
        Possible commands:
        --mean write this command and sequence of numbers to calculate mean value
        --help show possible commands
    """
    static let welcome = "Welcome to CLIStatisticApplication, this programm could calculate mean value from number input"
    static let interactiveMode = "Type '--mean' to calculate mean value or '--help' to watch help"
    static let invalidInputError = "Invalid command, please write --help to look at possible commands"
}
