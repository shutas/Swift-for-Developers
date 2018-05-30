//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

// Join an array of strings into a single template string:
let bananaFanaTemplate = [
    "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
    "Banana Fana Fo F<SHORT_NAME>",
    "Me My Mo M<SHORT_NAME>",
    "<FULL_NAME>"].joined(separator: "\n")

func shortNameFromName(name: String) -> String {
    let lowercasedName = name.lowercased()
    let vowelSet = CharacterSet(charactersIn: "aeiou")
    // Get Range object to process slicing
    let range = name.rangeOfCharacter(from: vowelSet, options: .caseInsensitive)!
    let shortName = String(lowercasedName.characters.suffix(from: range.lowerBound))
    return shortName
}

func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
    // Replace Full Names
    var myTemplate = lyricsTemplate.replacingOccurrences(of: "<FULL_NAME>", with: fullName)
    // Replace Short Names
    myTemplate = myTemplate.replacingOccurrences(of: "<SHORT_NAME>", with: shortNameFromName(name: fullName))
    return myTemplate
}

print(lyricsForName(lyricsTemplate: bananaFanaTemplate, fullName: "Nate"))
