//
//  MainPresenter.swift
//  Weather
//
//  Created by Admin on 29.03.2022.
//

import Foundation

protocol MainPresenterProtocol: AnyObject {
    init(view: MainViewControllerProtocol, networkManager: NetworkManagerProtocol)
    var weather: Weather? {get set}

    func showWeather()
}

protocol MainViewControllerProtocol: AnyObject {
    func setWeather()
}

class MainPresenter: MainPresenterProtocol {
        
    weak var view: MainViewControllerProtocol!
    let networkManager: NetworkManagerProtocol!
    var weather: Weather?
    
    required init(view: MainViewControllerProtocol, networkManager: NetworkManagerProtocol) {
        self.view = view
        self.networkManager = networkManager
        showWeather()
    }
    
    func showWeather() {
        networkManager.getWeather { [weak self] (result) in
            guard let self = self else { return }
            switch result {
            case .succes(let weather):
                self.weather = weather
            case .failure(let error):
                print("Error: \(error.localizedDescription)")
            }
        }
    }
}
