

import UIKit


let john = "John Lennon"
let paul = "Paul McCartney"
let geoge = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, geoge, ringo]

let colors = Set(["red", "green", "blue"])

var name = (first: "Marcel", last: "Leite de Farias")

let heights = [
    "Marcel Leite de Farias": 1.72,
    "Matheus Leite de Farias": 1.71
]

heights["Marcel Leite de Farias"]

let favoriteIceCream = [
    "Marcel": "Chocolate"
]

favoriteIceCream["Pedro", default: "Unknow"]

var teams = [String: String]()
var results = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var score = Dictionary<String, Int>()
var result = Array<Int>()

enum Result {
    case success
    case failure
}

let resultado = Result.failure

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")



enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 1)
