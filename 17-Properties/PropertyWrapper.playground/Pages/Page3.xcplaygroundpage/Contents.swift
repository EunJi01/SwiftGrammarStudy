//
//  Mastering Swift
//  Copyright (c) KxCoding <help@kxcoding.com>
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

//: [Previous](@previous)

import Foundation

/*:
# Property Wrapper
*/

@propertyWrapper
class SimpleWrapper {
   var wrappedValue: Int
    var metadata: String?

   init() {
      print(#function)
      wrappedValue = 0
       metadata = nil
   }
    
    init(wrappedValue: Int) {
        print(#function)
        wrappedValue = value
        metadata = nil
    }
    
    init(wrappedValue: Int, metadata: String?) {
        print(#function)
        self.wrappedValue = wrappedValue
        self.metadata = metadata
    }
}


struct MyType {
    @SimpleWrapper
    var a: Int = 123
    
    @SimpleWrapper(wrappedValue: 456)
    var b: Int
    
    @SimpleWrapper(wrappedValue: 123, metadata: "number")
    var c: Int
    
    @SimpleWrapper(metadata: "number")
    var d: Int = 123 {
        get {
            
        }
        set {
            
        }
    }
}

let t = MyType()





