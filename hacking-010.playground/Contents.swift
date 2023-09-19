import UIKit

class Dog {
    var name: String
    var breed: String
    
    func makeNoise() {
        print("Woof!")
    }
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Loba", breed: "Pitbull")
print("Nome: \(poppy.name) Raça: \(poppy.breed)")

//5 diferenças entre classes e structs
//As classes não vêm com inicializadores de membros sintetizados.
//Uma classe pode ser construída (“herdar de”) outra classe, ganhando suas propriedades e métodos.
//Cópias de estruturas são sempre exclusivas, enquanto cópias de classes apontam para os mesmos dados compartilhados.
//As classes possuem desinicializadores, que são métodos chamados quando uma instância da classe é destruída, mas as estruturas não.
//Propriedades variáveis ​​em classes constantes podem ser modificadas livremente, mas propriedades variáveis ​​em estruturas constantes não podem.

class ThemePark {
    var entryPrice: Int
    var rides: [String]
    
    init(rides: [String]) {
        self.rides = rides
        self.entryPrice = rides.count * 2
    }
}

//herenaça

class Poodle: Dog {
    
    override func makeNoise() {
        print("overrided")
    }
    
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}


class Handbag {
    var price: Int
    init(price: Int) {
        self.price = price
    }
}

class DesignerHandbag: Handbag {
    var brand: Int
    
    init(brand: Int, price: Int) {
        self.brand = brand
        super.init(price: price)
    }
}

//overriding methods
let loba = Poodle(name: "Loba")
loba.makeNoise()


//Final: impedir que outros desenvolvedores construam suas próprias classes com base na sua.


final class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

//tipo referencia da class

class Singer {
    var name = "Taylor"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin"
print(singerCopy.name)
print(singer.name)



class Person2 {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person2()
    person.printGreeting()
}

class Singer1 {
    var name = "Pedro"
}

let marcel = Singer1()
marcel.name = "Marcel"
print(marcel.name)


class Pizza {
    private var toppings = [String]()
    func add(topping: String) {
        toppings.append(topping)
    }
    
    func showToppings() {
        for topping in toppings {
            print("toppings: \(topping)")
        }
    }
}
var pizza = Pizza()
pizza.add(topping: "Mushroom")
pizza.add(topping: "Cheese")
pizza.showToppings()




