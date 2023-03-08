/**
 Object which allows the parsing of command-line arguments and commands. It provides a simple and convenient method to define the expected arguments and commands and extract them from the command line arguments.
 */
struct Parser {
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

    func convertStringArrayToIntArray(_ stringArray: [String]) -> [Int] {
        guard !stringArray.isEmpty else { return [] }
        let intArray = stringArray.compactMap { Int($0) }

        return intArray
    }
}
