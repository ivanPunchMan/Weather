//
//  ViewController.swift
//  Weather
//
//  Created by Admin on 29.03.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    var city: String?
    var temp: String?
    var feelsLike: String?

    var presenter: MainPresenterProtocol!
    
    
    lazy var cityLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        label.backgroundColor = .blue
        label.layer.cornerRadius = 15
        label.clipsToBounds = true
        
        return label
    }()
    
    lazy var tempLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 100, y: 200, width: 100, height: 50))
        label.backgroundColor = .green
        label.layer.cornerRadius = 15
        label.clipsToBounds = true

        
        return label
    }()
    
    lazy var feelsLikeLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 100, y: 300, width: 100, height: 50))
        label.backgroundColor = .yellow
        label.layer.cornerRadius = 15
        label.clipsToBounds = true
        
        return label
    }()
    
    lazy var button: UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 400, width: 100, height: 50))
        button.backgroundColor = .brown
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
                
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.setWeather()
        }
    }
    
    func configureTableView() {
        let tableView = MainTableView(frame: view.bounds, style: .grouped)
        view.addSubview(tableView)
        tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
}



extension MainViewController: MainViewControllerProtocol {
    
    
    func setWeather() {

        if presenter.weather != nil {
            city = presenter.weather!.name
            temp = String(presenter.weather!.main.temp)
            feelsLike = String(presenter.weather!.main.feels_like)
            presenter.showWeather()
            
            cityLabel.text = city
            tempLabel.text = temp
            feelsLikeLabel.text = feelsLike
        }
    }
}

