//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Caroline Davis on 19/04/2017.
//  Copyright © 2017 Caroline Davis. All rights reserved.
//

import Foundation


let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATTITUDE =  "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let APP_KEY = "2475af3a8d30f7e24471416d594d1681"

// this will tell our function when we are finished downloading
typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=2475af3a8d30f7e24471416d594d1681"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&mode=json&appid=2475af3a8d30f7e24471416d594d1681"


