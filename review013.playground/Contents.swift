var name = "Tim McGraw"
name = "Marcel"

let nameLet = "Marcel Leite de Farias"
//nameLet = "Marcel" n podemos mudar valores de constantes.

//Tipos de dados.

var name1: String
var age: Int
age = 25

var latitude: Double
latitude = 36.222

var longitude: Float
longitude = -24.222


var stayOutTooLate: Bool
stayOutTooLate = true

//operadores

var a: Int = 10
a = a + 1
a = a - 1
a = a * 2
a = a / 2

var b: Int = 10
b += 10
b -= 10

var nameConcat1: String = "Marcel"
var nameConcat2: String = "Leite de Farias"
var both = nameConcat1 + " " + nameConcat2

//mod => restante

var mod: Int = 9 % 3
mod = 10 % 3

b > 3
b < 3
b >= 3
b <= 3

nameLet == "Marcel Leite de Farias - false"
!stayOutTooLate

//interpolação de variáveis
var nameInterpolacao: String = "Marcel"
var ageInterpolacao: Int = 20
print("Your name is \(nameInterpolacao), your age is \(ageInterpolacao)")

//matrizes - arrays

var evenNumbers: [Int] = [2,4,6,8]
var songs: [String] = ["Shake it Off", "You Belong with Me", "Back to December"]
songs[2]
var anything: [Any] = ["Marcel", 2, "Loba"]
type(of: songs)
type(of: anything)

var arrayNill: [String] = []
var arrayNill1 = [String]()

anything = anything + evenNumbers + songs


//dictionary

var person: [String: String] = [
                                "first": "Marcel",
                                "middle": "Leite de",
                                "last": "Farias"
                            ]
person["first"]

//condicionais

var person1: String = "Hater"

if person1 == "Hater" {
    print("It's him")
} else if person1 == "fan" {
    print("thx dude!")
} else {
    print("lol")
}

//loops

for i in 1...10 {
    print("2 x \(i) = \(2*i)")
}

for song in songs {
    print("Songs: \(song)")
}

for i in 0..<anything.count {
    print(anything[i])
}


var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0..<people.count {
    var str = "\(people[i]) gonna"

    for _ in 1...5 {
        str += " \(actions[i])"
    }

    print(str)
}

var counter: Int = 0

while true {
    print("Counter is now \(counter)")
    counter+=1
    if counter == 10 {
        break
    }
}

//switch case


let liveAlbums = 2

switch liveAlbums {
    case 0:
        print("You're just starting out")

    case 1:
        print("You just released iTunes Live From SoHo")

    case 2:
        print("You just released Speak Now World Tour")

    default:
        print("Have you done something new?")
}

let studioAlbums = 5
switch studioAlbums {
    case 0...1:
        print("You're just starting out")

    case 2...3:
        print("You're a rising star")

    case 4...5:
        print("You're world famous!")

    default:
        print("Have you done something new?")
}
