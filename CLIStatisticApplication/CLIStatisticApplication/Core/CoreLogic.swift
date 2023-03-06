/**
 Object that implements the main logic of the application, especially the computations of various statistics for the user.
 */
struct CoreLogic {
    static func meanCalculation(_ array: [Int]) -> Double {
        let count = Double(array.count)
        var sum = 0.0

        for number in array {
            sum += Double(number)
        }

        return sum / count
    }
}
