/**
 This protocol provides a wrapper for command line I/O. Can read from the STDIN and write into STDOUT, STDERR.
 */
protocol ConsoleIOWrapper {
    /**
     Reads the data from standard input through the end of the current line or until EOF is reached.
     - Returns: String read from standard input. If data is not provided, returns empty string.
     */
    func readLine() -> String

    /**
     Writes the textual representations of the given items into the standard output.
     - Parameter items: A sequence of elements to write into the STDOUT.
     */
    func write(_ items: Any...)

    /**
     Writes an error message to the standard error stream (STDERR)
     - Parameter errorMessage: An error text message that should be written into STDERR.
     */
    func writeErrorLine(_ errorMessage: String)

    /**
     Writes an error message to the standard error stream (STDERR), along with an optional help message.
     Help message writes on a new line. You can use an optional prefix before the body of the message.

     - Parameters:
         - errorMessage: A string representing the error message to be written to stderr.
         - helpMessage: An optional string representing a help message to be written to stderr.
     If this string is empty, it will not be written.
     */
    func writeErrorLine(_ errorMessage: String, _ helpMessage: String)
}
