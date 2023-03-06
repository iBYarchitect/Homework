/**
 Successfully parsed data.
 */
struct ParsedData {
    var command: SupportedCommand
    var data: [Int]
    init(command: SupportedCommand, data: [Int]) {
        self.command = command
        self.data = data
    }
}
