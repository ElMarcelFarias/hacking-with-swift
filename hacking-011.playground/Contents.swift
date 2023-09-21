import UIKit

//protocols POP - Programação Orientada a Protocolos

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
    
    func displayID(thing: Identifiable) {
        print("My ID is \(thing.id)")
    }
}

protocol Purchaseable {
    var name: String { get set }
}

struct Book: Purchaseable {
    var name: String
    var author: String
}

func buy(_ book: Book) {
    print("I'm buying \(book.name)")
}

let book = Book(name: "Turma da monica", author: "Mauricio de souza")
buy(book)

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}

struct Car: Purchaseable {
    var name: String
    var manufacturer: String
}

struct Coffe: Purchaseable {
    var name: String
    var strength: Int
}

//herança de protocolo

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func sutdy()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }


//forma com duplicação de código

protocol ComputerDupl {
    var price: Double { get set }
    var weight: Int { get set }
    var cpu: String { get set }
    var memory: Int { get set }
    var storage: Int { get set }
}

protocol laptopDupl {
    var price: Double { get set }
    var weight: Int { get set }
    var cpu: String { get set }
    var memory: Int { get set }
    var storage: Int { get set }
}

//Forma com herença de protocolo


protocol Product {
    var price: Double { get set }
    var weight: Int { get set }
}

protocol Computer: Product {
    var cpu: String { get set }
    var memory: Int { get set }
    var storage: Int { get set }
}

protocol laptop: Computer {
    var screenSize: Int { get set }
}


//extensions

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}


//extensions with protocols

let pythons = ["Eric","Marcel","Alessandro","Matheus"]

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
    
}

pythons.summarize()

protocol Politician {
    var isDirty: Bool { get set }
    func takeBribe()
}

extension Politician {
    func takeBribe() {
        if isDirty {
            print("Thank you very much")
        } else {
            print("Someone call the police!")
        }
    }
}



protocol Identifiable {
    var id: String { get set }
    func identify()
}

extension Identifiable {
    func identify() {
        print("My ID is \(id)")
    }
}

struct User: Identifiable {
    var id: String
}

let twostraws = User(id: "Marcel")
twostraws.identify
