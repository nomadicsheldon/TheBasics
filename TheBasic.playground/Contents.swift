import UIKit

// Constant and variables

let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0

// Type annotation

var welcomeMessage: String
welcomeMessage = "Hello"

var red, green, blue: Double

// Naming constants and variables

let π = 3.14159
let 🤬 = "Irritated"
print(π)

// Comments

//
/*
 
 */

// Semicolons
let cat = "🐱"; print(cat)

// Integers
// 8, 16, 32, 64 bit

let minValue = UInt8.min // unsigned
let maxValue = UInt8.max

let minValue1 = Int8.min // signed
let maxValue1 = Int8.max

// Floating point Numbers
/*
 Double represents 64 bit floating point number
 Float represents 32 bit floating point number
 */

//---------------------------------------------------------------------------------------------//
// Type safety and Type Interface

let meaningOfLife = 42

let pi = 3.14159 // swift always chooses Double instead of float

//let anotherPi = meaningOfLife + pi //error

//---------------------------------------------------------------------------------------------//
// Numeric Literals

let decimalInteger = 17
let binaryInteger = 0b10001  // 17 in binary notation
let octalInteger = 0o21 // 17 in octal notation
let hexadecimalInteger = 0x11 // 17 in hexadecimal notation

let decimalDouble = 12.1875
let exponentDouble = 1.218735e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

//---------------------------------------------------------------------------------------------//
// Numeric Type Conversion

//let cannotBeNegative: UInt8 = -1
//let tooBig: Int8 = Int8.max + 1

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
//let twoThousandAndOne = twoThousand + one

let three = 3
let pointOneFourOneFiveNine = 0.14159
let piValue = Double(three) + pointOneFourOneFiveNine
let integerPi = Int(piValue)

//---------------------------------------------------------------------------------------------//
// Type Aliases

typealias AudioSample = UInt16

var maxAmplitudeFound = AudioSample.min

//---------------------------------------------------------------------------------------------//
// Booleans

let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("tasty")
} else {
    print("Eww")
}

//let i = 1
//if i {
//
//}

let i = 1
if i == 1 {
    
}

//---------------------------------------------------------------------------------------------//

// Tuples

let http404Error = (404, "Not Found")

let (status, statusMessage) = http404Error
print(status)
print(statusMessage)

let (status2, _) = http404Error
print(status2)

print(http404Error.0)
print(http404Error.1)

let http404ErrorCool = (status: 404, msg: "Not Found")
print(http404ErrorCool.status)
print(http404ErrorCool.msg)

//---------------------------------------------------------------------------------------------//
// Optionals

let possibleNumber = "123"
let covertedNumber = Int(possibleNumber)

// nil
var serverResponseCode: Int? = 404
serverResponseCode = nil // you can't assign nil to non optional value

var surveyAnswer: String? // assigned to nil

// If Statements and Forces unwrapping

if covertedNumber != nil {
    print("convertedNumber contains some integer value.")
}

if covertedNumber != nil {
    print("convertedNumber contains integer value \(covertedNumber!)")
}

// Optional Binding

if let actualNumber = Int(possibleNumber) {
    print(actualNumber)
} else {
    print("The String \"\(possibleNumber)\" could not be converted to an integer")
}

if let first = Int("4"), let second = Int("42"), first < second && second < 100 {
    print("\(first) < \(second) < 100")
}

if let first = Int("4") {
    if let second = Int("42") {
        if first < second && second < 100 {
            print("\(first) < \(second) < 100")
        }
    }
}

// Implicit Unwrapping Optionals

let possibleString: String? = "An optional string."
let forcedString: String = possibleString!

let assumedString: String! = "An implicit unwrapped optional string."

let optionalString = assumedString
print(optionalString)

if assumedString != nil {
    print(assumedString!)
}

if let definiteString = assumedString {
    print(definiteString)
}

//---------------------------------------------------------------------------------------------//
// Error handling

func canThrowAnError() throws {
    // func may and may not throw an error
    print("hello")
}

do {
    try canThrowAnError()
    // no error
} catch {
    // error found
}

// Explore in Error handling

//---------------------------------------------------------------------------------------------//
// Assertions and Preconditions

/*
 Assertion is only in debugging time
 Preconditions are checked in both debug and prod
 */

let age = -3
/*
 assert(age >= 3, "A person's age cna't be less than 0")
 assert(age >= 0)
 */

/*
 if age > 10 {
 print("you can ride")
 } else if age >= 0{
 print("you can't")
 } else {
 assertionFailure("A person's age can't be negative")
 }
 */

//---------------------------------------------------------------------------------------------//
// Enforcing Precondtions

let index = -3
precondition(index > 0, "Index out of bound")
