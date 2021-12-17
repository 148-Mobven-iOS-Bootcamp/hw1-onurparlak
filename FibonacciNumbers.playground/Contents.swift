import Foundation

var fibNumbers: [Int] = []

func findFibNumber(
    number1: Int = 0,
    number2: Int = 1,
    startingPoint: Int,
    target: Int
) {
    let fibNumber = number1 + number2
    if fibNumber > startingPoint && fibNumber < target {
        fibNumbers.append(fibNumber)
    }
    if fibNumber < target {
        findFibNumber(
            number1: number2,
            number2: fibNumber,
            startingPoint: startingPoint,
            target: target
        )
    }
}

findFibNumber(startingPoint: 750, target: 1000)
