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
import Darwin

/*:
 # Adding Methods
 */

extension Double {
    func toFahrenheit() -> Double {
        return self * 9 / 5 + 32
    }
    
    func toCelsius() -> Double {
        return (self - 32) * 5 / 9
    }
    
    static func converToFahrenheit(from celsius: Double) -> Double {
        return celsius.toFahrenheit()
    }
    
    static func converToCelsius(from fahrenheit: Double) -> Double {
        return fahrenheit.toCelsius()
    }
}


let c = 30.0
c.toFahrenheit()
c.toCelsius()

Double.converToFahrenheit(from: 30.0)
Double.converToCelsius(from: 30.0)


extension Date {
    func toString(format: String = "yyyyMMdd") -> String {
        let privateFormatter = DateFormatter()
        privateFormatter.dateFormat = format
        return privateFormatter.string(from: self)
    }
}

let today = Date()
today.toString()

today.toString(format: "MM/dd/yy")




extension String {
    static func random(length: Int, charactersIn chars: String = "abcdeABCDE12345") -> String {
        var randomString = String()
        randomString.reserveCapacity(length)
        
        for _ in 0 ..< length {
            guard let char = chars.randomElement() else { continue }
            
            randomString.append(char)
        }
        
        return randomString
    }
}

String.random(length: 3)
