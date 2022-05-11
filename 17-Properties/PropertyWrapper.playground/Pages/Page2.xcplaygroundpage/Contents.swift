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


struct PlayerSetting {
   @UserDefaultsHelper(key: "initalSpeed", defaultValue: 1.0)
   var initialSpeed: Double
    
   @UserDefaultsHelper(key: "supportGesture", defaultValue: true)
   var supportGesture: Bool
    
    func resetAll() {
        _initialSpeed.reset()
        _supportGesture.reset()
    }
}

@propertyWrapper
struct UserDefaultsHelper<Value> {
    let key: String
    let defaultValue: Value
    
    var wrappedValue: Value {
        get {
            UserDefaults.standard.object(forKey: key) as? Value ?? defaultValue
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: key)
        }
    }
    
    func reset() {
        UserDefaults.standard.setValue(defaultValue, forKey: key)
    }
    
    var projectedValue: Self { return self }
}


var currentSetting = PlayerSetting()

currentSetting.initialSpeed
currentSetting.initialSpeed = 1.5
currentSetting.initialSpeed

currentSetting.supportGesture
currentSetting.supportGesture = false
currentSetting.supportGesture

currentSetting.$initialSpeed.reset()

//: [Next](@next)
