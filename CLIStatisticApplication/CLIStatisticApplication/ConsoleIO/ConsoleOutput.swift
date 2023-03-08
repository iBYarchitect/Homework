/**
 Object that can print output to the shell/console.
 */
struct ConsoleOutput {
    /**
     Print any string information to console.
     
     Print any string information to console.
     - Parameter message: String value.
     - Complexity: O(1).
     */
    static func printToShell(_ message: String) {
        if message == "nan" {
            print("Invalid argument")
        } else {
            print(message)
        }
    }
}
