import UIKit

//Passando closures como parâmetros com parâmetros

func travel(action: (String) -> Void) {
    print("I'm getting ready to go")
    action("London")
    print("I'm arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

func login(then action: (String) -> Void) {
    print("Authenticating...")
    let username = "twostraws"
    action(username)
}

login { (username: String) in
    print("Welcome, \(username)!")
}

func makePizza(addToppings: (Int) -> Void) {
    print("The dough is ready!")
    print("The base is flat.")
    addToppings(3)
}

makePizza { (count: Int) in
    let toppings = ["ham","salami","onions","peppers"]
    for i in 0..<count {
        let topping = toppings[i]
        print("I'm adding \(topping)")
    }
}

func fix(item: String, payBill: (Int) -> Void) {
    print("I've fixed your \(item)")
    payBill(450)
}

fix(item: "roof") { (bill: Int) in
    print("You want $\(bill) for that?")
}

func createInterface(positioning: ([String]) -> Void) {
    print("Create some buttons")
    let buttons = ["Button1", "Button2", "Button3"]
    positioning(buttons)
}

createInterface { (buttons: [String]) in
    for button in buttons {
        print("The: \(button)")
    }
}


func getDirections(to location: String, then travel: ([String]) -> Void) {
    let directions = [
        "Go straight ahead",
        "Turn left onto Station Road",
        "Turn right onto High Street",
        "You arrived at \(location)",
    ]
    travel(directions)
}

getDirections(to: "Joinville") { (locations: [String]) in
    for location in locations {
        print(location)
    }
}

//let changeSpeed = { (speed: Int) in
//    print("Changing speed to \(speed)")
//}
//
//func buildCar(name: String, engine: (Int) -> Void) {
//
//}


//closure passada como parâmetro com parâmetro e retorno
func travelReturn(action: (String) -> String) {
    print("I'm getting ready to go")
    let description = action("Joinville")
    print(description)
    print("I arrived!")
}

//travelReturn { local in
//    return "I'm going to \(local) in my car"
//}

//
//travelReturn { (place: String) -> String in
//    return "I'm going to \(place) in my car"
//}


func playSong(_ name: String, notes: () -> String) {
    print("I'm going to play \(name).")
    let playedNotes = notes()
    print(playedNotes)
}

playSong("Mario") {
    return "AEIOC"
}


func manipulate(numbers: [Int], using algorithm: (Int) -> Int) {
    for number in numbers {
        let result = algorithm(number)
        print("Manipulating \(number) produced \(result)")
    }
}

manipulate(numbers: [10,20,30]) { number in
    return number * number
}

func scoreToGrade(score: Int, gradeMapping: (Int) -> String) {
    print("Your score was \(score)")
    let result = gradeMapping(score)
    print("The result is \(result)")
}

scoreToGrade(score: 85, gradeMapping: {(score: Int) -> String in
    if score < 85 {
        return "Fail"
    }
    return "Approved"
})


//Closures mais avançadas

func travel3(action: (String, Int) -> String) {
    print("I'm getting ready to go")
    let description = action("Joinville", 60)
    print(description)
}
travel3 {
    "I'm going to \($0) at \($1) miles per hour"
}
