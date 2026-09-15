/*
 Assignment #4
 Pedro Orellana
 Date: 09/15/26
 */

import UIKit


//creating the property wrapper

/*
 The functionality of this property wrapper is very simple: if a user assigns an empty string, the property wrapper will assign 'Unknown' instead. That way, there are no empty strings, but the user still knows that no value has been assigned.
 */

@propertyWrapper
struct NonEmpty {
    private var value: String
    
    var wrappedValue: String {
        get {
            value
        }
        
        set {
            if (newValue.isEmpty) {
                value = "Unknown"
            } else {
                value = newValue
            }
        }
    }
    
    init(wrappedValue: String) {
        self.value = wrappedValue
    }
    
}


//defining the structure where the wrapper will be used
struct Student {
    @NonEmpty var firstName: String
    @NonEmpty var lastName: String
}

//Testing
/*
 When creating a new Student, if one of the values is an empty string, it does not use the setter of the property wrapper. That is because it uses the init() function, and because the init() function only says to set whatever it's passed to it to the variable, it does just that, even when what is passed is an empty String.
 */
var student = Student(firstName: "", lastName: "Morgan")

print(student.firstName, student.lastName)

//adding a first name to student in order to have a complete name
student.firstName = "Arthur"
print(student.firstName, student.lastName)

//changing the first name to an empty string
/*
 In this case, the property wrapper will kick in, and the setter will be used. Since we are passing an empty string, the wrapper will change it to 'Unknown'
 */
student.firstName = ""
print(student.firstName, student.lastName)

//changing the last name to an empty string

/*
 Same thing here. Because lastName has the same wrapper, and we are assigning it an empty string, the wrapper will change it to 'Unknown'
 */
student.lastName = ""
print(student.firstName, student.lastName)
