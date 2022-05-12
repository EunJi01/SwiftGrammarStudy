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
 # Instance Method
 ![Method](method.png)
 ![Call Method](call-method.png)
 */

class Sample {
    var data = 0
    static var sharedData = 123
    
    func doSomething() {
        print(data)
        Sample.sharedData
    }
    
    func call() {
        doSomething()
    }
}

let a = Sample()
a.data
a.doSomething()
a.call()

//class Size {
//    var width = 0.0
//    var height = 0.0
//
//    func enlarge() {
//        width += 1.0
//        height += 1.0
//    }
//}

//값 형식에서 속성을 바꾸는 메소드를 구현할 때는 반드시 mutating을 선언해야 한다
struct Size {
    var width = 0.0
    var height = 0.0
    
    mutating func enlarge() {
        width += 1.0
        height += 1.0
    }
}

var s = Size()
s.enlarge()
