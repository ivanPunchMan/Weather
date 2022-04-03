//
//  WeatherByTheHourModel.swift
//  Weather
//
//  Created by Admin on 01.04.2022.
//

import Foundation
import UIKit

struct WeatherPerHourModel {
    
    var windSpeed: Int16
    var pressure: Int
    var humidity: Int8
    
    var time: String
    var weatherIcon: WeatherIcon
    var temperature: Int8
    
}

enum WeatherIcon {
    case clear
    case cloudy
    case partlyСloudy
    case sunrise
    case sunset
}
