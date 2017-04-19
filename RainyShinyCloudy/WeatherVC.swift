//
//  WeatherVC.swift
//  RainyShinyCloudy
//
//  Created by Caroline Davis on 18/04/2017.
//  Copyright © 2017 Caroline Davis. All rights reserved.
//

import UIKit


class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var currentWeatherImage: UIImageView!
    @IBOutlet weak var currentWeatherTypeLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var currentWeather = CurrentWeather()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        currentWeather.downloadWeatherDetails {
            // setup UI to download data
            self.updateMainUI()
        }
   
    }
    
    // required delegate for tableview
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // required delegate for tableview
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    // required delegate for tableview
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath)
        
        return cell
    }


    func updateMainUI() {
        dateLabel.text = currentWeather.date
        currentTempLabel.text = String(currentWeather.currentTemp)
        currentWeatherTypeLabel.text = currentWeather.weatherType
        locationLabel.text = currentWeather.cityname
        currentWeatherImage.image = UIImage(named: currentWeather.weatherType)
        
    }
    

}

