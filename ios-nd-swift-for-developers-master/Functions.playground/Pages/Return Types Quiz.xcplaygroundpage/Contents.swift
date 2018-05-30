//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func firstCharacter(of string: String) -> Character {
    return string[string.startIndex]
}

firstCharacter(of: "Shuta")

func placeFirstLetterLast(_ myString: String) -> String {
    var myString = myString
    myString.append(firstCharacter(of: myString))
    myString.remove(at: myString.startIndex)
    return myString
}

placeFirstLetterLast("Shuta")
//: [Next](@next)
