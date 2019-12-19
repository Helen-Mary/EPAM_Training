
import Foundation

let pairNumber : Int! = Int(readLine()!)
var pair : String!

for _ in 0..<pairNumber {
    pair = readLine()
    let twoNumbers = pair.components(separatedBy: " ") 
    pair = ""
    
    guard let firstNumber = Int(twoNumbers[0]),
        let secondNumber = Int(twoNumbers[1]) else {
            continue
    }
    
    var result = firstNumber
    for number in (firstNumber + 1)...secondNumber {
        result &= number
    }
    pair += String(result) + " "
}

print(pair)
