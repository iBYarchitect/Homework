/**
 Object that can read input from the shell/console.
 */
struct ConsoleInput {
    /**
     Returns array of String values.
     
     Drops the first element input from the user in the shell and converts other elements to array of String values.
     - Returns: array of String values.
     - Complexity: O(1).
     */
    static func readFromShell() -> [String] {
        Array(CommandLine.arguments.dropFirst())
    }
}
