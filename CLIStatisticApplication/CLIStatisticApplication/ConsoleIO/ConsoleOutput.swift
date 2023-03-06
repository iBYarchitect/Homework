/**
 Object that can print output to the shell/console.
 */
struct ConsoleOutput {
    func printToShell(_ message: String) {
        if message == "nan" {
            print("Invalid argument")
        } else {
            print(message)
        }
    }
}
