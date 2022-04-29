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
import UIKit
import Foundation

/*:
 # Nonreturning Functions
 */

func returnSomething() -> Int {
   return 0
}

let result = returnSomething()
print(result)


func returnNothing() {
   return
}

returnNothing()
print("done")


func doSomethingAndTerminate() -> Never {
    fatalError("msg")
}

//doSomethingAndTerminate()
print("after terminate")

enum MyError: Error {
    case error
}

func doSomethingAndAlwaysThrow() throws -> Never {
    throw MyError.error
}

do {
    try doSomethingAndAlwaysThrow()
    print("after try")
} catch {
    print(error)
}

func terminate() -> Never {
    fatalError("positive only")
}

func doSomething(with value: Int) -> Int {
    guard value >= 0 else {
        terminate()
    }
    
    return 0
}

//doSomething(with: -1)


//Void와 Never를 혼동하지 말기
//Never >> 프로그램이 종료되거나 에러를 던지도록 강제
//Void >> return할 값이 없다는 것을 의미
