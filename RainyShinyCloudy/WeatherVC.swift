//
//  WeatherVC.swift
//  RainyShinyCloudy
//
//  Created by Caroline Davis on 18/04/2017.
//  Copyright © 2017 Caroline Davis. All rights reserved.
//

import UIKit
import Alamofire


class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var currentWeatherImage: UIImageView!
    @IBOutlet weak var currentWeatherTypeLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var currentWeather: CurrentWeather!
    var forecast: Forecast!
    var forecasts = [Forecast]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        currentWeather = CurrentWeather()
        
        currentWeather.downloadWeatherDetails {
            self.downloadForecastWeatherData {
            // setup UI to download data
            self.updateMainUI()
            }
        }
   
    }
    // for the forecast of the next 6 days of weather for tableview
    func downloadForecastWeatherData(completed: @escaping DownloadComplete) {
        Alamofire.request(FORECAST_URL).responseJSON { response in
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let list = dict["list"] as? [Dictionary<String, AnyObject>] {
                    for object in list {
                        let forecast = Forecast(weatherDict: object)
                        self.forecasts.append(forecast)
                        
                        print(object)
                    }
                    // so the day that it is doesnt come up in days coming
                    self.forecasts.remove(at: 0)
                    self.tableView.reloadData()
                    
                }
            }
            completed()
        }

    }
    
    
    
    // required delegate for tableview
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // required delegate for tableview
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecasts.count
    }
    
    // required delegate for tableview
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as? WeatherCell {
            
            let forecast = forecasts[indexPath.row]
            cell.configureCell(forecast: forecast)
            return cell
        } else {
            return WeatherCell()
        }
        
    }


    func updateMainUI() {
        dateLabel.text = currentWeather.date
        currentTempLabel.text = String(currentWeather.currentTemp)
        currentWeatherTypeLabel.text = currentWeather.weatherType
        locationLabel.text = currentWeather.cityname
        currentWeatherImage.image = UIImage(named: currentWeather.weatherType)
        
    }
    

}

