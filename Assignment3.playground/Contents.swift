/*
 Assignment 3
 Pedro Orellana
 09/01/26
 */

import UIKit


/* c2f is the name of the constant holding the closure
   inside the closure, before the -> operator, we have a list of parameters.
   In this case, there is only one, called celsius of type Int. After the -> operator we have the return value.
   In this case, the return value is a Double. After that we have the body of the closure,
   where the actual value is calculated and returned.
 */
let c2f = { (celsius: Int) -> Double in
    return Double(celsius) * 9 / 5 + 32
}

/* f2c is a constant holding the closure. Inside the closure we have a parameter of type Int called fahrenheit.
   This closure return a Double, which is calculated in the line with the return statement
 */
let f2c = { (fahrenheit: Int) -> Double in
    return (Double(fahrenheit) - 32) * 5 / 9
}
/* c2k is holding the value of the closure. This closure takes a parameter of type Int called celsius and returns a Double, which is calculated by the return statement in the following line
 */
let c2k = { (celsius: Int) -> Double in
    return Double(celsius) + 273
}

/* k2c is holding the value of the closure. This closure takes a parameter of type Int called kelvin and returns a Double, which is calculated by the return statement in the following line
 */
let k2c = { (kelvin: Int) -> Double in
    return Double(kelvin) - 273
}

/* k2f is holding the value of the closure. This closure takes a parameter of type Int called kelvin and returns a Double, which is calculated by the return statement in the following line
 */
let k2f = { (kelvin: Int) -> Double in
    return (Double(kelvin) - 273) * 9 / 5 + 32
}

/* f2k is holding the value of the closure. This closure takes a parameter of type Int called fahrenheit and returns a Double, which is calculated by the return statement in the following line
 */
let f2k = { (fahrenheit: Int) -> Double in
    return (Double(fahrenheit) - 32) * 5 / 9 + 273
}


let fahrenheit = c2f(25)
print("25°C is \(fahrenheit)°F")

let celsius = f2c(77)
print("77°F is \(celsius)°C")



/* Higher order function. This function takes 2 parameters: the first one is of type Int and is called temperature,
   the second one is a function type with the signature (Int) -> Double called using. The convertTemperature()
   function has a return type of Double. What this function does is to grab the function passed to it as its
   second parameter and invoke it passing its first parameter as the argument to that function. It's called
   a higher order function because it takes a function as one of its parameters and utilizes it in its body.
 */
func convertTemperature(_ temperature: Int, using: (Int) -> Double) -> Double {
    return using(temperature)
}

let tempInF = convertTemperature(25, using: c2f)  // 25°C to °F
print("25°C = \(tempInF)°F")

let tempInC = convertTemperature(77, using: f2c)  // 77°F to °C
print("77°F = \(tempInC)°C")




//converting Celsius to Kelvin and viceversa
let tempInKFromC = convertTemperature(25, using: c2k) // 25ºC to ºK
print("25°C = \(tempInKFromC)K")

let tempInCFromK = convertTemperature(298, using: k2c)
print("298ºK = \(tempInCFromK)ºC")


//converting fahrenheit to Kelvin and viceversa
let tempInKFromF = convertTemperature(77, using: f2k)
print("77ºF = \(tempInKFromF)")

let tempInFFromK = convertTemperature(298, using: k2f)
print("298ºK = \(tempInFFromK)ºF")





