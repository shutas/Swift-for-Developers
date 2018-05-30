//: [Previous](@previous)
import Foundation

// TODO: Implement placeFirstLetterLast() here!
func placeFirstLetterLast(_ myString: String) -> String {
    var myString = myString
    myString.append(firstCharacter(of: myString))
    myString.remove(at: myString.startIndex)
    return myString
}
//: [Next](@next)
