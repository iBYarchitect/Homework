import Foundation

//MARK: - Choose min between 2 Int

func minTwo(num1: Int, num2: Int) {
    
    if num1 < num2 {
        print("Min number \(num1)")
    } else {
        print("Min number \(num2)")
    }
    
}

minTwo(num1: 12, num2: 6)

//MARK: - Choose max between 2 Int

func maxTwo(num1: Int, num2: Int) {
    
    if num1 > num2 {
        print("Max number \(num1)")
    } else {
        print("Max number \(num2)")
    }
    
}

maxTwo(num1: 4, num2: 5)

//MARK: - Choose min between 3 Int

func minThree(num1: Int, num2: Int, num3: Int) {
    
    if num1 <= num2 && num1 <= num3 {
        print("Min number \(num1)")
    } else if num2 <= num3 && num2 <= num1 {
        print("Min number \(num2)")
    } else {
        print("Min number \(num3)")
    }
    
}

minThree(num1: 1, num2: 2, num3: 3)

//MARK: - Choose max between 3 Int

func maxThree(num1: Int, num2: Int, num3: Int) {
    
    if num1 >= num2 && num1 >= num3 {
        print("Max number \(num1)")
    } else if num2 >= num3 && num2 >= num1 {
        print("Max number \(num2)")
    } else {
        print("Max number \(num3)")
    }
    
}

maxThree(num1: 1, num2: 1, num3: 5)

//MARK: - Find min in array of Ints

func minArrSort(array: [Int]) {
    var firstNum = array[0]
    for item in array {
        if (item < firstNum) {
            firstNum = item
        }
    }
    print("Min number in array: \(firstNum)")
}

minArrSort(array: [3, 2, 4, 5])


//MARK: - Find max in array of Ints

func maxArrSort(array: [Int]) {
    var firstNum = array[0]
    for item in array {
        if (item > firstNum) {
            firstNum = item
        }
    }
    print("Min number in array: \(firstNum)")
}

maxArrSort(array: [3, 2, 4, 5])

//MARK: - Find min in array of Doubles

func minArrSortDouble(array: [Double]) {
    var firstNum = array[0]
    for item in array {
        if (item < firstNum) {
            firstNum = item
        }
    }
    print("Min number in array: \(firstNum)")
}

minArrSortDouble(array: [3.564, 3.232, 3.123, 3.732])

//MARK: - Find max in array of Doubles

func maxArrSortDouble(array: [Double]) {
    var firstNum = array[0]
    for item in array {
        if (item > firstNum) {
            firstNum = item
        }
    }
    print("Min number in array: \(firstNum)")
}

maxArrSortDouble(array: [3.564, 3.232, 3.123, 3.732])
