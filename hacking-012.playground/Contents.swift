import UIKit

var age: Int? = nil
age  = 18


var name: String? = nil
name = "Marcel"

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

func getUsername() -> String? {
    "Marcel"
}

if let username = getUsername() {
    print("\(username), hello!")
} else {
    print("No username")
}

let album = "Red"
let albums = ["Reputation", "Red", "1989"]
if let position = albums.firstIndex(of: album) {
    print("Found \(album) at position \(position)")
}


func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    print("Hello \(unwrapped)")
}

func double(_ number: Int?) -> Int? {
    guard let number = number else {
        return nil
    }
    return number * 2
}

let input = 5
if let doubled = double(input) {
    print("\(input) doubled is \(doubled)")
}



func uppercased(string: String?) -> String? {
    guard let unwrappedParam = string else {
        return nil
    }
    return unwrappedParam.uppercased()
}

if let unwrapped = uppercased(string: "ios") {
    print("uppercased: \(unwrapped)")
}

let str = "4"
let num = Int(str)!

func loadSavedMessage() -> String? {
    return nil
}

let savedData = loadSavedMessage() ?? "teste"

let names = ["Marcel", "Joao"]
let namesInArray = names.first?.uppercased() ?? "ERROR"

struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}
