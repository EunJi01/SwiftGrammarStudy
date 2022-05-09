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

/*:
 # Enumeration Case Pattern
 ![enum-case](enum-case.png)
 */

enum Transportation {
    case bus(number: Int)
    case taxi(company: String, number: String)
    case subway(lineNumver: Int, express: Bool)
}

var tpt = Transportation.bus(number: 7)

switch tpt {
case .bus(let n):
    print(n)
case .taxi(let c, var n):
    print(c, n)
case let .subway(l, e):
    print(l, e)
}


tpt = Transportation.subway(lineNumver: 2, express: false)

if case let .subway(2, express) = tpt {
    if express {
        
    } else {
        
    }
}

if case .subway(_, true) = tpt {
    print("express")
}




let list = [
    Transportation.subway(lineNumver: 2, express: false),
    Transportation.bus(number: 4412),
    Transportation.subway(lineNumver: 7, express: true),
    Transportation.taxi(company: "SeoulTaxi", number: "1234")
]

for case let . subway(n, _) in list {
    print("subway \(n)")
}

for case let .subway(n, true) in list {
    print("subway \(n)")
}

for case let .subway(n, true) in list where n == 2 {
    print("subway \(n)")
}
