import Foundation

let numbers = "0123456789"
let lowerCase = "abcdefghijklmnopqrstuvwxyz"
let upperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
let specialCharacters = "!@#$%^&*()-+"

let passwordLength: Int! = Int(readLine()!)
let password: String!  = readLine()

//Counts minimum amount of characters that are required
var countToAdd = 0

    //Contains all unique characters of password
    var allCharacters = Set<Character>()

    password.forEach() {
        allCharacters.insert($0)
    }
    
    //Cheking absent categories of in password
    if allCharacters.isDisjoint(with: numbers) {
        countToAdd += 1
    }
    
    if allCharacters.isDisjoint(with: lowerCase) {
        countToAdd += 1
    }
    
    if allCharacters.isDisjoint(with: upperCase) {
        countToAdd += 1
    }
    
    if allCharacters.isDisjoint(with: specialCharacters) {
        countToAdd += 1
    }

let insufficientSize = 6 - passwordLength
if passwordLength > 6 || countToAdd >= insufficientSize {
    print(countToAdd)
} else {
    print(insufficientSize)
}
