//: Playground - noun: a place where people can play

import Cocoa
import Markingbird

var markdownText = "Hello, playground, `func a()` \n\n + ~~a1~~ \n + a2"

var markdownEngine = Markdown()
let informationHTML = markdownEngine.transform(markdownText)

let informationData = informationHTML.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)
let informationString = try NSAttributedString(data: informationData!, options: [NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType], documentAttributes: nil)
informationString.length
markdownText.characters.count
informationString.string.characters.count
print(informationString.string)
