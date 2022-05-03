//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
import UIKit
import Foundation

/*:
 # Character Set
 */

let a = CharacterSet.uppercaseLetters

let b = a.inverted


var str = "loRem Ipsum"
var charSet = CharacterSet.uppercaseLetters

if let range = str.rangeOfCharacter(from: charSet) {
    print(str.distance(from: str.startIndex, to: range.lowerBound))
}

//if let range = str.rangeOfCharacter(from: charSet, options: [.backward]) {
//    print(str.distance(from: str.startIndex, to: range.lowerBound))
//}




str = " A p p l e "
charSet = .whitespaces

let trimmed = str.trimmingCharacters(in: charSet)
print(trimmed)


var editTarget = CharacterSet.uppercaseLetters

editTarget.insert("#")
editTarget.insert(charactersIn: "~!@")

editTarget.remove("A")

editTarget.remove(charactersIn: "BCD")




let customCharSet = CharacterSet(charactersIn: "@.")
let email = "userId@example.com"

let components = email.components(separatedBy: customCharSet)
