import Darwin

struct UserConsole: ConsoleIOWrapper {
    func readLine() -> String {
        Swift.readLine() ?? ""
    }

    func write(_ items: Any...) {
        items.forEach { Swift.print($0) }
    }

    func writeErrorLine(_ errorMessage: String) {
        writeErrorLine(errorMessage, "")
    }

    func writeErrorLine(_ errorMessage: String, _ helpMessage: String) {
        fputs("\(TextPrefix.error): \(errorMessage)\n", stderr)
        if !helpMessage.isEmpty { fputs("\(helpMessage)\n", stderr) }
    }
}
