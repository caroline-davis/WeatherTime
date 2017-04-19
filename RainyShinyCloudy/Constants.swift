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

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATTITUDE)-36\(LONGITUDE)123\(APP_ID)\(APP_KEY)"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=-36&lon=123&cnt=10&appid=2475af3a8d30f7e24471416d594d1681"
