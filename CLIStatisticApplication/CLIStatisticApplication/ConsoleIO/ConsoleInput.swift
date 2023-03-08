/**
 Object that can read input from the shell/console.
 */
struct ConsoleInput {
    static func readFromShell() -> [String] {
        Array(CommandLine.arguments.dropFirst())
    }
}
