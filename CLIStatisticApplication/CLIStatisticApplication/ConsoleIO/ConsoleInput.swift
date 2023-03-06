/**
 Object that can read input from the shell/console.
 */
struct ConsoleInput {
    func readFromShell() -> [String] {
        Array(CommandLine.arguments.dropFirst())
    }
}
