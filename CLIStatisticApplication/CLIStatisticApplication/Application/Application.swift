/**
 Encapsulates the instance of the application and manages the execution flow.
 */
struct Application {
    /**
     Method that executes the application.
     */
    static func run() {
        ConsoleOutput().printToShell("Welcome to CLIStatisticApplication, this programm could calculate mean value from number input")
        let inputFromConsole = ConsoleInput().readFromShell()

        if inputFromConsole.isEmpty {
            ConsoleOutput().printToShell("Type '--mean' to calculate mean value or '--help' to watch help")

            let input = readLine()
            switch input {
            case SupportedCommand.mean.rawValue:
                if let argument = readLine() {
                    let nums = argument.split(separator: " ").compactMap { Int($0) }
                    let result = String(CoreLogic.meanCalculation(nums))
                    ConsoleOutput().printToShell(result)
                }
            case SupportedCommand.help.rawValue:
                ConsoleOutput().printToShell(ServiceMessage.help)
            default:
                ConsoleOutput().printToShell("Error: unknown command in interactive mode, type '--help'")
            }
        } else {
            let parser = Parser()
            let parsedData = parser.parse(inputFromConsole)

            switch parsedData.command.rawValue {
            case SupportedCommand.mean.rawValue:
                if parsedData.data.isEmpty {
                    ConsoleOutput().printToShell("Invalid argument")
                } else {
                    let result = String(CoreLogic.meanCalculation(parsedData.data))
                    ConsoleOutput().printToShell(result)
                }
            case SupportedCommand.help.rawValue:
                ConsoleOutput().printToShell(ServiceMessage.help)
            default:
                let error = "error from App.run.switch"
                ConsoleOutput().printToShell(error)
            }
        }
    }
}
