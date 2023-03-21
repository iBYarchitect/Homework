/**
 This protocol provides a wrapper for command-line I/O. Can read from the STDIN and write into STDOUT, STDERR.
 */
protocol ConsoleIOWrapper {
    /**
     Reads the data from standard input through the end of the current line or until EOF is reached.
     - Returns: String read from standard input. If data not provided, returns empty string.
     */
    func readLine() -> String

    /**
     Writes the textual representations of the given items into the standard output.
     - Parameter items: A sequence of elements to write into the STDOUT.
     */
    func write(_ items: Any...)

    /**
     Writes error message to the standard error (STDERR) output.
     - Parameter errorMessage: An error text message that should be written into STDERR.
     */
    func writeErrorLine(_ errorMessage: String)

    /**
     Writes an error message and a help message to the standard error (STDERR) output.
     The error message is prefixed with "ERROR: ". The error message is prefixed with "ERROR: ".
     The help message is optional and the next text is written on a new line.

     - Parameters:
       - errorMessage: An error text message that should be written into STDERR.
       - helpMessage: An additional text message that should be written into STDERR
     with a further information that help to solve the problem.
     */
    func writeErrorLine(_ errorMessage: String, _ helpMessage: String)
}
