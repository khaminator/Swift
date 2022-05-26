import UIKit

//Using Optionals
//-- When you declare a variable but don't want to set a default value
//-- When you want to use nil to represent an unset state
//--When you're using a variable to reference data that can actually be nil (Good for APIs)




var a = 1
var b:Int! = nil //turns this into an Implicitly Unwrapped optional
//var b:Int! //also turns this into an Implicitly Unwrapped optional
var c:Int? = nil //This is an optional

if b != nil {
    var x = 1 + b
}

if c != nil {
    var x = 1 + c! //This is how you "Unwrap" the optional above. Add the "!"
}

var d:Int! = nil
//Implicitly Unwrapped Optional
// Can contain nil
// Xcode doesn't warn us
// **Don't need to unwrap**

var e:Int? = nil
//Optional
//Can contain nil
// Xcode warns us
// Need to unwrap to get the value


//Using an if statement to check nil
if c != nil {
    var x = 1 + c!
}

//Optional Binding = nice so don't have to unwrap it everytime you want to use it. Also checks to make sure there is a value
if let y = c {
    var x = 1 + y
}

struct Person {
    
    func talk() {
        print("hello")
    }
}

var h:Person? = Person()
h?.talk() //This will work if d isn't nil.
