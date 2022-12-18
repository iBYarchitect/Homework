import Foundation

//MARK: - Choose min between 2 Int

func minOfTwo(_ num1: Int, _ num2: Int) -> Int {
    if num1 < num2 {
        return num1
    } else {
        return num2
    }
}

minOfTwo(-4, -5)

//MARK: - Choose max between 2 Int

func maxOfTwo(_ num1: Int, _ num2: Int) -> Int {
    if num1 > num2 {
        return num1
    } else {
        return num2
    }
}

maxOfTwo(-4, -5)

//MARK: - Choose min between 3 Int

func minOfThree(_ num1: Int,_ num2: Int,_ num3: Int) -> Int {
        var lesserOfThree: Int
        lesserOfThree = minOfTwo(num3, minOfTwo(num1, num2))
        return lesserOfThree
    }

minOfThree(1, 2, 3)

//MARK: - Choose max between 3 Int

func maxOfThree(_ num1: Int,_ num2: Int,_ num3: Int) -> Int {
        var greaterOfThree: Int
        greaterOfThree = maxOfTwo(num3, maxOfTwo(num1, num2))
        return greaterOfThree
    }

maxOfThree(1, 2, 3)

//MARK: - Find min in array of Ints

func minNumInArrInt(_ array: [Int]) -> Int? {
    if array.isEmpty { return nil }
    var minNum = array[0]
    for item in array {
        if item < minNum {
            minNum = item
        }
    }
    return minNum
}

minNumInArrInt([-2, 2, 2, -2])

//MARK: - Find max in array of Ints

func maxNumInArrInt(_ array: [Int]) -> Int? {
    if array.isEmpty { return nil }
    var maxNum = array[0]
    for item in array {
        if (item > maxNum) {
            maxNum = item
        }
    }
    return maxNum
}

maxNumInArrInt([1, 2, 3])

//MARK: - Find min in array of Doubles

func minNumInArrDouble(_ array: [Double]) -> Double? {
    if array.isEmpty {return nil}
    var minNum = array[0]
    for item in array {
        if (item < minNum) {
            minNum = item
        }
    }
    return minNum
}

minNumInArrDouble([3.564, 3.232, 3.123, 3.732, 4])

//MARK: - Find max in array of Doubles

func maxNumInArrDouble(_ array: [Double]) -> Double? {
    if array.isEmpty {return nil}
    var maxNum = array[0]
    for item in array {
        if (item > maxNum) {
            maxNum = item
        }
    }
    return maxNum
}

maxNumInArrDouble([3.564, 3.232, 3.123, 3.732, 4])


