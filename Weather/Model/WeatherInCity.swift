//
//  WeatherInCity.swift
//  Weather
//
//  Created by Admin on 29.03.2022.
//

import Foundation

struct Weather: Codable {
    var name: String
    var main: Main
}

struct Main: Codable {
    var temp: Float
    var feels_like: Float
}



