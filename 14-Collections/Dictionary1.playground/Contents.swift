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
import Foundation
/*:
 # Dictionary
 ## Dictionary Literal
 ![dictliteral](dict-literal.png)
 */

var dict = ["A": "Apple", "B": "Banana"]

dict = [:]

/*:
 ## Dictionary Type
 ![type1](dict-type.png)
 ![type2](dict-type2.png)
 */

let dict1: Dictionary<String, Int>
let dict2: [String: Int]

/*:
 ## Creating a Dictionary
 */

let words = ["A": "Apple", "B": "Banana", "C": "City"]

let emptyDict: [String: String] = [:]

let emptyDict2 = [String: String]()
let dmptyDict3 = Dictionary<String, String>()

/*:
 ## Inspecting a Dictionary
 */

words.count
words.isEmpty

/*:
 ## Accessing Keys and Values
 */

words["A"]
words["Apple"]

let a = words["E"]
let b = words["E", default: "Empty"]


for k in words.keys.sorted() {
    print(k)
}

for v in words.values {
    print(v)
}


let keys = Array(words.keys)
let values = Array(words.values)
