import UIKit

var greeting = "Hello, playground"

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    
    print(message)
}


printHelp()


func square(number: Int) -> Int {
    return number * number
}

print(square(number: 4))


func count(to: Int, op: Int) {
    for i in 1...to {
        print("\(op) x \(i) = \(op * i)")
    }
}

count(to: 10, op: 4)


func getUser() -> (first: String, last: String) {
    //[String : String]
    //["first" : "Marcel", "last": "Leite de Farias"]
    (first: "Marcel", last: "Leite de Farias")
}

let user = getUser()
//print(user["first"])
print(user.first)

//Tuplas são candidatas fantasticas para retornar vários valores de funções

//dando dois nomes aos parametros, um para uso externo, outro para uso interno
func sayHello(to name: String) {
    print("Hello, \(name)")
}

sayHello(to: "Marcel")

func setAge(for person: String, to value: Int) {
    print("\(person) is now \(value)")
}

setAge(for: "Marcel", to: 19)


func greet(_ person: String) {
    print("Hello, \(person)")
}

greet("Marrcel")

func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)")
    } else {
        print("Oh no, it's again \(person)")
    }
}

greet2("Marcel")
greet2("Marcel", nicely: false)

func square2(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number*number)")
    }
}

square2(numbers: 10,2,3,4)


enum PasswordError: Error {
    case obvius
}


func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvius
    }
    
    return true
}

var result2: Bool
try result2 = checkPassword("Marcel")

func doubleNumber(number: inout Int) {
    number *= 2
}

var numberDoubled = 10
doubleNumber(number: &numberDoubled)
print(numberDoubled)

