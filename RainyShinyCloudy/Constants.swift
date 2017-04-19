//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Caroline Davis on 19/04/2017.
//  Copyright © 2017 Caroline Davis. All rights reserved.
//

import Foundation


let baseURL = "http://api.openweathermap.org/data/2.5/weather?"
let lattitude =  "lat="
let longitude = "&lon="
let appID = "&appid="
let apiKey = "2475af3a8d30f7e24471416d594d1681"

let currentWeatherURL = "\(baseURL)\(lattitude)37.81\(longitude)144.9\(appID)\(apiKey)"
