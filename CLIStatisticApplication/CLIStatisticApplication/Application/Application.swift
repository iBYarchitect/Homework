/**
 Encapsulates the instance of the application and manages the execution flow.
 */
struct Application {
    /**
     Method that executes the application.
     */
    static func run() {
        ConsoleOutput.printToShell(ServiceMessage.welcome)
        let inputFromConsole = ConsoleInput.readFromShell()

        if inputFromConsole.isEmpty {
            ConsoleOutput.printToShell(ServiceMessage.interactiveMode)

            let input = readLine()
            switch input {
            case SupportedCommand.mean.rawValue:
                if let argument = readLine() {
                    let nums = argument.split(separator: " ").compactMap { Int($0) }
                    let result = String(CoreLogic.meanCalculation(nums))
                    ConsoleOutput.printToShell(result)
                }
            case SupportedCommand.help.rawValue:
                ConsoleOutput.printToShell(ServiceMessage.help)
            default:
                ConsoleOutput.printToShell(ServiceMessage.invalidInputError)
            }
        } else {
            let parser = Parser()
            let parsedData = parser.parse(inputFromConsole)

            switch parsedData.command.rawValue {
            case SupportedCommand.mean.rawValue:
                if parsedData.data.isEmpty {
                    ConsoleOutput.printToShell(ServiceMessage.invalidInputError)
                } else {
                    let result = String(CoreLogic.meanCalculation(parsedData.data))
                    ConsoleOutput.printToShell(result)
                }
            case SupportedCommand.help.rawValue:
                ConsoleOutput.printToShell(ServiceMessage.help)
            default:
                let error = "error from App.run.switch"
                ConsoleOutput.printToShell(error)
            }
        }
    }
}
