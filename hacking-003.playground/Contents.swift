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
