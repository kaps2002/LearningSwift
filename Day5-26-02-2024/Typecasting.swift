import Foundation

// Typecasting

class Album {
    var name: String

    init(name: String) {
        self.name = name
    }

    func getDetails() -> String {
        return "The Album is \(name)"
    }
}

class StudioAlbum: Album {
    var studioName: String

    init(name: String, studioName: String) {
        self.studioName = studioName
        super.init(name: name)
    }

    override func getDetails() -> String {
        return "The Album is at \(studioName) studio"
    }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }

    override func getDetails() -> String {
        return "The Album is at \(location) location"
    }
}

var album1 = StudioAlbum(name: "Arijit Singh", studioName: "T-series")
var album2 = LiveAlbum(name: "Mohit Chauhan", location: "Delhi")
var album3 = StudioAlbum(name: "KK", studioName: "Zee Music Co")

let allAlbum: [Album] = [album1, album2, album3]

// Optional down casting
for album in allAlbum {
    if let studioAlbum = album as? StudioAlbum {
        print(studioAlbum.studioName)
    } else if let liveAlbum = album as? LiveAlbum {
        print(liveAlbum.location)
    }
}

// Force down casting
let someAlbum = [album1, album3]

for album in someAlbum {
    let studioAlbum = album as! StudioAlbum
    print(studioAlbum.studioName)
}