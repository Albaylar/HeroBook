//
//  HeroModel.swift
//  HeroBook
//
//  Created by Furkan Deniz Albaylar on 12.08.2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct HeroModel : Identifiable {
    var id = UUID()
    var name : String
    var realname : String
    var Imagename : String
    var city : String
    var job : String
    var coordinate : Coordinate
    var Location : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longtitude)
    }
    
}
struct Coordinate {
    var latitude : Double
    var longtitude : Double
}
let Batman  = HeroModel(name: "Batman", realname: "Bruce Wayne", Imagename: "batman", city: "Gotham City", job: "Bussines man", coordinate : Coordinate(latitude: 41.849155, longtitude: -87.63))
let Superman = HeroModel(name: "Superman", realname: "Clark Kent", Imagename: "superman", city: "Kansas City", job: "journalist", coordinate : Coordinate(latitude: 39.03, longtitude: -94.60))
let Spiderman  = HeroModel(name: "Spiderman", realname: "Peter Parker", Imagename: "spiderman", city: "New York", job: "Student", coordinate : Coordinate(latitude: 40.74664, longtitude: -74.01231))
let Ironman  = HeroModel(name: "Ironman", realname: "Tony Stark", Imagename: "ironman", city: "New York", job: "Bussines man", coordinate : Coordinate(latitude: 40.74664, longtitude: -74.01231))
let Thor  = HeroModel(name: "Thor", realname: "Thor-Odinson", Imagename: "thor", city: "New-Asgard(Norveç)", job: "King", coordinate : Coordinate(latitude: 62.44727, longtitude: 7.66013))

let HeroModelList = [Batman, Superman, Spiderman, Ironman, Thor]

