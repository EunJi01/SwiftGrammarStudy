//
//  Copyright (c) 2019 KxCoding <kky0317@gmail.com>
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
 # Result Type
 */

enum NumberError: Error {
   case negativeNumber
   case evenNumber
}

enum AnotherNumberError: Error {
   case tooLarge
}

func process(oddNumber: Int) throws -> Int {
   guard oddNumber >= 0 else {
      throw NumberError.negativeNumber
   }
   
   guard !oddNumber.isMultiple(of: 2) else {
      throw NumberError.evenNumber
   }
    
    guard oddNumber < 10000 else {
        throw AnotherNumberError.tooLarge
    }
   
   return oddNumber * 2
}

//do {
//    let result = try process(oddNumber: 10001)
//    print(result)
//} catch let myErr as NumberError {
//    switch myErr {
//    case .negativeNumber:
//        print("negative number")
//    case .evenNumber:
//        print("even number")
//    }
//
//} catch {
//    print(error.localizedDescription)
//}

let result = Result { try process(oddNumber: 1) }
switch result {
case .success(let data):
    print(data)
case .failure(let error):
    print(error.localizedDescription)
}

func processResult(oddNumber: Int) -> Result<Int, NumberError> {
   guard oddNumber >= 0 else {
       return .failure(.negativeNumber)
   }
   
   guard !oddNumber.isMultiple(of: 2) else {
       return .failure(.evenNumber)
   }
    
//    guard oddNumber < 10000 else {
//        return .failure(<#T##NumberError#>)
//    }
   
    return .success(oddNumber * 2)
}

let result2 = processResult(oddNumber: 1)
switch result2 {
case .success(let data):
    print(data)
case .failure(let error):
    print(error.localizedDescription)
}

if let result = try? result2.get() {
    print(result)
}
