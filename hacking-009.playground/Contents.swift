import UIKit

//inicializadores

struct User {
    var username: String
}


var person = User(username: "Marcel")

struct UserWithInitial {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = UserWithInitial()
user.username = "Marcel"
print(user.username)

struct Country {
    var name: String
    var usesImperialMeasurements: Bool
    init(countryName: String) {
        name = countryName
        let imperialCountries = ["Liberia", "Myanmar", "USA"]
        if imperialCountries.contains(name) {
            usesImperialMeasurements = true
        } else {
            usesImperialMeasurements = false
        }
    }
}

var city = Country(countryName: "Liberia")
print(city.usesImperialMeasurements)

//Referring to the current instance

struct Person2 {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

var person2 = Person2(name: "Marcel")
print(person2.name)


//Lazy properties

struct  FamilyThree{
    init() {
        print("Creating family three")
    }
}


struct PersonLazy {
    var name: String
    lazy var familyThree = FamilyThree()
    
    init(name: String) {
        self.name = name
    }
}


var marcel = PersonLazy(name: "Marcel")
marcel.familyThree


//metodos e propriedades estáticas
struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

var marcel2 = Student(name: "Marcel")
var marcel3 = Student(name: "Pedro")
print(Student.classSize)


struct NewsStory {
    static var breakingNewsCount = 0
    static var regularNewsCount = 0
    var headline: String
    init(headline: String, isBreaking: Bool) {
        self.headline = headline
        if isBreaking {
            NewsStory.breakingNewsCount += 1
        } else {
            NewsStory.regularNewsCount += 1
        }
    }
}

//Controles de acessos

struct PersonPrivate {
    private var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func viewName() {
        print("Propriedade nome: \(name)")
    }
    
    
}

var personPrivate = PersonPrivate(name: "Marcel")
personPrivate.viewName()



