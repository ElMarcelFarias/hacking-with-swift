import UIKit

var greeting = "Hello, playground"


//closure
//let driving = {
//    print("I'm driving my car")
//}


//driving()

let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving2("Joinville")


let forClosure = { (count: Int) in
    for i in 1...count {
        print("Quantidade de vezes no looping \(i)")
    }
}

forClosure(6)


let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

var placeToGo = drivingWithReturn("Joinville")
print(placeToGo)


//para retornar uma closure sem utilizar parametros

let payment = { () -> Bool in
    print("Paying an anonymous person...")
    return true
}


let driving = {
    print("I'm driving my car")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)

func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation...")
    animations()
}


animate(duration: 3) {
    print("Fade out the image")
}

animate(duration: 3, animations: {
    print("Teste Marcel")
})

func repeatAction(count: Int, action: () -> Void) {
    for _ in 1...count {
        action()
    }
}

repeatAction(count: 5) {
    print("Hello world!")
}


//fechamento de closure final.


