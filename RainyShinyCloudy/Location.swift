//
//  Location.swift
//  RainyShinyCloudy
//
//  Created by Caroline Davis on 21/04/2017.
//  Copyright © 2017 Caroline Davis. All rights reserved.
//


import CoreLocation

class Location {
    
    // the singleton set up
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
    
}
