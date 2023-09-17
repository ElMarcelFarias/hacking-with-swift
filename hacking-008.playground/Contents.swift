import UIKit

//Structs

struct Sport {
    var name: String
    var isOlympicSport: Bool

    //propriedade computada
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        }
        return "\(name) is not as Olympic sport"
    }
}


var tennis = Sport(name: "Volei", isOlympicSport: false)
print(tennis.name)
print(tennis.olympicStatus)

//
//O que queremos que aconteça é que o Swift imprima uma mensagem toda vez que amountmudar, e podemos usar um didSetobservador de propriedades para isso. Isso executará algum código sempre que houver amountalterações:

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100






struct Sunglasses {
    var protectionLevel: Int
    var visionTest: String {
        if(protectionLevel < 3) {
            return "These aren't very dark"
        } else if protectionLevel < 6 {
            return "These are just right"
        } else if protectionLevel < 10{
            return "Who turned the lights out?"
        }
        return "..."
    }
}

var sunglass = Sunglasses(protectionLevel: 5)
print(sunglass.visionTest)


struct Person {
    var name: String
    var age: Int
    
    
    //propriedades computadas não podem ser armazenadas em constantes
    var isHigherThan18: Bool {
        if age < 18 {
            return false
        }
        return true
    }
    
}

let marcel = Person(name: "Marcel", age: 20)
if (marcel.isHigherThan18) {
   print("é maior de idade")
} else {
    print("ERROR.")
}

//didSet observador de propriedade.

struct BankAccount {
    var name: String
    var isMilmillionaire = false
    var amount: Int {
        didSet {
            if amount < 1_000_000 {
                isMilmillionaire = false
            } else {
                isMilmillionaire = true
            }
            
        }
    }
}

var nubankMarcel = BankAccount(name: "Marcel Leite de Farias", amount: 1000)
print(nubankMarcel.isMilmillionaire)
nubankMarcel.amount = 1_000_000
print(nubankMarcel.isMilmillionaire)




struct City {
    var population: Int
    
    func collectTexas() -> Int {
        return population * 1000
    }
}


let london = City(population: 1_000_000)
print(london.collectTexas())


//mutanting methods sempre que o método de uma struct tentar alterar alguma propriedade, você deve marcá-la como mutating.

struct Person1 {
    var name: String
    
    mutating func changeToAnonymous() {
        name = "SECRET"
    }
}


var person1 = Person1(name: "marcel")
print(person1.name)
print(person1.changeToAnonymous())
print(person1.name)

let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())


var guys = ["Woody"]
print(guys.count)
guys.append("Marcel")
print(guys.firstIndex(of: "Marcel") as Any)
print(guys.sorted())
guys.remove(at: 0)

var results = [true, true, false, false]
results.remove(at: 2)
for result in results {
    print(result)
}
