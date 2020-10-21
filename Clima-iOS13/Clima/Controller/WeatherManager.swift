//
//  WeatherManager.swift
//  Clima
//
//  Created by Maxim Kuba on 21.07.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    
    let weatherURL = "http://api.openweathermap.org/data/2.5/weather?units=metric&appid=2d1fc78f40f0fbe86147438c659befff#"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
    
}
