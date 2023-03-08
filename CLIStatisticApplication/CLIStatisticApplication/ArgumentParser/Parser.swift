/**
 Object which allows the parsing of command-line arguments and commands. It provides a simple and convenient method to define the expected arguments and commands and extract them from the command line arguments.
 */
struct Parser {
    /**
     Returns command and argument data after parsing.
     
     Parses a given input string using a set of parsing rules and returns the parsed result.
     - Parameter userInput: array of String values.
     - Returns: command and argument data which contains in ParsedData structure.
     - Complexity: O(m + n), in case when we use the convertStringArrayToIntArray method where n is the length of this sequence and m is the length of the result. O(1) in case of invalid input.
     */
    func parse(_ userInput: [String]) -> ParsedData {
        let tempCommand = userInput.first
        var result = ParsedData(command: SupportedCommand.mean, data: [])

        switch tempCommand {
        case SupportedCommand.mean.rawValue:
            result.data = convertStringArrayToIntArray(Array(userInput.dropFirst()))
            result.command = SupportedCommand.mean
        case SupportedCommand.help.rawValue:
            result.data = convertStringArrayToIntArray(Array(userInput.dropFirst()))
            result.command = SupportedCommand.help
        default:
            ConsoleOutput.printToShell(ServiceMessage.invalidInputError)
        }

        return result
    }
    /**
     Returns array of Int values.
     
     Converts a given input array of string to array of Int values.
     - Parameter stringArray: array of String values.
     - Returns: array of Int values.
     - Complexity: O(m + n), where n is the length of this sequence and m is the length of the result.
     */
    func convertStringArrayToIntArray(_ stringArray: [String]) -> [Int] {
        guard !stringArray.isEmpty else { return [] }
        let intArray = stringArray.compactMap { Int($0) }

        return intArray
    }
}
