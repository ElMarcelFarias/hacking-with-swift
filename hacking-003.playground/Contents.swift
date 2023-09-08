import UIKit

var greeting = "Hello, playground"

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let diference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore



let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna"
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["Marcel", "Farias"]
let beatles = firstHalf + secondHalf


var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the"
quote += "Spaniards"


let scoreFirst = 6
let scoreSecond = 4

scoreFirst == secondScore
scoreFirst != secondScore

scoreFirst < secondScore
scoreFirst >= secondScore

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("BlackJack!")
}



if firstCard + secondCard == 21 {
    print("BlackJack!")
} else {
    print("Regular cards")
}

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}


if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

let firstCard = 11
let secondCard = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")


let weather = "sunny"

switch weather {
    case "rain":
        print("Bring an umbrella")
    case "snow":
        print("Wrap up warm")
    case "sunny":
        print("Wear sunscreen")
        fallthrough
    default:
        print("Enjoy your day!")
}

let score = 85

switch score {
    case 0..<50:
        print("You failed badly.")
    case 50..<85:
        print("You did OK.")
    default:
        print("You did great!")
}
