//
//  MainTableView.swift
//  Weather
//
//  Created by Admin on 02.04.2022.
//

import UIKit

class MainTableView: UITableView {
    
//MARK: -  init
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        
        delegate = self
        dataSource = self
        
        backgroundColor = .brown
        translatesAutoresizingMaskIntoConstraints = false
        
        register(UINib(nibName: "WeatherInLocationCell", bundle: nil), forCellReuseIdentifier: WeatherInLocationCell.reuseId)
        register(HourWeatherTableViewCell.self, forCellReuseIdentifier: HourWeatherTableViewCell.reuseId)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
//    let cells = [TableViewCellPotocol]()
    
}

//MARK: - UITableViewDataSource

extension MainTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = dequeueReusableCell(withIdentifier: WeatherInLocationCell.reuseId, for: indexPath) as! WeatherInLocationCell
            return cell
        case 1:
            let cell = dequeueReusableCell(withIdentifier: HourWeatherTableViewCell.reuseId, for: indexPath) as! HourWeatherTableViewCell
            return cell
        default:
            break
        }
        
        let cell = dequeueReusableCell(withIdentifier: WeatherInLocationCell.reuseId, for: indexPath) as! WeatherInLocationCell
        return cell
        
    }
}

//MARK: - UITableViewDelegate

extension MainTableView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.row {
        case 0:
            return UITableView.automaticDimension
        case 1:
            return 100
        default:
            break
        }
        return 100
    }
}
