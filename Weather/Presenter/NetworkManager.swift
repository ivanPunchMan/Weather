//
//  NetworkServise.swift
//  Weather
//
//  Created by Admin on 29.03.2022.
//

import Foundation
import UIKit

protocol NetworkManagerProtocol: AnyObject {
    func getWeather(complition: @escaping (WeatherResult) -> Void )
}

enum NetworkError: Error {
    case parsingFailed
    case selfIsNil
}

enum WeatherResult {
    case succes(weather: Weather)
    case failure(error: Error)
}

class NetworkManager: NetworkManagerProtocol {
    
    let urlConfiguration = URLSessionConfiguration.default
    let session = URLSession.shared
    let jsonDecoder = JSONDecoder()
    
    func getWeather(complition: @escaping (WeatherResult) -> Void ) {
    let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=59&lon=30&appid=14fd7ca29639e457c2e8779c4e5dfc9d"
    
        guard let url = URL(string: urlString) else { return }
        guard UIApplication.shared.canOpenURL(url) else { return }
        
        session.dataTask(with: url) { [weak self] data, response, error in
            
            var result: WeatherResult
            
            defer {
                DispatchQueue.main.async {
                    complition(result)
                }
            }

            guard let self = self else {
                result = .failure(error: NetworkError.selfIsNil)
                return
            }
            
            if error == nil, let parsData = data {

                do {
                    let weather = try self.jsonDecoder.decode(Weather.self, from: parsData)
                    result = .succes(weather: weather)
                } catch {
                    result = .failure(error: NetworkError.parsingFailed)
                }
                
            } else {
                result = .failure(error: error!)
            }
        }.resume()
    }
}
