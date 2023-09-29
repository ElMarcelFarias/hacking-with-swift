import UIKit

var greeting = "Hello, playground"

struct Person {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }

        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor = Person(clothes: "T-shirts")
taylor.clothes = "short skirts"


struct Person1 {
    var age: Int

    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = Person1(age: 25)
print(fan.ageInDogYears)

/*
 Nota: Se você pretende usá-los apenas para leitura de dados você pode simplesmente remover a getparte completamente, assim:
 
 var ageInDogYears: Int {
     return age * 7
 }
 */

struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"

    var name: String
    var age: Int
}

let fan1 = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)


class TaylorFan1 {
    private var name: String?
}

class Album {
    var name: String

    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
    
    init(name: String) {
        self.name = name
    }
}

class StudioAlbum: Album {
    var studio: String

    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
}

class LiveAlbum: Album {
    var location: String
    
    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
}


var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]
//print(allAlbums[1].getPerformance())


for album in allAlbums {
    if let studioAlbum = album as? StudioAlbum {
            print(studioAlbum.studio)
    } else if let liveAlbum = album as? LiveAlbum {
        print(liveAlbum.location)
    }
}


for album in allAlbums as? [LiveAlbum] ?? [LiveAlbum]() {
    print(album.location)
}

let number = 5
let text = String(number)
print(text)

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}
