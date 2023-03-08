/**
 Object that implements the main logic of the application, especially the computations of various statistics for the user.
 */
struct CoreLogic {
    /**
     Returns mean value.
     
     Calculates the mean value from input array of integer values.
     - Parameter array: array of Int values.
     - Returns: the mean value in the Double form.
     - Complexity: O(n), where n is the length of this input array.
     */
    static func meanCalculation(_ array: [Int]) -> Double {
        let count = Double(array.count)
        var sum = 0.0

        for number in array {
            sum += Double(number)
        }

        return sum / count
    }
}
