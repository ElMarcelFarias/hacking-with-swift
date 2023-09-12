import UIKit

var greeting = "Hello, playground"


let count = 1...10


for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("the album is \(album)")
}

for _ in 1...5 {
    print("play")
}

let names = ["Marcel", "Otavio", "Danilo"]

for _ in names {
    print("[CENSORED] is a secret agent!")
}


var number = 1

while(number <= 20) {
    print(number)
    number += 1
}

print("Pronto ou não, aqui vou eu!")

var number2 = 1

repeat {
    print(number2)
    number2+=1
} while number2 <= 20


var countDown = 10
            
while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("Estou entediado! Vamos agora!")
        break
    }
    
    countDown -= 1
}


for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) = \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let prod = i * j
        print("\(i) * \(j) is \(prod)")
        
        if prod == 50 {
            print("Saindo do looping externo")
            break outerLoop
        }
    }
}


for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}
