//
//  MainTableViewCell.swift
//  Weather
//
//  Created by Admin on 02.04.2022.
//

import UIKit


class PerHourTableViewCell: UITableViewCell {

    static let reuseId = "PerHourTableViewCell"
    
    let weatherPerHourView = WeatherPerHourView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    
        setupConstraint()

    }
    
    func setupConstraint() {

        contentView.addSubview(weatherPerHourView)
        
        NSLayoutConstraint.activate([
            weatherPerHourView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            weatherPerHourView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            weatherPerHourView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            weatherPerHourView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
