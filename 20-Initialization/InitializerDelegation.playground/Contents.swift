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
 # Initializer Delegation
 
 ## Value Type
 */

struct Size {
   var width: Double
   var height: Double

   init(w: Double, h: Double) {
      width = w
      height = h
   }

   init(value: Double) {
       self.init(w: value, h: value)
   }
}

/*:
 ## Class
 */

class Figure {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "unknown")
    }
}

class Rectangle: Figure {
    var width = 0.0
    var height = 0.0
    
    //super.init을 호출하여 initializer를 상속받음
    init(n: String, w: Double, h: Double) {
        width = w
        height = h
        super.init(name: n)
    }
    
    convenience init(value: Double) {
        self.init(n: "rexc", w: value, h: value)
    }
}

//convenience initializer는 어떤 때에도 super.init의 호출이 불가
class Square: Rectangle {
    convenience init(value: Double) {
        self.init(n: "square", w: value, h: value)
    }
    
    convenience init() {
        self.init(value: 0.0)
    }
}
